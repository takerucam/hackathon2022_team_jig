import 'package:cached_network_image/cached_network_image.dart';
import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/data/toast_state.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/entity/recognition.dart';
import 'package:hackathon2022_team_jig/feature_yolo//data/model/ml_camera.dart';
import 'package:hackathon2022_team_jig/model/toast_controller.dart';
import 'package:hackathon2022_team_jig/util/use_async_effect.dart';
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

class CameraView extends HookConsumerWidget {
  final MLCamera camera;
  const CameraView({
    Key? key,
    required this.camera,
  }) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recognitions = ref.watch(recognitionsProvider);

    recognitions.sort(((a, b) => -(a.score.compareTo(b.score))));

    final highLabel = recognitions.isEmpty ? '' : recognitions[0].displayLabel;
    useAsyncEffect(() {
      if (highLabel.isNotEmpty) {
        ref.read(toastProvider.notifier).resetToastState();
        ref.read(toastProvider.notifier).updateToastMessage(highLabel);
      }
      return;
    }, [highLabel]);

    return AspectRatio(
      /// from camera 0.7.0, change aspect ratio
      /// https://pub.dev/packages/camera/changelog#070
      aspectRatio: 1 / camera.cameraController.value.aspectRatio,
      child: CameraPreview(
        camera.cameraController,
        child: buildBoxes(
          recognitions,
          camera.actualPreviewSize,
          camera.ratio,
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

class MainPage extends HookConsumerWidget {
  static String routeName = '/main';
  const MainPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final size = MediaQuery.of(context).size;
    final mlCamera = ref.watch(mlCameraProvider(size));

    return Scaffold(
      appBar: AppBar(
        title: const Text('ゴミ分別'),
      ),
      body: mlCamera.when(
        data: (mlCamera) => Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CameraView(camera: mlCamera),
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
        maxLines: 2,
        style: TextStyle(
          fontSize: (data.separation.length > 7) ? 16 : 24,
          height: 1.2,
          color: Colors.black,
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
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
        vertical: 8,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CachedNetworkImage(
                imageUrl: data.icon!,
                width: 64,
                height: 64,
              ),
              const SizedBox(width: 8),
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 150),
                child: Text(
                  data.item,
                  maxLines: 2,
                  style: const TextStyle(
                    fontSize: 16,
                    height: 1.2,
                    color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(width: 8),
          Flexible(child: _Badge(data: data)),
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
    final list = ref.watch(toastProvider);

    return ListView.separated(
      separatorBuilder: (context, index) =>
          const Divider(height: 2, color: Colors.grey),
      itemBuilder: (context, index) => _Toast(list[index]),
      itemCount: list.length,
    );
  }
}
