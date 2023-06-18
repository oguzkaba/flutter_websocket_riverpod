import 'package:flutter/material.dart';
import 'package:flutter_websocket_riverpod/features/statistic/view/statistic_view.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.abc_rounded),
            title: const Text('BTCUSDT'),
            onTap: () => Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) =>
                      const StatisticView(title: 'BTC/USDT', symbol: 'btcusdt'),
                )),
          );
        },
      ),
    );
  }
}
