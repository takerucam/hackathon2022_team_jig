import 'package:cached_network_image/cached_network_image.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/data/toast_state.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/entity/recognition.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/model/ml_camera.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BoundingBox extends StatelessWidget {
  final Recognition result;
  final Size actualPreviewSize;
  final double ratio;

  const BoundingBox({
    Key? key,
    required this.result,
    required this.actualPreviewSize,
    required this.ratio,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final renderLocation = result.getRenderLocation(
      actualPreviewSize,
      ratio,
    );

    return Positioned(
      left: renderLocation.left,
      top: renderLocation.top,
      child: Container(
        width: renderLocation.width,
        height: renderLocation.height,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.cyan,
            width: 1,
          ),
          borderRadius: const BorderRadius.all(
            Radius.circular(2),
          ),
        ),
      ),
    );
  }
}

class CameraView extends StatelessWidget {
  final CameraController cameraController;
  const CameraView({
    Key? key,
    required this.cameraController,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      /// from camera 0.7.0, change aspect ratio
      /// https://pub.dev/packages/camera/changelog#070
      aspectRatio: 1 / cameraController.value.aspectRatio,
      child: CameraPreview(cameraController),
    );
  }
}

class MainPage extends HookConsumerWidget {
  static String routeName = '/main';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final mlCamera = ref.watch(mlCameraProvider(size));
    final recognitions = ref.watch(recognitionsProvider);
    return Scaffold(
      appBar: AppBar(
        title: const Text('ゴミ分別'),
      ),
      body: mlCamera.when(
        data: (mlCamera) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: mlCamera.actualPreviewSize.width,
              height: mlCamera.actualPreviewSize.height,
              child: Stack(
                children: [
                  CameraView(cameraController: mlCamera.cameraController),
                  buildBoxes(
                    recognitions,
                    mlCamera.actualPreviewSize,
                    mlCamera.ratio,
                  ),
                ],
              ),
            ),
            const Flexible(
              child: _ToastCategories(),
            )
          ],
        ),
        loading: () => const Center(
          child: CircularProgressIndicator(),
        ),
        error: (err, stack) => Center(
          child: Text(
            err.toString(),
          ),
        ),
      ),
    );
  }

  Widget buildBoxes(
    List<Recognition> recognitions,
    Size actualPreviewSize,
    double ratio,
  ) {
    if (recognitions.isEmpty) {
      return const SizedBox();
    }
    return Stack(
      clipBehavior: Clip.none,
      children: recognitions.map((result) {
        return BoundingBox(
          result: result,
          actualPreviewSize: actualPreviewSize,
          ratio: ratio,
        );
      }).toList(),
    );
  }
}

class _Badge extends StatelessWidget {
  final ToastState data;

  const _Badge({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(4),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.cyan,
          width: 2,
        ),
        borderRadius: BorderRadius.circular(8),
      ),
      child: Text(
        data.separation,
        style: const TextStyle(
          fontSize: 24,
          height: 1.2,
        ),
      ),
    );
  }
}

class _Toast extends StatelessWidget {
  final ToastState data;

  const _Toast(
    this.data, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 32,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CachedNetworkImage(
            imageUrl: data.icon,
            width: 64,
            height: 64,
          ),
          Text(
            data.item,
            style: const TextStyle(
              fontSize: 32,
              height: 1.2,
            ),
          ),
          const SizedBox(width: 8),
          _Badge(data: data),
        ],
      ),
    );
  }
}

class _ToastCategories extends HookConsumerWidget {
  const _ToastCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final list = ref.watch(toastProvider);
    final list = [
      ToastState(
        icon:
            "https://images.microcms-assets.io/assets/42f2dca8f920452c91f3af77ab894c44/15c048386e9e494ea7573c69e75f9a7b/icon1.png",
        item: "衣類",
        category: "資源物",
        separation: "繊維類",
      ),
      ToastState(
        icon:
            "https://images.microcms-assets.io/assets/42f2dca8f920452c91f3af77ab894c44/15c048386e9e494ea7573c69e75f9a7b/icon1.png",
        item: "衣類",
        category: "資源物",
        separation: "繊維類",
      ),
      ToastState(
        icon:
            "https://images.microcms-assets.io/assets/42f2dca8f920452c91f3af77ab894c44/15c048386e9e494ea7573c69e75f9a7b/icon1.png",
        item: "衣類",
        category: "資源物",
        separation: "繊維類",
      ),
      ToastState(
        icon:
            "https://images.microcms-assets.io/assets/42f2dca8f920452c91f3af77ab894c44/15c048386e9e494ea7573c69e75f9a7b/icon1.png",
        item: "衣類",
        category: "資源物",
        separation: "繊維類",
      ),
      ToastState(
        icon:
            "https://images.microcms-assets.io/assets/42f2dca8f920452c91f3af77ab894c44/15c048386e9e494ea7573c69e75f9a7b/icon1.png",
        item: "衣類",
        category: "資源物",
        separation: "繊維類",
      ),
    ];

    return ListView(
      children: [
        ...list.map((toast) => _Toast(toast)),
      ],
    );
  }
}
