import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:hackathon2022_team_jig/model/separation_controller.dart';
import 'package:hackathon2022_team_jig/model/toast_controller.dart';
import 'package:hackathon2022_team_jig/model/yoko_controller.dart';
import 'package:hackathon2022_team_jig/utils/use_async_effect.dart';
import 'package:hackathon2022_team_jig/widget/toast.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: MyApp(),
    ),
  );
}

class MyApp extends HookConsumerWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(separationProvider);
    ref.watch(yoloProvider);

    useAsyncEffect(() async {
      await dotenv.load(fileName: '.env');
      await ref.read(separationProvider.notifier).fetch();
      await ref.read(yoloProvider.notifier).fetch();
      ref.read(toastProvider.notifier).updateToastMessage('person');
    }, const []);

    return MaterialApp(
      home: Scaffold(
        body: Stack(
          children: <Widget>[
            Align(
              alignment: Alignment.bottomCenter,
              child: Toast(),
            ),
          ],
        ),
      ),
    );
  }
}
