import 'package:web_socket_channel/web_socket_channel.dart';

class SocketTradeService {
  static WebSocketChannel getSymbolTrade({required String symbol}) {
    final channel = WebSocketChannel.connect(
      Uri.parse('wss://stream.binance.com:443/ws/$symbol@trade'),
    );
    return channel;
  }
}
