import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_websocket_riverpod/core/extensions/string_extension.dart';
import 'package:flutter_websocket_riverpod/core/init/websocket/kline/model/socket_kline_model.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class CandleChart extends StatefulWidget {
  final List<SocketKLineModel> socketKLineModel;
  const CandleChart({super.key, required this.socketKLineModel});

  @override
  State<CandleChart> createState() => _CandleChartState();
}

class _CandleChartState extends State<CandleChart> {
  _CandleChartState();
  // late bool _enableSolidCandle;
  // late bool _toggleVisibility;
  TrackballBehavior? _trackballBehavior;
  @override
  void initState() {
    // _enableSolidCandle = false;
    // _toggleVisibility = true;
    _trackballBehavior = TrackballBehavior(
        enable: true, activationMode: ActivationMode.singleTap);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return _buildCandle();
  }

  ///Get the cartesian chart with candle series
  SfCartesianChart _buildCandle() {
    List<SocketKLineModel> modelKLine = widget.socketKLineModel;
    return SfCartesianChart(
      zoomPanBehavior: ZoomPanBehavior(
          enableDoubleTapZooming: true,
          zoomMode: ZoomMode.xy,
          enableMouseWheelZooming: true,
          enablePanning: true,
          enablePinching: true),
      plotAreaBorderWidth: 0,
      title: ChartTitle(
          text:
              '${DateFormat('dd-MMM-yyy').format(DateTime.fromMillisecondsSinceEpoch(modelKLine.last.k!.T!))} ${modelKLine.last.s!} Candle Chart'),
      primaryXAxis: DateTimeAxis(
          dateFormat: DateFormat('yyyy/MM/dd-HH:mm'),
          interval: 20,
          intervalType: DateTimeIntervalType.minutes,
          minimum: DateTime.now().add(const Duration(minutes: -20)),
          maximum: DateTime.now().add(const Duration(minutes: 20)),
          majorGridLines: const MajorGridLines(width: 0)),
      primaryYAxis: NumericAxis(
          minimum: modelKLine.last.k!.l!.toDouble - 50,
          maximum: modelKLine.last.k!.h!.toDouble + 50,
          interval: 20,
          labelFormat: r'${value}',
          axisLine: const AxisLine(width: 0)),
      series: _getCandleSeries(),
      trackballBehavior: _trackballBehavior,
    );
  }

  /// It returns the candle series to the chart.
  List<CandleSeries<SocketKLineModel, DateTime>> _getCandleSeries() {
    return [
      CandleSeries<SocketKLineModel, DateTime>(
        animationDuration: 500,
        enableSolidCandles: false,
        dataSource: widget.socketKLineModel.map((e) => e).toList(),
        name: 'AAPL',
        showIndicationForSameValues: true,
        //dataLabelMapper: (SocketKLineModel model, _) => model.e,
        xValueMapper: (SocketKLineModel model, _) =>
            DateTime.fromMillisecondsSinceEpoch(model.k!.T!),
        lowValueMapper: (SocketKLineModel model, _) => model.k!.l!.toDouble,
        highValueMapper: (SocketKLineModel model, _) => model.k!.h!.toDouble,
        openValueMapper: (SocketKLineModel model, _) => model.k!.o!.toDouble,
        closeValueMapper: (SocketKLineModel model, _) => model.k!.c!.toDouble,
      )
    ];
  }
}
