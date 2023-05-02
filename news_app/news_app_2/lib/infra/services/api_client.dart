import 'package:dio/dio.dart';

class ApiClient {
  Dio dio = Dio();
  Future<Response> get(Url) {

    return dio.get(Url);
  }
  post(data, Url){

  }
}
