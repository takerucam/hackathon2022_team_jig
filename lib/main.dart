import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/model/blog_controller.dart';
import 'package:hackathon2022_team_jig/utils/use_async_effect.dart';
import 'package:hackathon2022_team_jig/widget/blog_container.dart';
import 'package:hackathon2022_team_jig/widget/footer.dart';
import 'package:hackathon2022_team_jig/widget/header.dart';
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
    ref.watch(blogProvider);

    useAsyncEffect(() async {
      await ref.read(blogProvider.notifier).fetch();
      return;
    }, const []);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: const Header(),
        bottomNavigationBar: const Footer(),
        body: Container(
          decoration: const BoxDecoration(
            color: Colors.white,
          ),
          child: Stack(
            children: <Widget>[
              const BlogContainer(),
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 24, 32),
                child: Align(
                  alignment: Alignment.bottomRight,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size(50, 50),
                      shape: const CircleBorder(),
                    ),
                    onPressed: () {},
                    child: const Icon(
                      Icons.add,
                      color: Colors.white,
                      size: 35,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
