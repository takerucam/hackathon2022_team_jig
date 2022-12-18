import 'dart:io';
import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/entity/recognition.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/model/classifier.dart';
import 'package:hackathon2022_team_jig/feature_yolo/utils/isolate_utils.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

final highestRecognition = Provider<Recognition?>((ref) {
  final recognitions = ref.watch(recognitionsProvider);

  recognitions.sort(((a, b) => -(a.score.compareTo(b.score))));

  return recognitions.firstOrNull;
});

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

  late IsolateUtils isolateUtils;

  bool isPredicting = false;

  MLCamera(
    this._read,
    this.cameraController,
    this.cameraViewSize,
  ) {
    Future(() async {
      isolateUtils = IsolateUtils();
      await isolateUtils.start();

      classifier = Classifier();
      await cameraController.startImageStream(onCameraAvailable);
    });
  }

  /// inference function
  Future<List<Recognition>> inference(IsolateData isolateCamImgData) async {
    ReceivePort responsePort = ReceivePort();
    isolateUtils.sendPort
        .send(isolateCamImgData..responsePort = responsePort.sendPort);
    var results = await responsePort.first;
    return results;
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
      cameraImage,
      classifier.interpreter!.address,
      classifier.labels!,
    );
    _read(recognitionsProvider.notifier).state =
        await inference(isolateCamImgData);
    isPredicting = false;
  }
}
