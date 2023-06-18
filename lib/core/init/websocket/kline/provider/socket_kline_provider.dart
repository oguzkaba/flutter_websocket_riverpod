import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_websocket_riverpod/core/extensions/string_extension.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/kline/model/kline_parameter_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../model/socket_kline_model.dart';
import '../service/socket_kline_service.dart';

Color? cadenceKLineColor;

final socketKLineProvider = StreamProvider.family
    .autoDispose<List<SocketKLineModel>, KLineParameterModel>(
        (ref, model) async* {
  WebSocketChannel channel = SocketKLineService.getSymbolCandle(
      symbol: model.symbol, interval: model.interval);
  SocketKLineModel? socketKlineModel;
  List<SocketKLineModel> listSocketKLine = [];

  // Close the connection when the stream is destroyed
  ref.onDispose(() => channel.sink.close());
  // Parse the value received and emit a Message instance
  await for (final value in channel.stream) {
    socketKlineModel = socketKLineModelFromJson(value);

    _calculateCadence(listSocketKLine, socketKlineModel);

    listSocketKLine.add(socketKlineModel);
    yield listSocketKLine;
  }
});

void _calculateCadence(List<SocketKLineModel> list, SocketKLineModel model) {
  if (list.isNotEmpty) {
    if (list.last.k!.h!.toDouble == model.k!.h!.toDouble) {
      cadenceKLineColor = null;
    } else if (list.last.k!.h!.toDouble > model.k!.h!.toDouble) {
      cadenceKLineColor = Colors.redAccent;
    } else {
      cadenceKLineColor = Colors.green;
    }
    //list.removeRange(0, list.length - 1);
  }
}
