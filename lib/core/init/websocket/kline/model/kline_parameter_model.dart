import 'package:freezed_annotation/freezed_annotation.dart';

part 'kline_parameter_model.freezed.dart';

@freezed
abstract class KLineParameterModel with _$KLineParameterModel {
  factory KLineParameterModel({
    required String symbol,
    required String interval,
  }) = _KLineParameterModel;
}
