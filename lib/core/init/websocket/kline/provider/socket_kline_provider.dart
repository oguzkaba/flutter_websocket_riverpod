import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_websocket_riverpod/core/extensions/string_extension.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/kline/model/kline_parameter_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

import '../model/socket_kline_model.dart';
import '../service/socket_kline_service.dart';

final socketKLineProvider = StreamProvider.family
    .autoDispose<List<SocketKLineModel>, KLineParameterModel>(
        (ref, model) async* {
  WebSocketChannel channel = SocketKLineService.getSymbolCandle(
      symbol: model.symbol, interval: model.interval);
  SocketKLineModel? socketKlineModel;
  List<SocketKLineModel> listSocketKLine = [];
  List<SocketKLineModel> listCandle = [];
  List<double> change = [];
  List<double> gain = [];
  List<double> loss = [];
  double avGain = 0;
  double avLoss = 0;
  double rs = 0;
  List<double> rsi = [];

  // Close the connection when the stream is destroyed
  ref.onDispose(() => channel.sink.close());
  // Parse the value received and emit a Message instance
  await for (final value in channel.stream) {
    //kline add for chart
    socketKlineModel = socketKLineModelFromJson(value);
    listSocketKLine.add(socketKlineModel);

    //Calculate RSI
    //is candle close?
    if (socketKlineModel.k!.x!) {
      listCandle.add(socketKlineModel);
      if (listCandle.length > 1) {
        final double prevCandleClose =
            listCandle[listCandle.length - 2].k!.c!.toDouble;
        final double currCandleClose = listCandle.last.k!.c!.toDouble;
        final double ch =
            (((currCandleClose - prevCandleClose) / prevCandleClose) * 100);
        change.add(ch);
        print('change%: $ch');
        if (ch > 0) {
          gain.add(ch);
          loss.add(0);
        } else {
          loss.add(ch.abs());
          gain.add(0);
        }
        print('Gain: $gain');
        print('Loss: $loss');

        if (change.length > 13) {
          double sumGain = gain
              .getRange(rsi.length, gain.length)
              .toList()
              .reduce((p, c) => p + c);
          double sumLoss = loss
              .getRange(rsi.length, gain.length)
              .toList()
              .reduce((p, c) => p + c);
          if (sumGain != 0 && sumLoss != 0) {
            avGain = sumGain / 14;
            avLoss = sumLoss / 14;
            rs = avGain / avLoss;
            rsi.add(rs);
            print('avGain: $avGain');
            print('avLoss: $avLoss');
            print('rs: $rs');
            print('rsi: $rsi');
          }
        }
      }
    }

    yield listSocketKLine;
  }
});
