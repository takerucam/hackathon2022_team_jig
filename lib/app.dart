import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hackathon2022_team_jig/feature_yolo/ui/main_page.dart';

class App extends HookWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
