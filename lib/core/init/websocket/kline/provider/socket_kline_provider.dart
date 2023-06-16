import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../model/socket_kline_model.dart';
import '../service/socket_kline_service.dart';

final socketKLineProvider =
    StreamProvider.autoDispose<SocketKLineModel>((ref) async* {
  SocketKLineModel? socketKlineModel;

  // Close the connection when the stream is destroyed
  ref.onDispose(() => SocketKLineService.instance.channel.sink.close());

  // Parse the value received and emit a Message instance
  await for (final value in SocketKLineService.instance.channel.stream) {
    socketKlineModel = socketKLineModelFromJson(value);
    yield socketKlineModel;
  }
});
