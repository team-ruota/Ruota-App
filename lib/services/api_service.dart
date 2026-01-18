import 'package:dio/dio.dart';
import '../models/catering_inquiry.dart';

class ApiService {
  static const String baseUrl = 'https://api.dev.lastindus.com';

  final Dio _dio;

  ApiService() : _dio = Dio(BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: const Duration(seconds: 10),
    receiveTimeout: const Duration(seconds: 10),
    headers: {
      'Content-Type': 'application/json',
    },
  ));

  Future<List<CateringInquiry>> getAllInquiries() async {
    try {
      final response = await _dio.get('/api/v1/catering-inquiries');
      final List<dynamic> data = response.data;
      return data.map((json) => CateringInquiry.fromJson(json)).toList();
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<CateringInquiry> getInquiry(int id) async {
    try {
      final response = await _dio.get('/api/v1/catering-inquiries/$id');
      return CateringInquiry.fromJson(response.data);
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  Future<void> deleteInquiry(int id) async {
    try {
      await _dio.delete('/api/v1/catering-inquiries/$id');
    } on DioException catch (e) {
      throw _handleError(e);
    }
  }

  String _handleError(DioException e) {
    switch (e.type) {
      case DioExceptionType.connectionTimeout:
      case DioExceptionType.sendTimeout:
      case DioExceptionType.receiveTimeout:
        return '서버 연결 시간이 초과되었습니다.';
      case DioExceptionType.badResponse:
        final statusCode = e.response?.statusCode;
        if (statusCode == 404) {
          return '요청한 데이터를 찾을 수 없습니다.';
        } else if (statusCode == 500) {
          return '서버 오류가 발생했습니다.';
        }
        return '요청 처리 중 오류가 발생했습니다. ($statusCode)';
      case DioExceptionType.cancel:
        return '요청이 취소되었습니다.';
      default:
        return '네트워크 오류가 발생했습니다.';
    }
  }
}
