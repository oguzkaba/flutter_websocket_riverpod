// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'socket_kline_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SocketKLineModel _$SocketKLineModelFromJson(Map<String, dynamic> json) {
  return _SocketKLineModel.fromJson(json);
}

/// @nodoc
mixin _$SocketKLineModel {
  String? get socketKLineModelE => throw _privateConstructorUsedError;
  int? get e => throw _privateConstructorUsedError;
  String? get s => throw _privateConstructorUsedError;
  K? get k => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SocketKLineModelCopyWith<SocketKLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SocketKLineModelCopyWith<$Res> {
  factory $SocketKLineModelCopyWith(
          SocketKLineModel value, $Res Function(SocketKLineModel) then) =
      _$SocketKLineModelCopyWithImpl<$Res, SocketKLineModel>;
  @useResult
  $Res call({String? socketKLineModelE, int? e, String? s, K? k});

  $KCopyWith<$Res>? get k;
}

/// @nodoc
class _$SocketKLineModelCopyWithImpl<$Res, $Val extends SocketKLineModel>
    implements $SocketKLineModelCopyWith<$Res> {
  _$SocketKLineModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketKLineModelE = freezed,
    Object? e = freezed,
    Object? s = freezed,
    Object? k = freezed,
  }) {
    return _then(_value.copyWith(
      socketKLineModelE: freezed == socketKLineModelE
          ? _value.socketKLineModelE
          : socketKLineModelE // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as int?,
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String?,
      k: freezed == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as K?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $KCopyWith<$Res>? get k {
    if (_value.k == null) {
      return null;
    }

    return $KCopyWith<$Res>(_value.k!, (value) {
      return _then(_value.copyWith(k: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_SocketKLineModelCopyWith<$Res>
    implements $SocketKLineModelCopyWith<$Res> {
  factory _$$_SocketKLineModelCopyWith(
          _$_SocketKLineModel value, $Res Function(_$_SocketKLineModel) then) =
      __$$_SocketKLineModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String? socketKLineModelE, int? e, String? s, K? k});

  @override
  $KCopyWith<$Res>? get k;
}

/// @nodoc
class __$$_SocketKLineModelCopyWithImpl<$Res>
    extends _$SocketKLineModelCopyWithImpl<$Res, _$_SocketKLineModel>
    implements _$$_SocketKLineModelCopyWith<$Res> {
  __$$_SocketKLineModelCopyWithImpl(
      _$_SocketKLineModel _value, $Res Function(_$_SocketKLineModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? socketKLineModelE = freezed,
    Object? e = freezed,
    Object? s = freezed,
    Object? k = freezed,
  }) {
    return _then(_$_SocketKLineModel(
      socketKLineModelE: freezed == socketKLineModelE
          ? _value.socketKLineModelE
          : socketKLineModelE // ignore: cast_nullable_to_non_nullable
              as String?,
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as int?,
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String?,
      k: freezed == k
          ? _value.k
          : k // ignore: cast_nullable_to_non_nullable
              as K?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SocketKLineModel implements _SocketKLineModel {
  const _$_SocketKLineModel({this.socketKLineModelE, this.e, this.s, this.k});

  factory _$_SocketKLineModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocketKLineModelFromJson(json);

  @override
  final String? socketKLineModelE;
  @override
  final int? e;
  @override
  final String? s;
  @override
  final K? k;

  @override
  String toString() {
    return 'SocketKLineModel(socketKLineModelE: $socketKLineModelE, e: $e, s: $s, k: $k)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketKLineModel &&
            (identical(other.socketKLineModelE, socketKLineModelE) ||
                other.socketKLineModelE == socketKLineModelE) &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.k, k) || other.k == k));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, socketKLineModelE, e, s, k);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_SocketKLineModelCopyWith<_$_SocketKLineModel> get copyWith =>
      __$$_SocketKLineModelCopyWithImpl<_$_SocketKLineModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SocketKLineModelToJson(
      this,
    );
  }
}

abstract class _SocketKLineModel implements SocketKLineModel {
  const factory _SocketKLineModel(
      {final String? socketKLineModelE,
      final int? e,
      final String? s,
      final K? k}) = _$_SocketKLineModel;

  factory _SocketKLineModel.fromJson(Map<String, dynamic> json) =
      _$_SocketKLineModel.fromJson;

  @override
  String? get socketKLineModelE;
  @override
  int? get e;
  @override
  String? get s;
  @override
  K? get k;
  @override
  @JsonKey(ignore: true)
  _$$_SocketKLineModelCopyWith<_$_SocketKLineModel> get copyWith =>
      throw _privateConstructorUsedError;
}

K _$KFromJson(Map<String, dynamic> json) {
  return _K.fromJson(json);
}

/// @nodoc
mixin _$K {
  int? get kT => throw _privateConstructorUsedError;
  int? get t => throw _privateConstructorUsedError;
  String? get s => throw _privateConstructorUsedError;
  String? get i => throw _privateConstructorUsedError;
  int? get f => throw _privateConstructorUsedError;
  int? get l => throw _privateConstructorUsedError;
  String? get o => throw _privateConstructorUsedError;
  String? get c => throw _privateConstructorUsedError;
  String? get h => throw _privateConstructorUsedError;
  String? get kL => throw _privateConstructorUsedError;
  String? get kV => throw _privateConstructorUsedError;
  int? get n => throw _privateConstructorUsedError;
  bool? get x => throw _privateConstructorUsedError;
  String? get kQ => throw _privateConstructorUsedError;
  String? get v => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;
  String? get b => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KCopyWith<K> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KCopyWith<$Res> {
  factory $KCopyWith(K value, $Res Function(K) then) = _$KCopyWithImpl<$Res, K>;
  @useResult
  $Res call(
      {int? kT,
      int? t,
      String? s,
      String? i,
      int? f,
      int? l,
      String? o,
      String? c,
      String? h,
      String? kL,
      String? kV,
      int? n,
      bool? x,
      String? kQ,
      String? v,
      String? q,
      String? b});
}

/// @nodoc
class _$KCopyWithImpl<$Res, $Val extends K> implements $KCopyWith<$Res> {
  _$KCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kT = freezed,
    Object? t = freezed,
    Object? s = freezed,
    Object? i = freezed,
    Object? f = freezed,
    Object? l = freezed,
    Object? o = freezed,
    Object? c = freezed,
    Object? h = freezed,
    Object? kL = freezed,
    Object? kV = freezed,
    Object? n = freezed,
    Object? x = freezed,
    Object? kQ = freezed,
    Object? v = freezed,
    Object? q = freezed,
    Object? b = freezed,
  }) {
    return _then(_value.copyWith(
      kT: freezed == kT
          ? _value.kT
          : kT // ignore: cast_nullable_to_non_nullable
              as int?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String?,
      i: freezed == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String?,
      f: freezed == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as int?,
      l: freezed == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as int?,
      o: freezed == o
          ? _value.o
          : o // ignore: cast_nullable_to_non_nullable
              as String?,
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String?,
      h: freezed == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as String?,
      kL: freezed == kL
          ? _value.kL
          : kL // ignore: cast_nullable_to_non_nullable
              as String?,
      kV: freezed == kV
          ? _value.kV
          : kV // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as bool?,
      kQ: freezed == kQ
          ? _value.kQ
          : kQ // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_KCopyWith<$Res> implements $KCopyWith<$Res> {
  factory _$$_KCopyWith(_$_K value, $Res Function(_$_K) then) =
      __$$_KCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int? kT,
      int? t,
      String? s,
      String? i,
      int? f,
      int? l,
      String? o,
      String? c,
      String? h,
      String? kL,
      String? kV,
      int? n,
      bool? x,
      String? kQ,
      String? v,
      String? q,
      String? b});
}

/// @nodoc
class __$$_KCopyWithImpl<$Res> extends _$KCopyWithImpl<$Res, _$_K>
    implements _$$_KCopyWith<$Res> {
  __$$_KCopyWithImpl(_$_K _value, $Res Function(_$_K) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? kT = freezed,
    Object? t = freezed,
    Object? s = freezed,
    Object? i = freezed,
    Object? f = freezed,
    Object? l = freezed,
    Object? o = freezed,
    Object? c = freezed,
    Object? h = freezed,
    Object? kL = freezed,
    Object? kV = freezed,
    Object? n = freezed,
    Object? x = freezed,
    Object? kQ = freezed,
    Object? v = freezed,
    Object? q = freezed,
    Object? b = freezed,
  }) {
    return _then(_$_K(
      kT: freezed == kT
          ? _value.kT
          : kT // ignore: cast_nullable_to_non_nullable
              as int?,
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
      s: freezed == s
          ? _value.s
          : s // ignore: cast_nullable_to_non_nullable
              as String?,
      i: freezed == i
          ? _value.i
          : i // ignore: cast_nullable_to_non_nullable
              as String?,
      f: freezed == f
          ? _value.f
          : f // ignore: cast_nullable_to_non_nullable
              as int?,
      l: freezed == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as int?,
      o: freezed == o
          ? _value.o
          : o // ignore: cast_nullable_to_non_nullable
              as String?,
      c: freezed == c
          ? _value.c
          : c // ignore: cast_nullable_to_non_nullable
              as String?,
      h: freezed == h
          ? _value.h
          : h // ignore: cast_nullable_to_non_nullable
              as String?,
      kL: freezed == kL
          ? _value.kL
          : kL // ignore: cast_nullable_to_non_nullable
              as String?,
      kV: freezed == kV
          ? _value.kV
          : kV // ignore: cast_nullable_to_non_nullable
              as String?,
      n: freezed == n
          ? _value.n
          : n // ignore: cast_nullable_to_non_nullable
              as int?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as bool?,
      kQ: freezed == kQ
          ? _value.kQ
          : kQ // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      b: freezed == b
          ? _value.b
          : b // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_K implements _K {
  const _$_K(
      {this.kT,
      this.t,
      this.s,
      this.i,
      this.f,
      this.l,
      this.o,
      this.c,
      this.h,
      this.kL,
      this.kV,
      this.n,
      this.x,
      this.kQ,
      this.v,
      this.q,
      this.b});

  factory _$_K.fromJson(Map<String, dynamic> json) => _$$_KFromJson(json);

  @override
  final int? kT;
  @override
  final int? t;
  @override
  final String? s;
  @override
  final String? i;
  @override
  final int? f;
  @override
  final int? l;
  @override
  final String? o;
  @override
  final String? c;
  @override
  final String? h;
  @override
  final String? kL;
  @override
  final String? kV;
  @override
  final int? n;
  @override
  final bool? x;
  @override
  final String? kQ;
  @override
  final String? v;
  @override
  final String? q;
  @override
  final String? b;

  @override
  String toString() {
    return 'K(kT: $kT, t: $t, s: $s, i: $i, f: $f, l: $l, o: $o, c: $c, h: $h, kL: $kL, kV: $kV, n: $n, x: $x, kQ: $kQ, v: $v, q: $q, b: $b)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_K &&
            (identical(other.kT, kT) || other.kT == kT) &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.i, i) || other.i == i) &&
            (identical(other.f, f) || other.f == f) &&
            (identical(other.l, l) || other.l == l) &&
            (identical(other.o, o) || other.o == o) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.kL, kL) || other.kL == kL) &&
            (identical(other.kV, kV) || other.kV == kV) &&
            (identical(other.n, n) || other.n == n) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.kQ, kQ) || other.kQ == kQ) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.b, b) || other.b == b));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, kT, t, s, i, f, l, o, c, h, kL, kV, n, x, kQ, v, q, b);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_KCopyWith<_$_K> get copyWith =>
      __$$_KCopyWithImpl<_$_K>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_KToJson(
      this,
    );
  }
}

abstract class _K implements K {
  const factory _K(
      {final int? kT,
      final int? t,
      final String? s,
      final String? i,
      final int? f,
      final int? l,
      final String? o,
      final String? c,
      final String? h,
      final String? kL,
      final String? kV,
      final int? n,
      final bool? x,
      final String? kQ,
      final String? v,
      final String? q,
      final String? b}) = _$_K;

  factory _K.fromJson(Map<String, dynamic> json) = _$_K.fromJson;

  @override
  int? get kT;
  @override
  int? get t;
  @override
  String? get s;
  @override
  String? get i;
  @override
  int? get f;
  @override
  int? get l;
  @override
  String? get o;
  @override
  String? get c;
  @override
  String? get h;
  @override
  String? get kL;
  @override
  String? get kV;
  @override
  int? get n;
  @override
  bool? get x;
  @override
  String? get kQ;
  @override
  String? get v;
  @override
  String? get q;
  @override
  String? get b;
  @override
  @JsonKey(ignore: true)
  _$$_KCopyWith<_$_K> get copyWith => throw _privateConstructorUsedError;
}
