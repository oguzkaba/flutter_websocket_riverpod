// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'socket_kline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocketKLineModel _$$_SocketKLineModelFromJson(Map<String, dynamic> json) =>
    _$_SocketKLineModel(
      socketKLineModelE: json['socketKLineModelE'] as String?,
      e: json['e'] as int?,
      s: json['s'] as String?,
      k: json['k'] == null
          ? null
          : K.fromJson(json['k'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SocketKLineModelToJson(_$_SocketKLineModel instance) =>
    <String, dynamic>{
      'socketKLineModelE': instance.socketKLineModelE,
      'e': instance.e,
      's': instance.s,
      'k': instance.k,
    };

_$_K _$$_KFromJson(Map<String, dynamic> json) => _$_K(
      kT: json['kT'] as int?,
      t: json['t'] as int?,
      s: json['s'] as String?,
      i: json['i'] as String?,
      f: json['f'] as int?,
      l: json['l'] as int?,
      o: json['o'] as String?,
      c: json['c'] as String?,
      h: json['h'] as String?,
      kL: json['kL'] as String?,
      kV: json['kV'] as String?,
      n: json['n'] as int?,
      x: json['x'] as bool?,
      kQ: json['kQ'] as String?,
      v: json['v'] as String?,
      q: json['q'] as String?,
      b: json['b'] as String?,
    );

Map<String, dynamic> _$$_KToJson(_$_K instance) => <String, dynamic>{
      'kT': instance.kT,
      't': instance.t,
      's': instance.s,
      'i': instance.i,
      'f': instance.f,
      'l': instance.l,
      'o': instance.o,
      'c': instance.c,
      'h': instance.h,
      'kL': instance.kL,
      'kV': instance.kV,
      'n': instance.n,
      'x': instance.x,
      'kQ': instance.kQ,
      'v': instance.v,
      'q': instance.q,
      'b': instance.b,
    };
