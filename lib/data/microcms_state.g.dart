// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'microcms_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MicrocmsSeparationState _$$_MicrocmsSeparationStateFromJson(
        Map<String, dynamic> json) =>
    _$_MicrocmsSeparationState(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => SeparationsState.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$_MicrocmsSeparationStateToJson(
        _$_MicrocmsSeparationState instance) =>
    <String, dynamic>{
      'contents': instance.contents.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
      'offset': instance.offset,
      'limit': instance.limit,
    };

_$_MicrocmsYoloState _$$_MicrocmsYoloStateFromJson(Map<String, dynamic> json) =>
    _$_MicrocmsYoloState(
      contents: (json['contents'] as List<dynamic>)
          .map((e) => YoloState.fromJson(e as Map<String, dynamic>))
          .toList(),
      totalCount: json['totalCount'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$$_MicrocmsYoloStateToJson(
        _$_MicrocmsYoloState instance) =>
    <String, dynamic>{
      'contents': instance.contents.map((e) => e.toJson()).toList(),
      'totalCount': instance.totalCount,
      'offset': instance.offset,
      'limit': instance.limit,
    };

_$_SeparationsState _$$_SeparationsStateFromJson(Map<String, dynamic> json) =>
    _$_SeparationsState(
      name: json['name'] as String? ?? '',
      category: json['category'] as String? ?? '',
      candidate: json['candidate'] as String? ?? '',
      icon: json['icon'] == null
          ? null
          : ImageResponse.fromJson(json['icon'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SeparationsStateToJson(_$_SeparationsState instance) =>
    <String, dynamic>{
      'name': instance.name,
      'category': instance.category,
      'candidate': instance.candidate,
      'icon': instance.icon?.toJson(),
    };

_$_YoloState _$$_YoloStateFromJson(Map<String, dynamic> json) => _$_YoloState(
      yolo: json['yolo'] as String? ?? '',
      convertCandidate: json['convertCandidate'] as String? ?? '',
    );

Map<String, dynamic> _$$_YoloStateToJson(_$_YoloState instance) =>
    <String, dynamic>{
      'yolo': instance.yolo,
      'convertCandidate': instance.convertCandidate,
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
