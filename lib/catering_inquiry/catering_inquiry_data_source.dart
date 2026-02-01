import 'package:dio/dio.dart';

import '../core/network/api_exception_handler.dart';
import '../core/network/dio_client.dart';
import 'catering_inquiry_model.dart';

class CateringInquiryDataSource {
  final Dio _dio = DioClient().dio;

  Future<PagedResponse<CateringInquiry>> getAllInquiries({
    int page = 0,
    int size = 20,
  }) async {
    try {
      final response = await _dio.get(
        '/admin/api/v1/catering-inquiries',
        queryParameters: {'page': page, 'size': size},
      );
      final data = response.data as Map<String, dynamic>;
      final content = (data['content'] as List<dynamic>)
          .map((json) => CateringInquiry.fromJson(json))
          .toList();
      return PagedResponse(
        content: content,
        pageNumber: data['pageNumber'] ?? 0,
        pageSize: data['pageSize'] ?? size,
        totalElements: data['totalElements'] ?? 0,
        totalPages: data['totalPages'] ?? 0,
        isFirst: data['isFirst'] ?? true,
        isLast: data['isLast'] ?? true,
        hasNext: data['hasNext'] ?? false,
        hasPrevious: data['hasPrevious'] ?? false,
      );
    } on DioException catch (e) {
      throw ApiExceptionHandler.handle(e);
    }
  }

  Future<CateringInquiry> getInquiry(int id) async {
    try {
      final response = await _dio.get('/api/v1/catering-inquiries/$id');
      return CateringInquiry.fromJson(response.data);
    } on DioException catch (e) {
      throw ApiExceptionHandler.handle(e);
    }
  }

  Future<void> deleteInquiry(int id) async {
    try {
      await _dio.delete('/api/v1/catering-inquiries/$id');
    } on DioException catch (e) {
      throw ApiExceptionHandler.handle(e);
    }
  }
}
