// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'microcms_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MicrocmsSeparationState _$MicrocmsSeparationStateFromJson(
    Map<String, dynamic> json) {
  return _MicrocmsSeparationState.fromJson(json);
}

/// @nodoc
mixin _$MicrocmsSeparationState {
  List<SeparationsState> get contents => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicrocmsSeparationStateCopyWith<MicrocmsSeparationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicrocmsSeparationStateCopyWith<$Res> {
  factory $MicrocmsSeparationStateCopyWith(MicrocmsSeparationState value,
          $Res Function(MicrocmsSeparationState) then) =
      _$MicrocmsSeparationStateCopyWithImpl<$Res, MicrocmsSeparationState>;
  @useResult
  $Res call(
      {List<SeparationsState> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class _$MicrocmsSeparationStateCopyWithImpl<$Res,
        $Val extends MicrocmsSeparationState>
    implements $MicrocmsSeparationStateCopyWith<$Res> {
  _$MicrocmsSeparationStateCopyWithImpl(this._value, this._then);

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
              as List<SeparationsState>,
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
abstract class _$$_MicrocmsSeparationStateCopyWith<$Res>
    implements $MicrocmsSeparationStateCopyWith<$Res> {
  factory _$$_MicrocmsSeparationStateCopyWith(_$_MicrocmsSeparationState value,
          $Res Function(_$_MicrocmsSeparationState) then) =
      __$$_MicrocmsSeparationStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {List<SeparationsState> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class __$$_MicrocmsSeparationStateCopyWithImpl<$Res>
    extends _$MicrocmsSeparationStateCopyWithImpl<$Res,
        _$_MicrocmsSeparationState>
    implements _$$_MicrocmsSeparationStateCopyWith<$Res> {
  __$$_MicrocmsSeparationStateCopyWithImpl(_$_MicrocmsSeparationState _value,
      $Res Function(_$_MicrocmsSeparationState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? totalCount = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_MicrocmsSeparationState(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<SeparationsState>,
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
class _$_MicrocmsSeparationState implements _MicrocmsSeparationState {
  _$_MicrocmsSeparationState(
      {required final List<SeparationsState> contents,
      required this.totalCount,
      required this.offset,
      required this.limit})
      : _contents = contents;

  factory _$_MicrocmsSeparationState.fromJson(Map<String, dynamic> json) =>
      _$$_MicrocmsSeparationStateFromJson(json);

  final List<SeparationsState> _contents;
  @override
  List<SeparationsState> get contents {
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
    return 'MicrocmsSeparationState(contents: $contents, totalCount: $totalCount, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MicrocmsSeparationState &&
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
  _$$_MicrocmsSeparationStateCopyWith<_$_MicrocmsSeparationState>
      get copyWith =>
          __$$_MicrocmsSeparationStateCopyWithImpl<_$_MicrocmsSeparationState>(
              this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicrocmsSeparationStateToJson(
      this,
    );
  }
}

abstract class _MicrocmsSeparationState implements MicrocmsSeparationState {
  factory _MicrocmsSeparationState(
      {required final List<SeparationsState> contents,
      required final int totalCount,
      required final int offset,
      required final int limit}) = _$_MicrocmsSeparationState;

  factory _MicrocmsSeparationState.fromJson(Map<String, dynamic> json) =
      _$_MicrocmsSeparationState.fromJson;

  @override
  List<SeparationsState> get contents;
  @override
  int get totalCount;
  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_MicrocmsSeparationStateCopyWith<_$_MicrocmsSeparationState>
      get copyWith => throw _privateConstructorUsedError;
}

MicrocmsYoloState _$MicrocmsYoloStateFromJson(Map<String, dynamic> json) {
  return _MicrocmsYoloState.fromJson(json);
}

/// @nodoc
mixin _$MicrocmsYoloState {
  List<YoloState> get contents => throw _privateConstructorUsedError;
  int get totalCount => throw _privateConstructorUsedError;
  int get offset => throw _privateConstructorUsedError;
  int get limit => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MicrocmsYoloStateCopyWith<MicrocmsYoloState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MicrocmsYoloStateCopyWith<$Res> {
  factory $MicrocmsYoloStateCopyWith(
          MicrocmsYoloState value, $Res Function(MicrocmsYoloState) then) =
      _$MicrocmsYoloStateCopyWithImpl<$Res, MicrocmsYoloState>;
  @useResult
  $Res call({List<YoloState> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class _$MicrocmsYoloStateCopyWithImpl<$Res, $Val extends MicrocmsYoloState>
    implements $MicrocmsYoloStateCopyWith<$Res> {
  _$MicrocmsYoloStateCopyWithImpl(this._value, this._then);

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
              as List<YoloState>,
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
abstract class _$$_MicrocmsYoloStateCopyWith<$Res>
    implements $MicrocmsYoloStateCopyWith<$Res> {
  factory _$$_MicrocmsYoloStateCopyWith(_$_MicrocmsYoloState value,
          $Res Function(_$_MicrocmsYoloState) then) =
      __$$_MicrocmsYoloStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<YoloState> contents, int totalCount, int offset, int limit});
}

/// @nodoc
class __$$_MicrocmsYoloStateCopyWithImpl<$Res>
    extends _$MicrocmsYoloStateCopyWithImpl<$Res, _$_MicrocmsYoloState>
    implements _$$_MicrocmsYoloStateCopyWith<$Res> {
  __$$_MicrocmsYoloStateCopyWithImpl(
      _$_MicrocmsYoloState _value, $Res Function(_$_MicrocmsYoloState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? contents = null,
    Object? totalCount = null,
    Object? offset = null,
    Object? limit = null,
  }) {
    return _then(_$_MicrocmsYoloState(
      contents: null == contents
          ? _value._contents
          : contents // ignore: cast_nullable_to_non_nullable
              as List<YoloState>,
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
class _$_MicrocmsYoloState implements _MicrocmsYoloState {
  _$_MicrocmsYoloState(
      {required final List<YoloState> contents,
      required this.totalCount,
      required this.offset,
      required this.limit})
      : _contents = contents;

  factory _$_MicrocmsYoloState.fromJson(Map<String, dynamic> json) =>
      _$$_MicrocmsYoloStateFromJson(json);

  final List<YoloState> _contents;
  @override
  List<YoloState> get contents {
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
    return 'MicrocmsYoloState(contents: $contents, totalCount: $totalCount, offset: $offset, limit: $limit)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MicrocmsYoloState &&
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
  _$$_MicrocmsYoloStateCopyWith<_$_MicrocmsYoloState> get copyWith =>
      __$$_MicrocmsYoloStateCopyWithImpl<_$_MicrocmsYoloState>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MicrocmsYoloStateToJson(
      this,
    );
  }
}

abstract class _MicrocmsYoloState implements MicrocmsYoloState {
  factory _MicrocmsYoloState(
      {required final List<YoloState> contents,
      required final int totalCount,
      required final int offset,
      required final int limit}) = _$_MicrocmsYoloState;

  factory _MicrocmsYoloState.fromJson(Map<String, dynamic> json) =
      _$_MicrocmsYoloState.fromJson;

  @override
  List<YoloState> get contents;
  @override
  int get totalCount;
  @override
  int get offset;
  @override
  int get limit;
  @override
  @JsonKey(ignore: true)
  _$$_MicrocmsYoloStateCopyWith<_$_MicrocmsYoloState> get copyWith =>
      throw _privateConstructorUsedError;
}

SeparationsState _$SeparationsStateFromJson(Map<String, dynamic> json) {
  return _SeparationsState.fromJson(json);
}

/// @nodoc
mixin _$SeparationsState {
  String get name => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get candidate => throw _privateConstructorUsedError;
  ImageResponse? get icon => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SeparationsStateCopyWith<SeparationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SeparationsStateCopyWith<$Res> {
  factory $SeparationsStateCopyWith(
          SeparationsState value, $Res Function(SeparationsState) then) =
      _$SeparationsStateCopyWithImpl<$Res, SeparationsState>;
  @useResult
  $Res call(
      {String name, String category, String candidate, ImageResponse? icon});

  $ImageResponseCopyWith<$Res>? get icon;
}

/// @nodoc
class _$SeparationsStateCopyWithImpl<$Res, $Val extends SeparationsState>
    implements $SeparationsStateCopyWith<$Res> {
  _$SeparationsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? candidate = null,
    Object? icon = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      candidate: null == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ImageResponse?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $ImageResponseCopyWith<$Res>? get icon {
    if (_value.icon == null) {
      return null;
    }

    return $ImageResponseCopyWith<$Res>(_value.icon!, (value) {
      return _then(_value.copyWith(icon: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SeparationsStateCopyWith<$Res>
    implements $SeparationsStateCopyWith<$Res> {
  factory _$$_SeparationsStateCopyWith(
          _$_SeparationsState value, $Res Function(_$_SeparationsState) then) =
      __$$_SeparationsStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String name, String category, String candidate, ImageResponse? icon});

  @override
  $ImageResponseCopyWith<$Res>? get icon;
}

/// @nodoc
class __$$_SeparationsStateCopyWithImpl<$Res>
    extends _$SeparationsStateCopyWithImpl<$Res, _$_SeparationsState>
    implements _$$_SeparationsStateCopyWith<$Res> {
  __$$_SeparationsStateCopyWithImpl(
      _$_SeparationsState _value, $Res Function(_$_SeparationsState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? category = null,
    Object? candidate = null,
    Object? icon = freezed,
  }) {
    return _then(_$_SeparationsState(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      candidate: null == candidate
          ? _value.candidate
          : candidate // ignore: cast_nullable_to_non_nullable
              as String,
      icon: freezed == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as ImageResponse?,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_SeparationsState extends _SeparationsState {
  _$_SeparationsState(
      {this.name = '', this.category = '', this.candidate = '', this.icon})
      : super._();

  factory _$_SeparationsState.fromJson(Map<String, dynamic> json) =>
      _$$_SeparationsStateFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String candidate;
  @override
  final ImageResponse? icon;

  @override
  String toString() {
    return 'SeparationsState(name: $name, category: $category, candidate: $candidate, icon: $icon)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SeparationsState &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.candidate, candidate) ||
                other.candidate == candidate) &&
            (identical(other.icon, icon) || other.icon == icon));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, category, candidate, icon);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SeparationsStateCopyWith<_$_SeparationsState> get copyWith =>
      __$$_SeparationsStateCopyWithImpl<_$_SeparationsState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SeparationsStateToJson(
      this,
    );
  }
}

abstract class _SeparationsState extends SeparationsState {
  factory _SeparationsState(
      {final String name,
      final String category,
      final String candidate,
      final ImageResponse? icon}) = _$_SeparationsState;
  _SeparationsState._() : super._();

  factory _SeparationsState.fromJson(Map<String, dynamic> json) =
      _$_SeparationsState.fromJson;

  @override
  String get name;
  @override
  String get category;
  @override
  String get candidate;
  @override
  ImageResponse? get icon;
  @override
  @JsonKey(ignore: true)
  _$$_SeparationsStateCopyWith<_$_SeparationsState> get copyWith =>
      throw _privateConstructorUsedError;
}

YoloState _$YoloStateFromJson(Map<String, dynamic> json) {
  return _YoloState.fromJson(json);
}

/// @nodoc
mixin _$YoloState {
  String get yolo => throw _privateConstructorUsedError;
  String get convertCandidate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $YoloStateCopyWith<YoloState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $YoloStateCopyWith<$Res> {
  factory $YoloStateCopyWith(YoloState value, $Res Function(YoloState) then) =
      _$YoloStateCopyWithImpl<$Res, YoloState>;
  @useResult
  $Res call({String yolo, String convertCandidate});
}

/// @nodoc
class _$YoloStateCopyWithImpl<$Res, $Val extends YoloState>
    implements $YoloStateCopyWith<$Res> {
  _$YoloStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yolo = null,
    Object? convertCandidate = null,
  }) {
    return _then(_value.copyWith(
      yolo: null == yolo
          ? _value.yolo
          : yolo // ignore: cast_nullable_to_non_nullable
              as String,
      convertCandidate: null == convertCandidate
          ? _value.convertCandidate
          : convertCandidate // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_YoloStateCopyWith<$Res> implements $YoloStateCopyWith<$Res> {
  factory _$$_YoloStateCopyWith(
          _$_YoloState value, $Res Function(_$_YoloState) then) =
      __$$_YoloStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String yolo, String convertCandidate});
}

/// @nodoc
class __$$_YoloStateCopyWithImpl<$Res>
    extends _$YoloStateCopyWithImpl<$Res, _$_YoloState>
    implements _$$_YoloStateCopyWith<$Res> {
  __$$_YoloStateCopyWithImpl(
      _$_YoloState _value, $Res Function(_$_YoloState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? yolo = null,
    Object? convertCandidate = null,
  }) {
    return _then(_$_YoloState(
      yolo: null == yolo
          ? _value.yolo
          : yolo // ignore: cast_nullable_to_non_nullable
              as String,
      convertCandidate: null == convertCandidate
          ? _value.convertCandidate
          : convertCandidate // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

@JsonSerializable(explicitToJson: true)
class _$_YoloState extends _YoloState {
  _$_YoloState({this.yolo = '', this.convertCandidate = ''}) : super._();

  factory _$_YoloState.fromJson(Map<String, dynamic> json) =>
      _$$_YoloStateFromJson(json);

  @override
  @JsonKey()
  final String yolo;
  @override
  @JsonKey()
  final String convertCandidate;

  @override
  String toString() {
    return 'YoloState(yolo: $yolo, convertCandidate: $convertCandidate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_YoloState &&
            (identical(other.yolo, yolo) || other.yolo == yolo) &&
            (identical(other.convertCandidate, convertCandidate) ||
                other.convertCandidate == convertCandidate));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, yolo, convertCandidate);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_YoloStateCopyWith<_$_YoloState> get copyWith =>
      __$$_YoloStateCopyWithImpl<_$_YoloState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_YoloStateToJson(
      this,
    );
  }
}

abstract class _YoloState extends YoloState {
  factory _YoloState({final String yolo, final String convertCandidate}) =
      _$_YoloState;
  _YoloState._() : super._();

  factory _YoloState.fromJson(Map<String, dynamic> json) =
      _$_YoloState.fromJson;

  @override
  String get yolo;
  @override
  String get convertCandidate;
  @override
  @JsonKey(ignore: true)
  _$$_YoloStateCopyWith<_$_YoloState> get copyWith =>
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
