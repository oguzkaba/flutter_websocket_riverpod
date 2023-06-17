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
  String? get e => throw _privateConstructorUsedError;
  int? get E => throw _privateConstructorUsedError;
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
  $Res call({String? e, int? E, String? s, K? k});

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
    Object? e = freezed,
    Object? E = freezed,
    Object? s = freezed,
    Object? k = freezed,
  }) {
    return _then(_value.copyWith(
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      E: freezed == E
          ? _value.E
          : E // ignore: cast_nullable_to_non_nullable
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
  $Res call({String? e, int? E, String? s, K? k});

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
    Object? e = freezed,
    Object? E = freezed,
    Object? s = freezed,
    Object? k = freezed,
  }) {
    return _then(_$_SocketKLineModel(
      e: freezed == e
          ? _value.e
          : e // ignore: cast_nullable_to_non_nullable
              as String?,
      E: freezed == E
          ? _value.E
          : E // ignore: cast_nullable_to_non_nullable
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
  const _$_SocketKLineModel({this.e, this.E, this.s, this.k});

  factory _$_SocketKLineModel.fromJson(Map<String, dynamic> json) =>
      _$$_SocketKLineModelFromJson(json);

  @override
  final String? e;
  @override
  final int? E;
  @override
  final String? s;
  @override
  final K? k;

  @override
  String toString() {
    return 'SocketKLineModel(e: $e, E: $E, s: $s, k: $k)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SocketKLineModel &&
            (identical(other.e, e) || other.e == e) &&
            (identical(other.E, E) || other.E == E) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.k, k) || other.k == k));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, e, E, s, k);

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
      {final String? e,
      final int? E,
      final String? s,
      final K? k}) = _$_SocketKLineModel;

  factory _SocketKLineModel.fromJson(Map<String, dynamic> json) =
      _$_SocketKLineModel.fromJson;

  @override
  String? get e;
  @override
  int? get E;
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
  int? get t => throw _privateConstructorUsedError;
  int? get T => throw _privateConstructorUsedError;
  String? get s => throw _privateConstructorUsedError;
  String? get i => throw _privateConstructorUsedError;
  int? get f => throw _privateConstructorUsedError;
  int? get L => throw _privateConstructorUsedError;
  String? get o => throw _privateConstructorUsedError;
  String? get c => throw _privateConstructorUsedError;
  String? get h => throw _privateConstructorUsedError;
  String? get l => throw _privateConstructorUsedError;
  String? get v => throw _privateConstructorUsedError;
  bool? get x => throw _privateConstructorUsedError;
  String? get q => throw _privateConstructorUsedError;
  String? get Q => throw _privateConstructorUsedError;
  String? get V => throw _privateConstructorUsedError;
  String? get B => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $KCopyWith<K> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $KCopyWith<$Res> {
  factory $KCopyWith(K value, $Res Function(K) then) = _$KCopyWithImpl<$Res, K>;
  @useResult
  $Res call(
      {int? t,
      int? T,
      String? s,
      String? i,
      int? f,
      int? L,
      String? o,
      String? c,
      String? h,
      String? l,
      String? v,
      bool? x,
      String? q,
      String? Q,
      String? V,
      String? B});
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
    Object? t = freezed,
    Object? T = freezed,
    Object? s = freezed,
    Object? i = freezed,
    Object? f = freezed,
    Object? L = freezed,
    Object? o = freezed,
    Object? c = freezed,
    Object? h = freezed,
    Object? l = freezed,
    Object? v = freezed,
    Object? x = freezed,
    Object? q = freezed,
    Object? Q = freezed,
    Object? V = freezed,
    Object? B = freezed,
  }) {
    return _then(_value.copyWith(
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
      T: freezed == T
          ? _value.T
          : T // ignore: cast_nullable_to_non_nullable
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
      L: freezed == L
          ? _value.L
          : L // ignore: cast_nullable_to_non_nullable
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
      l: freezed == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as bool?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      Q: freezed == Q
          ? _value.Q
          : Q // ignore: cast_nullable_to_non_nullable
              as String?,
      V: freezed == V
          ? _value.V
          : V // ignore: cast_nullable_to_non_nullable
              as String?,
      B: freezed == B
          ? _value.B
          : B // ignore: cast_nullable_to_non_nullable
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
      {int? t,
      int? T,
      String? s,
      String? i,
      int? f,
      int? L,
      String? o,
      String? c,
      String? h,
      String? l,
      String? v,
      bool? x,
      String? q,
      String? Q,
      String? V,
      String? B});
}

/// @nodoc
class __$$_KCopyWithImpl<$Res> extends _$KCopyWithImpl<$Res, _$_K>
    implements _$$_KCopyWith<$Res> {
  __$$_KCopyWithImpl(_$_K _value, $Res Function(_$_K) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? t = freezed,
    Object? T = freezed,
    Object? s = freezed,
    Object? i = freezed,
    Object? f = freezed,
    Object? L = freezed,
    Object? o = freezed,
    Object? c = freezed,
    Object? h = freezed,
    Object? l = freezed,
    Object? v = freezed,
    Object? x = freezed,
    Object? q = freezed,
    Object? Q = freezed,
    Object? V = freezed,
    Object? B = freezed,
  }) {
    return _then(_$_K(
      t: freezed == t
          ? _value.t
          : t // ignore: cast_nullable_to_non_nullable
              as int?,
      T: freezed == T
          ? _value.T
          : T // ignore: cast_nullable_to_non_nullable
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
      L: freezed == L
          ? _value.L
          : L // ignore: cast_nullable_to_non_nullable
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
      l: freezed == l
          ? _value.l
          : l // ignore: cast_nullable_to_non_nullable
              as String?,
      v: freezed == v
          ? _value.v
          : v // ignore: cast_nullable_to_non_nullable
              as String?,
      x: freezed == x
          ? _value.x
          : x // ignore: cast_nullable_to_non_nullable
              as bool?,
      q: freezed == q
          ? _value.q
          : q // ignore: cast_nullable_to_non_nullable
              as String?,
      Q: freezed == Q
          ? _value.Q
          : Q // ignore: cast_nullable_to_non_nullable
              as String?,
      V: freezed == V
          ? _value.V
          : V // ignore: cast_nullable_to_non_nullable
              as String?,
      B: freezed == B
          ? _value.B
          : B // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_K implements _K {
  const _$_K(
      {this.t,
      this.T,
      this.s,
      this.i,
      this.f,
      this.L,
      this.o,
      this.c,
      this.h,
      this.l,
      this.v,
      this.x,
      this.q,
      this.Q,
      this.V,
      this.B});

  factory _$_K.fromJson(Map<String, dynamic> json) => _$$_KFromJson(json);

  @override
  final int? t;
  @override
  final int? T;
  @override
  final String? s;
  @override
  final String? i;
  @override
  final int? f;
  @override
  final int? L;
  @override
  final String? o;
  @override
  final String? c;
  @override
  final String? h;
  @override
  final String? l;
  @override
  final String? v;
  @override
  final bool? x;
  @override
  final String? q;
  @override
  final String? Q;
  @override
  final String? V;
  @override
  final String? B;

  @override
  String toString() {
    return 'K(t: $t, T: $T, s: $s, i: $i, f: $f, L: $L, o: $o, c: $c, h: $h, l: $l, v: $v, x: $x, q: $q, Q: $Q, V: $V, B: $B)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_K &&
            (identical(other.t, t) || other.t == t) &&
            (identical(other.T, T) || other.T == T) &&
            (identical(other.s, s) || other.s == s) &&
            (identical(other.i, i) || other.i == i) &&
            (identical(other.f, f) || other.f == f) &&
            (identical(other.L, L) || other.L == L) &&
            (identical(other.o, o) || other.o == o) &&
            (identical(other.c, c) || other.c == c) &&
            (identical(other.h, h) || other.h == h) &&
            (identical(other.l, l) || other.l == l) &&
            (identical(other.v, v) || other.v == v) &&
            (identical(other.x, x) || other.x == x) &&
            (identical(other.q, q) || other.q == q) &&
            (identical(other.Q, Q) || other.Q == Q) &&
            (identical(other.V, V) || other.V == V) &&
            (identical(other.B, B) || other.B == B));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, t, T, s, i, f, L, o, c, h, l, v, x, q, Q, V, B);

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
      {final int? t,
      final int? T,
      final String? s,
      final String? i,
      final int? f,
      final int? L,
      final String? o,
      final String? c,
      final String? h,
      final String? l,
      final String? v,
      final bool? x,
      final String? q,
      final String? Q,
      final String? V,
      final String? B}) = _$_K;

  factory _K.fromJson(Map<String, dynamic> json) = _$_K.fromJson;

  @override
  int? get t;
  @override
  int? get T;
  @override
  String? get s;
  @override
  String? get i;
  @override
  int? get f;
  @override
  int? get L;
  @override
  String? get o;
  @override
  String? get c;
  @override
  String? get h;
  @override
  String? get l;
  @override
  String? get v;
  @override
  bool? get x;
  @override
  String? get q;
  @override
  String? get Q;
  @override
  String? get V;
  @override
  String? get B;
  @override
  @JsonKey(ignore: true)
  _$$_KCopyWith<_$_K> get copyWith => throw _privateConstructorUsedError;
}
