import 'package:freezed_annotation/freezed_annotation.dart';

part 'sample_state.freezed.dart';
part 'sample_state.g.dart';

@freezed
class SampleState with _$SampleState {
  factory SampleState({
    required int id,
    String? text,
    @Default(false) bool flag,
  }) = _SampleState;

  factory SampleState.fromJson(Map<String, dynamic> json) =>
      _$SampleStateFromJson(json);
}
