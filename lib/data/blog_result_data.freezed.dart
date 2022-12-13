// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'blog_result_data.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BlogResultDataResponse _$BlogResultDataResponseFromJson(
    Map<String, dynamic> json) {
  return _BlogResultDataResponse.fromJson(json);
}

/// @nodoc
mixin _$BlogResultDataResponse {
  List<BlogResultData> get contents => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogResultDataResponseCopyWith<BlogResultDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogResultDataResponseCopyWith<$Res> {
  factory $BlogResultDataResponseCopyWith(BlogResultDataResponse value,
          $Res Function(BlogResultDataResponse) then) =
      _$BlogResultDataResponseCopyWithImpl<$Res, BlogResultDataResponse>;
  @useResult
  $Res call(
      {List<BlogResultData> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class _$BlogResultDataResponseCopyWithImpl<$Res,
        $Val extends BlogResultDataResponse>
    implements $BlogResultDataResponseCopyWith<$Res> {
  _$BlogResultDataResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? totalCount = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_value.copyWith(
      contents: null == contents
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<BlogResultData>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_BlogResultDataResponseCopyWith<$Res>
    implements $BlogResultDataResponseCopyWith<$Res> {
  factory _$$_BlogResultDataResponseCopyWith(_$_BlogResultDataResponse value,
          $Res Function(_$_BlogResultDataResponse) then) =
      __$$_BlogResultDataResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<BlogResultData> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class __$$_BlogResultDataResponseCopyWithImpl<$Res>
    extends _$BlogResultDataResponseCopyWithImpl<$Res,
        _$_BlogResultDataResponse>
    implements _$$_BlogResultDataResponseCopyWith<$Res> {
  __$$_BlogResultDataResponseCopyWithImpl(_$_BlogResultDataResponse _value,
      $Res Function(_$_BlogResultDataResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? totalCount = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_BlogResultDataResponse(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<BlogResultData>,
      totalCount: null == totalCount
          ? _value.totalCount
          : totalCount // ignore: cast_nullable_to_non_nullable
              as int,
      offset: null == offset
          ? _value.offset
          : offset // ignore: cast_nullable_to_non_nullable
              as int,
      limit: null == limit
          ? _value.limit
          : limit // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BlogResultDataResponse implements _BlogResultDataResponse {
  _$_BlogResultDataResponse(
      {required final List<BlogResultData> contents,
      required this.totalCount,
      required this.offset,
      required this.limit})
      : _contents = contents;

  factory _$_BlogResultDataResponse.fromJson(Map<String, dynamic> json) =>
      _$$_BlogResultDataResponseFromJson(json);

  final List<BlogResultData> _contents;
  @override
  List<BlogResultData> get contents {
    if (_contents is EqualUnmodifiableListView) return _contents;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_contents);
  }

  @override
  final int totalCount;
  @override
  final int offset;
  @override
  final int limit;

  @override
  String toString() {
    return 'BlogResultDataResponse(contents: $contents, totalCount: $totalCount, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogResultDataResponse &&
            const DeepCollectionEquality().equals(other._contents, _contents) &&
            (identical(other.totalCount, totalCount) ||
                other.totalCount == totalCount) &&
            (identical(other.offset, offset) || other.offset == offset) &&
            (identical(other.limit, limit) || other.limit == limit));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(_contents),
      totalCount,
      offset,
      limit);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlogResultDataResponseCopyWith<_$_BlogResultDataResponse> get copyWith =>
      __$$_BlogResultDataResponseCopyWithImpl<_$_BlogResultDataResponse>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogResultDataResponseToJson(
      this,
    );
  }
}

abstract class _BlogResultDataResponse implements BlogResultDataResponse {
  factory _BlogResultDataResponse(
      {required final List<BlogResultData> contents,
      required final int totalCount,
      required final int offset,
      required final int limit}) = _$_BlogResultDataResponse;

  factory _BlogResultDataResponse.fromJson(Map<String, dynamic> json) =
      _$_BlogResultDataResponse.fromJson;

  @override
  List<BlogResultData> get contents;
  @override
  int get totalCount;
  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_BlogResultDataResponseCopyWith<_$_BlogResultDataResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

BlogResultData _$BlogResultDataFromJson(Map<String, dynamic> json) {
  return _BlogResultData.fromJson(json);
}

/// @nodoc
mixin _$BlogResultData {
  String get title => throw _privateConstructorUsedError;
  String get content => throw _privateConstructorUsedError;
  ImageResponse? get eyecatch => throw _privateConstructorUsedError;
  Category? get category => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BlogResultDataCopyWith<BlogResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BlogResultDataCopyWith<$Res> {
  factory $BlogResultDataCopyWith(
          BlogResultData value, $Res Function(BlogResultData) then) =
      _$BlogResultDataCopyWithImpl<$Res, BlogResultData>;
  @useResult
  $Res call(
      {String title,
      String content,
      ImageResponse? eyecatch,
      Category? category});

  $ImageResponseCopyWith<$Res>? get eyecatch;
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class _$BlogResultDataCopyWithImpl<$Res, $Val extends BlogResultData>
    implements $BlogResultDataCopyWith<$Res> {
  _$BlogResultDataCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? eyecatch = freezed,
    Object? category = freezed,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      eyecatch: freezed == eyecatch
          ? _value.eyecatch
          : eyecatch // ignore: cast_nullable_to_non_nullable
              as ImageResponse?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageResponseCopyWith<$Res>? get eyecatch {
    if (_value.eyecatch == null) {
      return null;
    }

    return $ImageResponseCopyWith<$Res>(_value.eyecatch!, (value) {
      return _then(_value.copyWith(eyecatch: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $CategoryCopyWith<$Res>? get category {
    if (_value.category == null) {
      return null;
    }

    return $CategoryCopyWith<$Res>(_value.category!, (value) {
      return _then(_value.copyWith(category: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_BlogResultDataCopyWith<$Res>
    implements $BlogResultDataCopyWith<$Res> {
  factory _$$_BlogResultDataCopyWith(
          _$_BlogResultData value, $Res Function(_$_BlogResultData) then) =
      __$$_BlogResultDataCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String title,
      String content,
      ImageResponse? eyecatch,
      Category? category});

  @override
  $ImageResponseCopyWith<$Res>? get eyecatch;
  @override
  $CategoryCopyWith<$Res>? get category;
}

/// @nodoc
class __$$_BlogResultDataCopyWithImpl<$Res>
    extends _$BlogResultDataCopyWithImpl<$Res, _$_BlogResultData>
    implements _$$_BlogResultDataCopyWith<$Res> {
  __$$_BlogResultDataCopyWithImpl(
      _$_BlogResultData _value, $Res Function(_$_BlogResultData) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? content = null,
    Object? eyecatch = freezed,
    Object? category = freezed,
  }) {
    return _then(_$_BlogResultData(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      content: null == content
          ? _value.content
          : content // ignore: cast_nullable_to_non_nullable
              as String,
      eyecatch: freezed == eyecatch
          ? _value.eyecatch
          : eyecatch // ignore: cast_nullable_to_non_nullable
              as ImageResponse?,
      category: freezed == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as Category?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_BlogResultData implements _BlogResultData {
  _$_BlogResultData(
      {this.title = '', this.content = '', this.eyecatch, this.category});

  factory _$_BlogResultData.fromJson(Map<String, dynamic> json) =>
      _$$_BlogResultDataFromJson(json);

  @override
  @JsonKey()
  final String title;
  @override
  @JsonKey()
  final String content;
  @override
  final ImageResponse? eyecatch;
  @override
  final Category? category;

  @override
  String toString() {
    return 'BlogResultData(title: $title, content: $content, eyecatch: $eyecatch, category: $category)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BlogResultData &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.content, content) || other.content == content) &&
            (identical(other.eyecatch, eyecatch) ||
                other.eyecatch == eyecatch) &&
            (identical(other.category, category) ||
                other.category == category));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, title, content, eyecatch, category);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_BlogResultDataCopyWith<_$_BlogResultData> get copyWith =>
      __$$_BlogResultDataCopyWithImpl<_$_BlogResultData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BlogResultDataToJson(
      this,
    );
  }
}

abstract class _BlogResultData implements BlogResultData {
  factory _BlogResultData(
      {final String title,
      final String content,
      final ImageResponse? eyecatch,
      final Category? category}) = _$_BlogResultData;

  factory _BlogResultData.fromJson(Map<String, dynamic> json) =
      _$_BlogResultData.fromJson;

  @override
  String get title;
  @override
  String get content;
  @override
  ImageResponse? get eyecatch;
  @override
  Category? get category;
  @override
  @JsonKey(ignore: true)
  _$$_BlogResultDataCopyWith<_$_BlogResultData> get copyWith =>
      throw _privateConstructorUsedError;
}

Category _$CategoryFromJson(Map<String, dynamic> json) {
  return _Category.fromJson(json);
}

/// @nodoc
mixin _$Category {
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CategoryCopyWith<Category> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CategoryCopyWith<$Res> {
  factory $CategoryCopyWith(Category value, $Res Function(Category) then) =
      _$CategoryCopyWithImpl<$Res, Category>;
  @useResult
  $Res call({String name});
}

/// @nodoc
class _$CategoryCopyWithImpl<$Res, $Val extends Category>
    implements $CategoryCopyWith<$Res> {
  _$CategoryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_CategoryCopyWith<$Res> implements $CategoryCopyWith<$Res> {
  factory _$$_CategoryCopyWith(
          _$_Category value, $Res Function(_$_Category) then) =
      __$$_CategoryCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name});
}

/// @nodoc
class __$$_CategoryCopyWithImpl<$Res>
    extends _$CategoryCopyWithImpl<$Res, _$_Category>
    implements _$$_CategoryCopyWith<$Res> {
  __$$_CategoryCopyWithImpl(
      _$_Category _value, $Res Function(_$_Category) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
  }) {
    return _then(_$_Category(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_Category implements _Category {
  _$_Category({this.name = ''});

  factory _$_Category.fromJson(Map<String, dynamic> json) =>
      _$$_CategoryFromJson(json);

  @override
  @JsonKey()
  final String name;

  @override
  String toString() {
    return 'Category(name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Category &&
            (identical(other.name, name) || other.name == name));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      __$$_CategoryCopyWithImpl<_$_Category>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CategoryToJson(
      this,
    );
  }
}

abstract class _Category implements Category {
  factory _Category({final String name}) = _$_Category;

  factory _Category.fromJson(Map<String, dynamic> json) = _$_Category.fromJson;

  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$$_CategoryCopyWith<_$_Category> get copyWith =>
      throw _privateConstructorUsedError;
}

ImageResponse _$ImageResponseFromJson(Map<String, dynamic> json) {
  return _ImageResponse.fromJson(json);
}

/// @nodoc
mixin _$ImageResponse {
  String get url => throw _privateConstructorUsedError;
  int get height => throw _privateConstructorUsedError;
  int get width => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ImageResponseCopyWith<ImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ImageResponseCopyWith<$Res> {
  factory $ImageResponseCopyWith(
          ImageResponse value, $Res Function(ImageResponse) then) =
      _$ImageResponseCopyWithImpl<$Res, ImageResponse>;
  @useResult
  $Res call({String url, int height, int width});
}

/// @nodoc
class _$ImageResponseCopyWithImpl<$Res, $Val extends ImageResponse>
    implements $ImageResponseCopyWith<$Res> {
  _$ImageResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_value.copyWith(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ImageResponseCopyWith<$Res>
    implements $ImageResponseCopyWith<$Res> {
  factory _$$_ImageResponseCopyWith(
          _$_ImageResponse value, $Res Function(_$_ImageResponse) then) =
      __$$_ImageResponseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String url, int height, int width});
}

/// @nodoc
class __$$_ImageResponseCopyWithImpl<$Res>
    extends _$ImageResponseCopyWithImpl<$Res, _$_ImageResponse>
    implements _$$_ImageResponseCopyWith<$Res> {
  __$$_ImageResponseCopyWithImpl(
      _$_ImageResponse _value, $Res Function(_$_ImageResponse) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? url = null,
    Object? height = null,
    Object? width = null,
  }) {
    return _then(_$_ImageResponse(
      url: null == url
          ? _value.url
          : url // ignore: cast_nullable_to_non_nullable
              as String,
      height: null == height
          ? _value.height
          : height // ignore: cast_nullable_to_non_nullable
              as int,
      width: null == width
          ? _value.width
          : width // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ImageResponse implements _ImageResponse {
  _$_ImageResponse(
      {required this.url, required this.height, required this.width});

  factory _$_ImageResponse.fromJson(Map<String, dynamic> json) =>
      _$$_ImageResponseFromJson(json);

  @override
  final String url;
  @override
  final int height;
  @override
  final int width;

  @override
  String toString() {
    return 'ImageResponse(url: $url, height: $height, width: $width)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ImageResponse &&
            (identical(other.url, url) || other.url == url) &&
            (identical(other.height, height) || other.height == height) &&
            (identical(other.width, width) || other.width == width));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, url, height, width);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ImageResponseCopyWith<_$_ImageResponse> get copyWith =>
      __$$_ImageResponseCopyWithImpl<_$_ImageResponse>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ImageResponseToJson(
      this,
    );
  }
}

abstract class _ImageResponse implements ImageResponse {
  factory _ImageResponse(
      {required final String url,
      required final int height,
      required final int width}) = _$_ImageResponse;

  factory _ImageResponse.fromJson(Map<String, dynamic> json) =
      _$_ImageResponse.fromJson;

  @override
  String get url;
  @override
  int get height;
  @override
  int get width;
  @override
  @JsonKey(ignore: true)
  _$$_ImageResponseCopyWith<_$_ImageResponse> get copyWith =>
      throw _privateConstructorUsedError;
}
