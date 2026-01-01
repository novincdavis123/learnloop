import 'package:dio/dio.dart';
import 'package:learnloop/data/utils/base_path.dart';

class ApiService {
  // Dio instance
  late Dio _dio;

  ApiService() {
    // Initialize Dio with base options
    _dio = Dio(
      BaseOptions(
        baseUrl: ApiPath.baseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
      ),
    );
  }

  // GET request
  Future<Response> get(
    String path, {
    Map<String, dynamic>? queryParameters,
  }) async {
    try {
      final response = await _dio.get(path, queryParameters: queryParameters);
      return response;
    } on DioException catch (e) {
      // Handle DioError (network / server / timeout)
      throw Exception(e.message);
    }
  }

  // POST request
  Future<Response> post(String path, {dynamic data}) async {
    try {
      final response = await _dio.post(path, data: data);
      return response;
    } on DioException catch (e) {
      throw Exception(e.message);
    }
  }
}
