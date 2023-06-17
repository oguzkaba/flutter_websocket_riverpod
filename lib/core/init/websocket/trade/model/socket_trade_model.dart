// To parse this JSON data, do
//
//     final SocketTradeModel = socketTradeModelFromJson(jsonString);

import 'package:freezed_annotation/freezed_annotation.dart';
import 'dart:convert';

part 'socket_trade_model.freezed.dart';
part 'socket_trade_model.g.dart';

SocketTradeModel socketTradeModelFromJson(String str) =>
    SocketTradeModel.fromJson(json.decode(str));

String socketTradeModelToJson(SocketTradeModel data) =>
    json.encode(data.toJson());

@freezed
class SocketTradeModel with _$SocketTradeModel {
  const factory SocketTradeModel({
    int? socketTradeModelE,
    String? e,
    String? s,
    int? socketTradeModelT,
    String? p,
    String? q,
    int? b,
    int? a,
    int? t,
    bool? socketTradeModelM,
    bool? m,
  }) = _SocketTradeModel;

  factory SocketTradeModel.fromJson(Map<String, dynamic> json) =>
      _$SocketTradeModelFromJson(json);
}


// {
//   "e": "trade",     // Event type
//   "E": 123456789,   // Event time
//   "s": "BNBBTC",    // Symbol
//   "t": 12345,       // Trade ID
//   "p": "0.001",     // Price
//   "q": "100",       // Quantity
//   "b": 88,          // Buyer order ID
//   "a": 50,          // Seller order ID
//   "T": 123456785,   // Trade time
//   "m": true,        // Is the buyer the market maker?
//   "M": true         // Ignore
// }