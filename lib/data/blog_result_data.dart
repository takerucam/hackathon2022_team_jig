import 'package:freezed_annotation/freezed_annotation.dart';

part 'blog_result_data.freezed.dart';
part 'blog_result_data.g.dart';

@freezed
class BlogResultDataResponse with _$BlogResultDataResponse {
  @JsonSerializable(explicitToJson: true)
  factory BlogResultDataResponse({
    required List<BlogResultData> contents,
    required int totalCount,
    required int offset,
    required int limit,
  }) = _BlogResultDataResponse;

  factory BlogResultDataResponse.fromJson(Map<String, dynamic> json) =>
      _$BlogResultDataResponseFromJson(json);
}

@freezed
class BlogResultData with _$BlogResultData {
  @JsonSerializable(explicitToJson: true)
  factory BlogResultData({
    @Default('') String title,
    @Default('') String content,
    ImageResponse? eyecatch,
    Category? category,
  }) = _BlogResultData;

  factory BlogResultData.fromJson(Map<String, dynamic> json) =>
      _$BlogResultDataFromJson(json);
}

@freezed
class Category with _$Category {
  @JsonSerializable(explicitToJson: true)
  factory Category({
    @Default('') String name,
  }) = _Category;

  factory Category.fromJson(Map<String, dynamic> json) =>
      _$CategoryFromJson(json);
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
