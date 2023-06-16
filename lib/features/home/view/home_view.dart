import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/trade/model/socket_trade_model.dart';

import '../../../core/init/websocket/kline/model/socket_kline_model.dart';
import '../../../core/init/websocket/kline/provider/socket_kline_provider.dart';
import '../../../core/init/websocket/trade/provider/socket_trade_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<SocketTradeModel> socketTradeData =
        ref.watch(socketTradeProvider);
    AsyncValue<SocketKLineModel> socketKLineData =
        ref.watch(socketKLineProvider);

    return socketKLineData.when(
      loading: () => const Center(child: CircularProgressIndicator()),
      error: (err, stack) => Text('Error: $err'),
      data: (data) {
        return Center(child: Text('${data.k!.b} \$'));
      },
    );
  }
}
