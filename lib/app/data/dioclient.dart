import 'package:dio/dio.dart';

class DioClient {
// with default Options

// or new Dio with a BaseOptions instance.
  var options = BaseOptions(
    baseUrl: 'https://www.xx.com/api',
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  Dio dio = Dio();
}
