import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/data/blog_result_data.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class Blog extends HookConsumerWidget {
  final BlogResultData blog;
  const Blog({Key? key, required this.blog}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(
            color: Color.fromARGB(255, 232, 232, 232),
            width: 1,
          ),
        ),
        color: Colors.white,
      ),
      child: Column(
        children: <Widget>[
          Text(
            blog.title,
            style: const TextStyle(
              fontSize: 12,
              color: Colors.black,
            ),
          ),
        ],
      ),
    );
  }
}
