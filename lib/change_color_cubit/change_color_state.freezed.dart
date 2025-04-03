// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'change_color_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$ChangeColorState {
  Color get backgroundColor => throw _privateConstructorUsedError;

  /// Create a copy of ChangeColorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $ChangeColorStateCopyWith<ChangeColorState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ChangeColorStateCopyWith<$Res> {
  factory $ChangeColorStateCopyWith(
    ChangeColorState value,
    $Res Function(ChangeColorState) then,
  ) = _$ChangeColorStateCopyWithImpl<$Res, ChangeColorState>;
  @useResult
  $Res call({Color backgroundColor});
}

/// @nodoc
class _$ChangeColorStateCopyWithImpl<$Res, $Val extends ChangeColorState>
    implements $ChangeColorStateCopyWith<$Res> {
  _$ChangeColorStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of ChangeColorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? backgroundColor = null}) {
    return _then(
      _value.copyWith(
            backgroundColor:
                null == backgroundColor
                    ? _value.backgroundColor
                    : backgroundColor // ignore: cast_nullable_to_non_nullable
                        as Color,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$ChangeColorStateImplCopyWith<$Res>
    implements $ChangeColorStateCopyWith<$Res> {
  factory _$$ChangeColorStateImplCopyWith(
    _$ChangeColorStateImpl value,
    $Res Function(_$ChangeColorStateImpl) then,
  ) = __$$ChangeColorStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({Color backgroundColor});
}

/// @nodoc
class __$$ChangeColorStateImplCopyWithImpl<$Res>
    extends _$ChangeColorStateCopyWithImpl<$Res, _$ChangeColorStateImpl>
    implements _$$ChangeColorStateImplCopyWith<$Res> {
  __$$ChangeColorStateImplCopyWithImpl(
    _$ChangeColorStateImpl _value,
    $Res Function(_$ChangeColorStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of ChangeColorState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? backgroundColor = null}) {
    return _then(
      _$ChangeColorStateImpl(
        backgroundColor:
            null == backgroundColor
                ? _value.backgroundColor
                : backgroundColor // ignore: cast_nullable_to_non_nullable
                    as Color,
      ),
    );
  }
}

/// @nodoc

class _$ChangeColorStateImpl implements _ChangeColorState {
  _$ChangeColorStateImpl({this.backgroundColor = Colors.white});

  @override
  @JsonKey()
  final Color backgroundColor;

  @override
  String toString() {
    return 'ChangeColorState(backgroundColor: $backgroundColor)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ChangeColorStateImpl &&
            (identical(other.backgroundColor, backgroundColor) ||
                other.backgroundColor == backgroundColor));
  }

  @override
  int get hashCode => Object.hash(runtimeType, backgroundColor);

  /// Create a copy of ChangeColorState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ChangeColorStateImplCopyWith<_$ChangeColorStateImpl> get copyWith =>
      __$$ChangeColorStateImplCopyWithImpl<_$ChangeColorStateImpl>(
        this,
        _$identity,
      );
}

abstract class _ChangeColorState implements ChangeColorState {
  factory _ChangeColorState({final Color backgroundColor}) =
      _$ChangeColorStateImpl;

  @override
  Color get backgroundColor;

  /// Create a copy of ChangeColorState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ChangeColorStateImplCopyWith<_$ChangeColorStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
