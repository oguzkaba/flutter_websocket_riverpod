import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:web_socket_channel/web_socket_channel.dart';
import '../../../../extensions/string_extension.dart';
import '../model/socket_trade_model.dart';

import '../service/socket_trade_service.dart';

Color? cadenceTradeColor;

final socketTradeProvider = StreamProvider.family
    .autoDispose<List<SocketTradeModel>, String>((ref, String symbol) async* {
  WebSocketChannel channel = SocketTradeService.getSymbolTrade(symbol: symbol);
  SocketTradeModel? socketTradeModel;
  List<SocketTradeModel> listSocketTrade = [];

  // Close the connection when the stream is destroyed
  ref.onDispose(() => channel.sink.close());

  // Parse the value received and emit a Message instance
  await for (final value in channel.stream) {
    socketTradeModel = socketTradeModelFromJson(value);

    _calculateCadence(listSocketTrade, socketTradeModel);

    listSocketTrade.add(socketTradeModel);
    yield listSocketTrade;
  }
});

void _calculateCadence(List<SocketTradeModel> list, SocketTradeModel model) {
  if (list.isNotEmpty) {
    if (list.last.p!.toDouble == model.p!.toDouble) {
      cadenceTradeColor = null;
    } else if (list.last.p!.toDouble > model.p!.toDouble) {
      cadenceTradeColor = Colors.redAccent;
    } else {
      cadenceTradeColor = Colors.green;
    }
    list.removeRange(0, list.length - 1);
  }
}
