import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hackathon2022_team_jig/model/blog_controller.dart';
import 'package:hackathon2022_team_jig/widget/blog.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class BlogContainer extends HookConsumerWidget {
  const BlogContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final blogCtrl = ref.watch(blogProvider.notifier);
    final blogList = ref.watch(blogProvider);

    return blogList.when(
      data: (data) => Column(
        children: <Widget>[
          ...data.map(
            (blogData) => Blog(blog: blogData),
          ),
        ],
      ),
      loading: () => const CircularProgressIndicator(),
      error: (error, stackTrace) => const Text('Error'),
    );
  }
}
