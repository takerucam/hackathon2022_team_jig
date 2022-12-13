// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'blog_result_data.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BlogResultDataResponse _$$_BlogResultDataResponseFromJson(
        Map<String, dynamic> json) =>
    _$_BlogResultDataResponse(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => BlogResultData.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$_BlogResultDataResponseToJson(
        _$_BlogResultDataResponse instance) =>
    <String, dynamic>{
      'contents': instance.contents.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
      'offset': instance.offset,
      'limit': instance.limit,
    };

_$_BlogResultData _$$_BlogResultDataFromJson(Map<String, dynamic> json) =>
    _$_BlogResultData(
      title: json['title'] as String? ?? '',
      content: json['content'] as String? ?? '',
      eyecatch: json['eyecatch'] == null
          ? null
          : ImageResponse.fromJson(json['eyecatch'] as Map<String, dynamic>),
      category: json['category'] == null
          ? null
          : Category.fromJson(json['category'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BlogResultDataToJson(_$_BlogResultData instance) =>
    <String, dynamic>{
      'title': instance.title,
      'content': instance.content,
      'eyecatch': instance.eyecatch?.toJson(),
      'category': instance.category?.toJson(),
    };

_$_Category _$$_CategoryFromJson(Map<String, dynamic> json) => _$_Category(
      name: json['name'] as String? ?? '',
    );

Map<String, dynamic> _$$_CategoryToJson(_$_Category instance) =>
    <String, dynamic>{
      'name': instance.name,
    };

_$_ImageResponse _$$_ImageResponseFromJson(Map<String, dynamic> json) =>
    _$_ImageResponse(
      url: json['url'] as String,
      height: json['height'] as int,
      width: json['width'] as int,
    );

Map<String, dynamic> _$$_ImageResponseToJson(_$_ImageResponse instance) =>
    <String, dynamic>{
      'url': instance.url,
      'height': instance.height,
      'width': instance.width,
    };
