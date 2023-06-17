// GENERATED CODE - DO NOT MODIFY BY HAND

// ignore_for_file: non_constant_identifier_names

part of 'socket_kline_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SocketKLineModel _$$_SocketKLineModelFromJson(Map<String, dynamic> json) =>
    _$_SocketKLineModel(
      e: json['e'] as String?,
      E: json['E'] as int?,
      s: json['s'] as String?,
      k: json['k'] == null
          ? null
          : K.fromJson(json['k'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SocketKLineModelToJson(_$_SocketKLineModel instance) =>
    <String, dynamic>{
      'e': instance.e,
      'E': instance.E,
      's': instance.s,
      'k': instance.k,
    };

_$_K _$$_KFromJson(Map<String, dynamic> json) => _$_K(
      t: json['t'] as int?,
      T: json['T'] as int?,
      s: json['s'] as String?,
      i: json['i'] as String?,
      f: json['f'] as int?,
      L: json['L'] as int?,
      o: json['o'] as String?,
      c: json['c'] as String?,
      h: json['h'] as String?,
      l: json['l'] as String?,
      v: json['v'] as String?,
      x: json['x'] as bool?,
      q: json['q'] as String?,
      Q: json['Q'] as String?,
      V: json['V'] as String?,
      B: json['B'] as String?,
    );

Map<String, dynamic> _$$_KToJson(_$_K instance) => <String, dynamic>{
      't': instance.t,
      'T': instance.T,
      's': instance.s,
      'i': instance.i,
      'f': instance.f,
      'L': instance.L,
      'o': instance.o,
      'c': instance.c,
      'h': instance.h,
      'l': instance.l,
      'v': instance.v,
      'x': instance.x,
      'q': instance.q,
      'Q': instance.Q,
      'V': instance.V,
      'B': instance.B,
    };
