// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'randomized_change_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RandomizedState {
  int? get generatedNumber => throw _privateConstructorUsedError;
  int get minimum => throw _privateConstructorUsedError;
  int get maximum => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $RandomizedStateCopyWith<RandomizedState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RandomizedStateCopyWith<$Res> {
  factory $RandomizedStateCopyWith(
          RandomizedState value, $Res Function(RandomizedState) then) =
      _$RandomizedStateCopyWithImpl<$Res, RandomizedState>;
  @useResult
  $Res call({int? generatedNumber, int minimum, int maximum});
}

/// @nodoc
class _$RandomizedStateCopyWithImpl<$Res, $Val extends RandomizedState>
    implements $RandomizedStateCopyWith<$Res> {
  _$RandomizedStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedNumber = freezed,
    Object? minimum = null,
    Object? maximum = null,
  }) {
    return _then(_value.copyWith(
      generatedNumber: freezed == generatedNumber
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int,
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_RandomizedStateCopyWith<$Res>
    implements $RandomizedStateCopyWith<$Res> {
  factory _$$_RandomizedStateCopyWith(
          _$_RandomizedState value, $Res Function(_$_RandomizedState) then) =
      __$$_RandomizedStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int? generatedNumber, int minimum, int maximum});
}

/// @nodoc
class __$$_RandomizedStateCopyWithImpl<$Res>
    extends _$RandomizedStateCopyWithImpl<$Res, _$_RandomizedState>
    implements _$$_RandomizedStateCopyWith<$Res> {
  __$$_RandomizedStateCopyWithImpl(
      _$_RandomizedState _value, $Res Function(_$_RandomizedState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? generatedNumber = freezed,
    Object? minimum = null,
    Object? maximum = null,
  }) {
    return _then(_$_RandomizedState(
      generatedNumber: freezed == generatedNumber
          ? _value.generatedNumber
          : generatedNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      minimum: null == minimum
          ? _value.minimum
          : minimum // ignore: cast_nullable_to_non_nullable
              as int,
      maximum: null == maximum
          ? _value.maximum
          : maximum // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_RandomizedState extends _RandomizedState with DiagnosticableTreeMixin {
  const _$_RandomizedState(
      {this.generatedNumber, this.minimum = 0, this.maximum = 0})
      : super._();

  @override
  final int? generatedNumber;
  @override
  @JsonKey()
  final int minimum;
  @override
  @JsonKey()
  final int maximum;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'RandomizedState(generatedNumber: $generatedNumber, minimum: $minimum, maximum: $maximum)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'RandomizedState'))
      ..add(DiagnosticsProperty('generatedNumber', generatedNumber))
      ..add(DiagnosticsProperty('minimum', minimum))
      ..add(DiagnosticsProperty('maximum', maximum));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_RandomizedState &&
            (identical(other.generatedNumber, generatedNumber) ||
                other.generatedNumber == generatedNumber) &&
            (identical(other.minimum, minimum) || other.minimum == minimum) &&
            (identical(other.maximum, maximum) || other.maximum == maximum));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, generatedNumber, minimum, maximum);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_RandomizedStateCopyWith<_$_RandomizedState> get copyWith =>
      __$$_RandomizedStateCopyWithImpl<_$_RandomizedState>(this, _$identity);
}

abstract class _RandomizedState extends RandomizedState {
  const factory _RandomizedState(
      {final int? generatedNumber,
      final int minimum,
      final int maximum}) = _$_RandomizedState;
  const _RandomizedState._() : super._();

  @override
  int? get generatedNumber;
  @override
  int get minimum;
  @override
  int get maximum;
  @override
  @JsonKey(ignore: true)
  _$$_RandomizedStateCopyWith<_$_RandomizedState> get copyWith =>
      throw _privateConstructorUsedError;
}
