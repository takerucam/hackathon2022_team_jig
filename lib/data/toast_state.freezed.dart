// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'toast_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$ToastState {
  String get icon => throw _privateConstructorUsedError;
  String get item => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get separation => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ToastStateCopyWith<ToastState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ToastStateCopyWith<$Res> {
  factory $ToastStateCopyWith(
          ToastState value, $Res Function(ToastState) then) =
      _$ToastStateCopyWithImpl<$Res, ToastState>;
  @useResult
  $Res call({String icon, String item, String category, String separation});
}

/// @nodoc
class _$ToastStateCopyWithImpl<$Res, $Val extends ToastState>
    implements $ToastStateCopyWith<$Res> {
  _$ToastStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? item = null,
    Object? category = null,
    Object? separation = null,
  }) {
    return _then(_value.copyWith(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      separation: null == separation
          ? _value.separation
          : separation // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_ToastStateCopyWith<$Res>
    implements $ToastStateCopyWith<$Res> {
  factory _$$_ToastStateCopyWith(
          _$_ToastState value, $Res Function(_$_ToastState) then) =
      __$$_ToastStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String icon, String item, String category, String separation});
}

/// @nodoc
class __$$_ToastStateCopyWithImpl<$Res>
    extends _$ToastStateCopyWithImpl<$Res, _$_ToastState>
    implements _$$_ToastStateCopyWith<$Res> {
  __$$_ToastStateCopyWithImpl(
      _$_ToastState _value, $Res Function(_$_ToastState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? icon = null,
    Object? item = null,
    Object? category = null,
    Object? separation = null,
  }) {
    return _then(_$_ToastState(
      icon: null == icon
          ? _value.icon
          : icon // ignore: cast_nullable_to_non_nullable
              as String,
      item: null == item
          ? _value.item
          : item // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      separation: null == separation
          ? _value.separation
          : separation // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ToastState implements _ToastState {
  _$_ToastState(
      {this.icon = '',
      this.item = '',
      this.category = '',
      this.separation = ''});

  @override
  @JsonKey()
  final String icon;
  @override
  @JsonKey()
  final String item;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String separation;

  @override
  String toString() {
    return 'ToastState(icon: $icon, item: $item, category: $category, separation: $separation)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ToastState &&
            (identical(other.icon, icon) || other.icon == icon) &&
            (identical(other.item, item) || other.item == item) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.separation, separation) ||
                other.separation == separation));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, icon, item, category, separation);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_ToastStateCopyWith<_$_ToastState> get copyWith =>
      __$$_ToastStateCopyWithImpl<_$_ToastState>(this, _$identity);
}

abstract class _ToastState implements ToastState {
  factory _ToastState(
      {final String icon,
      final String item,
      final String category,
      final String separation}) = _$_ToastState;

  @override
  String get icon;
  @override
  String get item;
  @override
  String get category;
  @override
  String get separation;
  @override
  @JsonKey(ignore: true)
  _$$_ToastStateCopyWith<_$_ToastState> get copyWith =>
      throw _privateConstructorUsedError;
}
