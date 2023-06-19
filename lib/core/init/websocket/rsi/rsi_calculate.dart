import 'package:flutter_websocket_riverpod/core/extensions/string_extension.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/kline/model/socket_kline_model.dart';

class RSICalculate {
  List<double> change = [];
  List<double> gain = [];
  List<double> loss = [];
  List<double> avGain = [];
  List<double> avLoss = [];
  List<double> rs = [];
  List<double> rsi = [];

  List<double> calculate(List<SocketKLineModel> kLineList) {
    for (var i = 0; i < kLineList.length; i++) {
      if (i + 1 < kLineList.length) {
        //change
        final double ch =
            (((kLineList[i + 1].k!.c!.toDouble - kLineList[i].k!.c!.toDouble) /
                        kLineList[i].k!.c!.toDouble) *
                    100)
                .abs();
        change.add(ch);
        //Gain & Loss
        if (ch > 0) {
          gain.add(ch);
          loss.add(0);
        } else {
          loss.add(ch);
          gain.add(0);
        }
        //AvvGain
        if (gain.length > 14) averageGainCalculate();
        //AvvLoss
        if (loss.length > 14) averageLossCalculate();
        //RS
        if (avGain.isNotEmpty && avLoss.isNotEmpty) rsCalculate();
        //RSI
        if (rs.isNotEmpty) rsiCalculate();
      }
    }
    return rsi;
  }

  void rsiCalculate() {
    if (rsi.isEmpty) {
      rs.add(100 - (100 / (1 + rs.first).abs()));
    } else {
      for (var i = rsi.length - 1; i < rs.length; i++) {
        rs.add(100 - (100 / (1 + rs[i]).abs()));
      }
    }
    print(rsi);
  }

  void rsCalculate() {
    if (rs.isEmpty) {
      rs.add(avGain.first / avLoss.first);
    } else {
      for (var i = rs.length - 1; i < avGain.length; i++) {
        rs.add(avGain[i] / avLoss[i]);
      }
    }
    print(rs);
  }

  void averageGainCalculate() {
    double sum = 0;
    int fark = gain.length - 14;
    for (var i = 0 + fark; i < 14 + fark; i++) {
      sum += gain[i];
    }
    avGain.add(sum / 14);

    print('Gain: $avGain');
  }

  void averageLossCalculate() {
    double sum = 0;
    int fark = loss.length - 14;
    for (var i = 0 + fark; i < 14 + fark; i++) {
      sum += loss[i];
    }
    avLoss.add(sum / 14);

    print('Loss: $avLoss');
  }
}
