import 'package:api_task/Constants.dart';
import 'package:api_task/data/model/weather_model.dart';
import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;

  static init() {
    dio = Dio(BaseOptions(
      baseUrl: baseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> getData(
      {required String endPoints,
      Map<String, dynamic>? queryParameters,
      String? token}) async {
    try {
      final Response response =
          await dio.get(endPoints, queryParameters: queryParameters);
      return response;
    } catch (e) {
      rethrow;
    }
  }
}
