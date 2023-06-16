import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

abstract class IService {
  final Dio manager;
  final GlobalKey<ScaffoldState>? scaffoldKey;
  IService(this.manager, this.scaffoldKey);
//Future<BaseResponseModel> login({required LoginRequestModel model});
//Future<BaseResponseModel> register({required RegisterRequestModel model});
}

class Service extends IService {
  Service(super.manager, super.scaffoldKey);
/* @override
Future<BaseResponseModel> login({required LoginRequestModel model}) async {
//Api user token request
try {
final response =
await manager.post(ApiUrlEnum.authLogin.url, data: model.toJson());
 return BaseResponseModel(
object: loginResponseModelFromJson(response.data));
 } on DioError catch (e) {
return BaseResponseModel(
error: NetworkErrorModel(e.message, e.response!.statusCode!));
}
}*/
}
