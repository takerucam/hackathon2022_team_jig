import 'dart:io';
import 'dart:isolate';

import 'package:camera/camera.dart';
import 'package:hackathon2022_team_jig/feature_yolo/data/model/classifier.dart';
import 'package:hackathon2022_team_jig/feature_yolo/utils/image_utils.dart';
import 'package:image/image.dart' as imageLib;
import 'package:tflite_flutter/tflite_flutter.dart';

/// Bundles data to pass between Isolate
class IsolateData {
  CameraImage cameraImage;
  int interpreterAddress;
  List<String> labels;
  SendPort? responsePort;

  IsolateData(
    this.cameraImage,
    this.interpreterAddress,
    this.labels,
  );
}

/// Manages separate Isolate instance for inference
class IsolateUtils {
  static const String DEBUG_NAME = "InferenceIsolate";

  Isolate? _isolate;
  final ReceivePort _receivePort = ReceivePort();
  SendPort? _sendPort;

  SendPort get sendPort => _sendPort!;

  Future<void> start() async {
    _isolate = await Isolate.spawn<SendPort>(
      entryPoint,
      _receivePort.sendPort,
      debugName: DEBUG_NAME,
    );

    _sendPort = await _receivePort.first;
  }

  static void entryPoint(SendPort sendPort) async {
    final port = ReceivePort();
    sendPort.send(port.sendPort);

    await for (final IsolateData isolateData in port) {
      Classifier classifier = Classifier(
          interpreter: Interpreter.fromAddress(isolateData.interpreterAddress),
          labels: isolateData.labels);
      imageLib.Image image =
          ImageUtils.convertYUV420ToImage(isolateData.cameraImage);
      if (Platform.isAndroid) {
        image = imageLib.copyRotate(image, 90);
      }
      final results = classifier.predict(image);
      isolateData.responsePort!.send(results);
    }
  }
}
