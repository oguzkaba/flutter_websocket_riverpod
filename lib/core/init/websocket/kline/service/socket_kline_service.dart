import 'package:web_socket_channel/web_socket_channel.dart';

class SocketKLineService {
  static SocketKLineService? _instance;
  static SocketKLineService get instance {
    _instance ??= SocketKLineService._init();
    return _instance!;
  }

  SocketKLineService._init();

  static final _channel = WebSocketChannel.connect(
    Uri.parse('wss://stream.binance.com:443/ws/btcusdt@kline_1s'),
  );

  WebSocketChannel get channel => _channel;
}
