import 'package:dio/dio.dart';
import 'package:ecommerce_project/core/dio_provider.dart';
import 'package:riverpod/riverpod.dart';

final networkServiceProvider = Provider((ref) {
  return NetworkService(ref.read(dioProvider));
});

class NetworkService {
  final Dio dio;

  NetworkService(this.dio);

  Future<Response> get(String url) async {
    return await dio.get(url);
  }

  Future<Response> post(String url, Map<String, dynamic> data) async {
    return await dio.post(url, data: data);
  }

  Future<Response> put(String url, Map<String, dynamic> data) async {
    return await dio.put(url, data: data);
  }

  Future<Response> delete(String url) async {
    return await dio.delete(url);
  }
}