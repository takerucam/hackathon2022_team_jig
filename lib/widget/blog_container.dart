import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hackathon2022_team_jig/data/blog_result_data.dart';
import 'package:hackathon2022_team_jig/model/blog_controller.dart';
import 'package:hackathon2022_team_jig/repository/microcms_repository.dart';
import 'package:hackathon2022_team_jig/widget/blog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlogContainer extends HookConsumerWidget {
  const BlogContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // final blogCtrl = ref.watch(blogProvider.notifier);
    // final state = ref.watch(
    //   blogProvider.select(
    //     (v) => v.maybeWhen(
    //       data: (data) => data,
    //       orElse: () => null,
    //     ),
    //   ),
    // );

    final blogCtrl = ref.watch(blogResultDataProvider);

    // useEffect(() {
    //   () async {
    //     await blogCtrl.fetch();
    //   }();
    //   return () {};
    // }, const []);

    return blogCtrl.maybeWhen(
      data: (data) => ListView(
        children: <Widget>[
          ...data.map(
            (blogData) => Blog(blog: blogData),
          ),
        ],
      ),
      orElse: () => const Text('空です'),
    );
  }
}
