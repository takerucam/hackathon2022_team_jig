import 'dart:io';

import 'package:camera/camera.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/entity/recognition.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/model/classifier.dart';
import 'package:hackathon2022_team_jig/feature_yolo//utils/image_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:image/image.dart' as image_lib;
import 'package:tflite_flutter/tflite_flutter.dart';

final mlCameraProvider =
    FutureProvider.autoDispose.family<MLCamera, Size>((ref, size) async {
  final cameras = await availableCameras();
  final cameraController = CameraController(
    cameras[0],
    ResolutionPreset.low,
    enableAudio: false,
  );
  await cameraController.initialize();
  final mlCamera = MLCamera(
    ref.read,
    cameraController,
    size,
  );
  return mlCamera;
});

final recognitionsProvider = StateProvider<List<Recognition>>((ref) => []);

class IsolateData {
  final CameraImage cameraImage;
  final int interpreterAddress;
  IsolateData({
    required this.cameraImage,
    required this.interpreterAddress,
  });
}

class MLCamera {
  final Reader _read;

  final CameraController cameraController;
  final Size cameraViewSize;

  late double ratio = Platform.isAndroid
      ? cameraViewSize.width / cameraController.value.previewSize!.height
      : cameraViewSize.width / cameraController.value.previewSize!.width;

  late Size actualPreviewSize = Size(
    cameraViewSize.width,
    cameraViewSize.width * ratio,
  );

  late Classifier classifier;

  bool isPredicting = false;

  MLCamera(
    this._read,
    this.cameraController,
    this.cameraViewSize,
  ) {
    Future(() async {
      classifier = Classifier();
      await cameraController.startImageStream(onCameraAvailable);
    });
  }

  Future<void> onCameraAvailable(CameraImage cameraImage) async {
    if (classifier.interpreter == null) {
      return;
    }

    if (isPredicting) {
      return;
    }

    isPredicting = true;
    final isolateCamImgData = IsolateData(
      cameraImage: cameraImage,
      interpreterAddress: classifier.interpreter!.address,
    );
    _read(recognitionsProvider.notifier).state =
        await compute(inference, isolateCamImgData);
    isPredicting = false;
  }

  /// inference function
  static Future<List<Recognition>> inference(
      IsolateData isolateCamImgData) async {
    var image = ImageUtils.convertYUV420ToImage(
      isolateCamImgData.cameraImage,
    );
    if (Platform.isAndroid) {
      image = image_lib.copyRotate(image, 90);
    }

    final classifier = Classifier(
      interpreter: Interpreter.fromAddress(
        isolateCamImgData.interpreterAddress,
      ),
    );

    return classifier.predict(image);
  }
}