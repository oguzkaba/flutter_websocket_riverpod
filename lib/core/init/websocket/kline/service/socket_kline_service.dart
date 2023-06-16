import 'package:flutter_websocket_riverpod/core/init/websocket/trade/model/socket_trade_model.dart';
import 'package:web_socket_channel/web_socket_channel.dart';

class SocketKLineService {
  static SocketKLineService? _instance;
  static SocketKLineService get instance {
    _instance ??= SocketKLineService._init();
    return _instance!;
  }

  SocketKLineService._init();

  static final _channel = WebSocketChannel.connect(
    Uri.parse('wss://stream.binance.com:443/ws/btcusdt@trade'),
  );

  SocketTradeModel? getData;
  WebSocketChannel get channel => _channel;
}
