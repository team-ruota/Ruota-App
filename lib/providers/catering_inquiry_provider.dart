import 'package:flutter/foundation.dart';
import '../models/catering_inquiry.dart';
import '../services/api_service.dart';

enum LoadingState { initial, loading, loaded, error }

class CateringInquiryProvider extends ChangeNotifier {
  final ApiService _apiService = ApiService();

  List<CateringInquiry> _inquiries = [];
  LoadingState _state = LoadingState.initial;
  String? _errorMessage;
  CateringInquiry? _selectedInquiry;

  List<CateringInquiry> get inquiries => _inquiries;
  LoadingState get state => _state;
  String? get errorMessage => _errorMessage;
  CateringInquiry? get selectedInquiry => _selectedInquiry;

  bool get isLoading => _state == LoadingState.loading;
  bool get hasError => _state == LoadingState.error;
  bool get isEmpty => _state == LoadingState.loaded && _inquiries.isEmpty;

  Future<void> fetchInquiries() async {
    _state = LoadingState.loading;
    _errorMessage = null;
    notifyListeners();

    try {
      _inquiries = await _apiService.getAllInquiries();
      _state = LoadingState.loaded;
    } catch (e) {
      _state = LoadingState.error;
      _errorMessage = e.toString();
    }
    notifyListeners();
  }

  Future<void> refreshInquiries() async {
    await fetchInquiries();
  }

  Future<void> fetchInquiryDetail(int id) async {
    try {
      _selectedInquiry = await _apiService.getInquiry(id);
      notifyListeners();
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
    }
  }

  void selectInquiry(CateringInquiry inquiry) {
    _selectedInquiry = inquiry;
    notifyListeners();
  }

  void clearSelectedInquiry() {
    _selectedInquiry = null;
    notifyListeners();
  }

  Future<bool> deleteInquiry(int id) async {
    try {
      await _apiService.deleteInquiry(id);
      _inquiries.removeWhere((inquiry) => inquiry.id == id);
      if (_selectedInquiry?.id == id) {
        _selectedInquiry = null;
      }
      notifyListeners();
      return true;
    } catch (e) {
      _errorMessage = e.toString();
      notifyListeners();
      return false;
    }
  }
}
