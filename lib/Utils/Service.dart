import 'package:dio/dio.dart';

class Service {
  final client = Dio()..options.baseUrl = "http://192.168.1.1:3000";

  Future<test> getService() async {
    final response = await client.post('/test');
    final data = response.data;
    return test.fromJson(data);
  }
}
