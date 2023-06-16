// To parse this JSON data, do
//
//     final socketKLineModel = socketKLineModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'socket_kline_model.freezed.dart';
part 'socket_kline_model.g.dart';

SocketKLineModel socketKLineModelFromJson(String str) =>
    SocketKLineModel.fromJson(json.decode(str));

String socketKLineModelToJson(SocketKLineModel data) =>
    json.encode(data.toJson());

@freezed
class SocketKLineModel with _$SocketKLineModel {
  const factory SocketKLineModel({
    String? socketKLineModelE,
    int? e,
    String? s,
    K? k,
  }) = _SocketKLineModel;

  factory SocketKLineModel.fromJson(Map<String, dynamic> json) =>
      _$SocketKLineModelFromJson(json);
}

@freezed
class K with _$K {
  const factory K({
    int? kT,
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
    String? b,
  }) = _K;

  factory K.fromJson(Map<String, dynamic> json) => _$KFromJson(json);
}


// {
//   "e": "kline",     // Event type
//   "E": 123456789,   // Event time
//   "s": "BNBBTC",    // Symbol
//   "k": {
//     "t": 123400000, // Kline start time
//     "T": 123460000, // Kline close time
//     "s": "BNBBTC",  // Symbol
//     "i": "1m",      // Interval
//     "f": 100,       // First trade ID
//     "L": 200,       // Last trade ID
//     "o": "0.0010",  // Open price
//     "c": "0.0020",  // Close price
//     "h": "0.0025",  // High price
//     "l": "0.0015",  // Low price
//     "v": "1000",    // Base asset volume
//     "n": 100,       // Number of trades
//     "x": false,     // Is this kline closed?
//     "q": "1.0000",  // Quote asset volume
//     "V": "500",     // Taker buy base asset volume
//     "Q": "0.500",   // Taker buy quote asset volume
//     "B": "123456"   // Ignore
//   }
// }