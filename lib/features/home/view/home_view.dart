import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:kartal/kartal.dart';

import '../../../core/init/websocket/kline/model/socket_kline_model.dart';
import '../../../core/init/websocket/kline/provider/socket_kline_provider.dart';
import '../../../core/init/websocket/trade/model/socket_trade_model.dart';
import '../../../core/init/websocket/trade/provider/socket_trade_provider.dart';

class HomeView extends ConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<SocketTradeModel>> socketTradeData =
        ref.watch(socketTradeProvider);
    AsyncValue<List<SocketKLineModel>> socketKLineData =
        ref.watch(socketKLineProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Binance Websocket-Riverpod'),
      ),
      body: _bodyView(ref, context, socketTradeData, socketKLineData),
    );
  }

  Column _bodyView(
      WidgetRef ref,
      BuildContext context,
      AsyncValue<List<SocketTradeModel>> socketTradeData,
      AsyncValue<List<SocketKLineModel>> socketKLineData) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        socketTradeData.when(
          loading: () => const Center(
              child: SizedBox(width: 150, child: LinearProgressIndicator())),
          error: (err, stack) => Text('TradeDataError: $err $stack'),
          data: (data) => Center(
              child: Text(
            'Trade: ${data.last.p} \$',
            style: Theme.of(context)
                .textTheme
                .bodyLarge
                ?.copyWith(color: cadenceTradeColor),
          )),
        ),
        context.sized.emptySizedHeightBoxNormal,
        socketKLineData.when(
            loading: () => const Center(
                child: SizedBox(
                    width: 150,
                    child: LinearProgressIndicator(color: Colors.red))),
            error: (err, stack) => Text('KLineDataError: $err'),
            data: (data) {
              debugPrint('KLineListCount: ${data.length}');
              return Text(
                'KLine: ${data.last.k?.h} \$',
                style: Theme.of(context)
                    .textTheme
                    .bodyLarge
                    ?.copyWith(color: cadenceKLineColor),
              );
            }),
      ],
    );
  }
}
