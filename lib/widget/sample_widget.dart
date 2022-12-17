import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/model/sample_controller.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class SampleWidget extends HookConsumerWidget {
  const SampleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final sampleController = ref.watch(sampleProvider);
    return Container(
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      width: 40,
      height: 40,
      child: const Text('Sample'),
    );
  }
}
