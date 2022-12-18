import 'package:freezed_annotation/freezed_annotation.dart';

part 'toast_state.freezed.dart';

@freezed
class ToastState with _$ToastState {
  factory ToastState({
    String? icon,
    String? detailUrl,
    @Default('') String item,
    @Default('') String category,
    @Default('') String separation,
  }) = _ToastState;
}
