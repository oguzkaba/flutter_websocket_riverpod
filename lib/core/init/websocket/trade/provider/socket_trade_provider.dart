import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/trade/model/socket_trade_model.dart';

import '../service/socket_trade_service.dart';

final socketTradeProvider =
    StreamProvider.autoDispose<SocketTradeModel>((ref) async* {
  SocketTradeModel? webSocketModel;

  // Close the connection when the stream is destroyed
  ref.onDispose(() => SocketTradeService.instance.channel.sink.close());

  // Parse the value received and emit a Message instance
  await for (final value in SocketTradeService.instance.channel.stream) {
    webSocketModel = socketTradeModelFromJson(value);
    yield webSocketModel;
  }
});
