import 'package:freezed_annotation/freezed_annotation.dart';

part 'microcms_state.freezed.dart';
part 'microcms_state.g.dart';

@freezed
class MicrocmsSeparationState with _$MicrocmsSeparationState {
  @JsonSerializable(explicitToJson: true)
  factory MicrocmsSeparationState({
    required List<SeparationsState> contents,
    required int totalCount,
    required int offset,
    required int limit,
  }) = _MicrocmsSeparationState;

  factory MicrocmsSeparationState.fromJson(Map<String, dynamic> json) =>
      _$MicrocmsSeparationStateFromJson(json);
}

@freezed
class MicrocmsYoloState with _$MicrocmsYoloState {
  @JsonSerializable(explicitToJson: true)
  factory MicrocmsYoloState({
    required List<YoloState> contents,
    required int totalCount,
    required int offset,
    required int limit,
  }) = _MicrocmsYoloState;

  factory MicrocmsYoloState.fromJson(Map<String, dynamic> json) =>
      _$MicrocmsYoloStateFromJson(json);
}

@freezed
class SeparationsState with _$SeparationsState {
  SeparationsState._();
  @JsonSerializable(explicitToJson: true)
  factory SeparationsState({
    @Default('') String name,
    @Default('') String category,
    @Default('') String candidate,
    ImageResponse? icon,
  }) = _SeparationsState;

  factory SeparationsState.fromJson(Map<String, dynamic> json) =>
      _$SeparationsStateFromJson(json);

  late final List<String> candidates = candidate.split(',');
}

@freezed
class YoloState with _$YoloState {
  YoloState._();
  @JsonSerializable(explicitToJson: true)
  factory YoloState({
    @Default('') String yolo,
    @Default('') String convertCandidate,
  }) = _YoloState;

  factory YoloState.fromJson(Map<String, dynamic> json) =>
      _$YoloStateFromJson(json);

  late final List<String> candidates = convertCandidate.split(',');
}

@freezed
class ImageResponse with _$ImageResponse {
  factory ImageResponse(
      {required String url,
      required int height,
      required int width}) = _ImageResponse;

  factory ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$ImageResponseFromJson(json);
}
