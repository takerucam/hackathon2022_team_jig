import 'dart:async';

import 'package:flutter_hooks/flutter_hooks.dart';

void useAsyncEffect(
  FutureOr<Dispose?> Function() effect, [
  List<Object>? keys,
]) {
  useEffect(() {
    final onDispose = Future.microtask(effect);
    return () async {
      (await onDispose)?.call();
    };
  }, keys);
}
