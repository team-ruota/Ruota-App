import 'package:dio/dio.dart';

class ApiExceptionHandler {
  static String handle(DioException e) {
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
