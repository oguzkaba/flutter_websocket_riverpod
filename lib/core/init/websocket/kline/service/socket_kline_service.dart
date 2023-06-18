import 'package:web_socket_channel/web_socket_channel.dart';

class SocketKLineService {
  static WebSocketChannel getSymbolCandle(
      {required String symbol, required String interval}) {
    final channel = WebSocketChannel.connect(
      Uri.parse('wss://stream.binance.com:443/ws/$symbol@kline_$interval'),
    );
    return channel;
  }
}
