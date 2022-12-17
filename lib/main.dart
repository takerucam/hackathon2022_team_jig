import 'package:flutter/material.dart';
import 'package:hackathon2022_team_jig/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() {
  runApp(
    const ProviderScope(
      child: App(),
    ),
  );
}
