import 'package:dio/dio.dart';

class ApiClient {
  static const String baseUrl = 'https://api.magicthegathering.io/v1/';

  final Dio dio = Dio(BaseOptions(baseUrl: baseUrl));

  ApiClient._internal();

  static final _singleton = ApiClient._internal();

  factory ApiClient() => _singleton;
}
