import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hackathon2022_team_jig/feature_yolo/data/model/ml_camera.dart';
import 'package:hackathon2022_team_jig/feature_yolo/ui/main_page.dart';
import 'package:hackathon2022_team_jig/model/separation_controller.dart';
import 'package:hackathon2022_team_jig/model/toast_controller.dart';
import 'package:hackathon2022_team_jig/model/yoko_controller.dart';
import 'package:hackathon2022_team_jig/util/use_async_effect.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class App extends HookConsumerWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    ref.watch(separationProvider);
    final yoloState = ref.watch(yoloProvider);
    ref.watch(toastProvider);
    ref
        .watch(recognitionsProvider)
        .sort(((a, b) => -a.score.compareTo(b.score)));
    final a = ref.watch(recognitionsProvider);
    final highLabel = a.isEmpty ? '' : a[0].displayLabel;
    useAsyncEffect(() async {
      await dotenv.load(fileName: '.env');
      await ref.read(separationProvider.notifier).fetch();
      await ref.read(yoloProvider.notifier).fetch();
      return;
    }, const []);

    useAsyncEffect(() async {
      ref.read(toastProvider.notifier).updateToastMessage('bottle');
      return;
    }, [yoloState]);

    useEffect(() {
      if (highLabel.isNotEmpty) {
        ref.read(toastProvider.notifier).updateToastMessage(highLabel);
      }
      return;
    }, [highLabel]);

    return MaterialApp(
      debugShowCheckedModeBanner: true,
      title: 'ごみ分別',
      theme: ThemeData.from(
        colorScheme: const ColorScheme.dark(),
      ),
      navigatorKey: GlobalKey<NavigatorState>(),
      initialRoute: MainPage.routeName,
      routes: {
        MainPage.routeName: (context) => const MainPage(),
      },
    );
  }
}
