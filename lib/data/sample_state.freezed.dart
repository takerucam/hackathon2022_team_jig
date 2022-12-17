// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'sample_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SampleState _$SampleStateFromJson(Map<String, dynamic> json) {
  return _SampleState.fromJson(json);
}

/// @nodoc
mixin _$SampleState {
  int get id => throw _privateConstructorUsedError;
  String? get text => throw _privateConstructorUsedError;
  bool get flag => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SampleStateCopyWith<SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SampleStateCopyWith<$Res> {
  factory $SampleStateCopyWith(
          SampleState value, $Res Function(SampleState) then) =
      _$SampleStateCopyWithImpl<$Res, SampleState>;
  @useResult
  $Res call({int id, String? text, bool flag});
}

/// @nodoc
class _$SampleStateCopyWithImpl<$Res, $Val extends SampleState>
    implements $SampleStateCopyWith<$Res> {
  _$SampleStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = freezed,
    Object? flag = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_SampleStateCopyWith<$Res>
    implements $SampleStateCopyWith<$Res> {
  factory _$$_SampleStateCopyWith(
          _$_SampleState value, $Res Function(_$_SampleState) then) =
      __$$_SampleStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int id, String? text, bool flag});
}

/// @nodoc
class __$$_SampleStateCopyWithImpl<$Res>
    extends _$SampleStateCopyWithImpl<$Res, _$_SampleState>
    implements _$$_SampleStateCopyWith<$Res> {
  __$$_SampleStateCopyWithImpl(
      _$_SampleState _value, $Res Function(_$_SampleState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? text = freezed,
    Object? flag = null,
  }) {
    return _then(_$_SampleState(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      text: freezed == text
          ? _value.text
          : text // ignore: cast_nullable_to_non_nullable
              as String?,
      flag: null == flag
          ? _value.flag
          : flag // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SampleState implements _SampleState {
  _$_SampleState({required this.id, this.text, this.flag = false});

  factory _$_SampleState.fromJson(Map<String, dynamic> json) =>
      _$$_SampleStateFromJson(json);

  @override
  final int id;
  @override
  final String? text;
  @override
  @JsonKey()
  final bool flag;

  @override
  String toString() {
    return 'SampleState(id: $id, text: $text, flag: $flag)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SampleState &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.text, text) || other.text == text) &&
            (identical(other.flag, flag) || other.flag == flag));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, text, flag);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      __$$_SampleStateCopyWithImpl<_$_SampleState>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SampleStateToJson(
      this,
    );
  }
}

abstract class _SampleState implements SampleState {
  factory _SampleState(
      {required final int id,
      final String? text,
      final bool flag}) = _$_SampleState;

  factory _SampleState.fromJson(Map<String, dynamic> json) =
      _$_SampleState.fromJson;

  @override
  int get id;
  @override
  String? get text;
  @override
  bool get flag;
  @override
  @JsonKey(ignore: true)
  _$$_SampleStateCopyWith<_$_SampleState> get copyWith =>
      throw _privateConstructorUsedError;
}
