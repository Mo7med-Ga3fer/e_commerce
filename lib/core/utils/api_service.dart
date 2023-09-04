import 'package:dio/dio.dart';

abstract class ApiService
{
  static const baseUrl = 'https://fakestoreapi.com/';
  static final dio = Dio();

  static Future<List<dynamic>> get({required String endPoint}) async {
    var responce = await dio.get('$baseUrl$endPoint');
    return responce.data;
  }
}