// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'kline_parameter_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$KLineParameterModel {
  String get symbol => throw _privateConstructorUsedError;
  String get interval => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $KLineParameterModelCopyWith<KLineParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KLineParameterModelCopyWith<$Res> {
  factory $KLineParameterModelCopyWith(
          KLineParameterModel value, $Res Function(KLineParameterModel) then) =
      _$KLineParameterModelCopyWithImpl<$Res, KLineParameterModel>;
  @useResult
  $Res call({String symbol, String interval});
}

/// @nodoc
class _$KLineParameterModelCopyWithImpl<$Res, $Val extends KLineParameterModel>
    implements $KLineParameterModelCopyWith<$Res> {
  _$KLineParameterModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? interval = null,
  }) {
    return _then(_value.copyWith(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KLineParameterModelCopyWith<$Res>
    implements $KLineParameterModelCopyWith<$Res> {
  factory _$$_KLineParameterModelCopyWith(_$_KLineParameterModel value,
          $Res Function(_$_KLineParameterModel) then) =
      __$$_KLineParameterModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String symbol, String interval});
}

/// @nodoc
class __$$_KLineParameterModelCopyWithImpl<$Res>
    extends _$KLineParameterModelCopyWithImpl<$Res, _$_KLineParameterModel>
    implements _$$_KLineParameterModelCopyWith<$Res> {
  __$$_KLineParameterModelCopyWithImpl(_$_KLineParameterModel _value,
      $Res Function(_$_KLineParameterModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? symbol = null,
    Object? interval = null,
  }) {
    return _then(_$_KLineParameterModel(
      symbol: null == symbol
          ? _value.symbol
          : symbol // ignore: cast_nullable_to_non_nullable
              as String,
      interval: null == interval
          ? _value.interval
          : interval // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_KLineParameterModel implements _KLineParameterModel {
  _$_KLineParameterModel({required this.symbol, required this.interval});

  @override
  final String symbol;
  @override
  final String interval;

  @override
  String toString() {
    return 'KLineParameterModel(symbol: $symbol, interval: $interval)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_KLineParameterModel &&
            (identical(other.symbol, symbol) || other.symbol == symbol) &&
            (identical(other.interval, interval) ||
                other.interval == interval));
  }

  @override
  int get hashCode => Object.hash(runtimeType, symbol, interval);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KLineParameterModelCopyWith<_$_KLineParameterModel> get copyWith =>
      __$$_KLineParameterModelCopyWithImpl<_$_KLineParameterModel>(
          this, _$identity);
}

abstract class _KLineParameterModel implements KLineParameterModel {
  factory _KLineParameterModel(
      {required final String symbol,
      required final String interval}) = _$_KLineParameterModel;

  @override
  String get symbol;
  @override
  String get interval;
  @override
  @JsonKey(ignore: true)
  _$$_KLineParameterModelCopyWith<_$_KLineParameterModel> get copyWith =>
      throw _privateConstructorUsedError;
}
