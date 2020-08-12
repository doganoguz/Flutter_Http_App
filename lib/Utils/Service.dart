
import 'package:dio/dio.dart';

class Service {
  final client = Dio()
    ..options.baseUrl = "https://192.168.1.1/";