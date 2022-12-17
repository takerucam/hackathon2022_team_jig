import 'package:freezed_annotation/freezed_annotation.dart';

part 'toast_state.freezed.dart';

@freezed
class ToastState with _$ToastState {
  factory ToastState({
    @Default('') String icon,
    @Default('') String item,
    @Default('') String category,
    @Default('') String separation,
  }) = _ToastState;
}
