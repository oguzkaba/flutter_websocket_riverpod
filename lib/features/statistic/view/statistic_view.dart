import 'package:auto_route/auto_route.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_websocket_riverpod/core/extensions/string_extension.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/kline/model/kline_parameter_model.dart';
import 'package:flutter_websocket_riverpod/features/home/view/widgets/charts_widget.dart';

import '../../../core/init/websocket/kline/model/socket_kline_model.dart';
import '../../../core/init/websocket/kline/provider/socket_kline_provider.dart';
import '../../../core/init/websocket/trade/model/socket_trade_model.dart';
import '../../../core/init/websocket/trade/provider/socket_trade_provider.dart';

@RoutePage()
class StatisticView extends ConsumerWidget {
  final String symbol, title;
  const StatisticView({required this.title, required this.symbol, super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    AsyncValue<List<SocketTradeModel>> socketTradeData =
        ref.watch(socketTradeProvider(symbol));
    AsyncValue<List<SocketKLineModel>> socketKLineData = ref.watch(
        socketKLineProvider(
            KLineParameterModel(symbol: symbol, interval: '1m')));

    return Scaffold(
      appBar: AppBar(
        title: Text(title),
        actions: [
          IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.star,
                color: Colors.amber,
              )),
          IconButton(
              onPressed: () {}, icon: const Icon(Icons.add_alert_rounded))
        ],
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
        SizedBox(
          height: 100,
          child: socketTradeData.when(
            loading: () => const Center(
                child: SizedBox(width: 150, child: LinearProgressIndicator())),
            error: (err, stack) => Text('TradeDataError: $err $stack'),
            data: (data) {
              NumberFormat f = NumberFormat(
                "###,###.0#",
                "en_US",
              );
              final price = f.format(data.last.p!.toDouble);
              return Center(
                  child: Text(
                '$price\$',
                style: Theme.of(context)
                    .textTheme
                    .titleLarge
                    ?.copyWith(color: cadenceTradeColor),
              ));
            },
          ),
        ),
        Expanded(
          child: socketKLineData.when(
              loading: () => const Center(
                  child: SizedBox(
                      width: 150,
                      child: LinearProgressIndicator(color: Colors.red))),
              error: (err, stack) => Text('KLineDataError: $err'),
              data: (data) => CandleChart(
                    socketKLineModel: data,
                  )),
        )
      ],
    );
  }
}
