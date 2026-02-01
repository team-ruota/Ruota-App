import 'package:flutter/foundation.dart';

import 'catering_inquiry_data_source.dart';
import 'catering_inquiry_model.dart';

class CateringInquiryListBloc with ChangeNotifier {
  CateringInquiryListBloc() {
    _notifiers
      ..addAll([
        items,
        totalCount,
        isLoading,
        hasError,
        errorMessage,
        selectedInquiry,
      ])
      ..forEach((element) {
        element.addListener(notifyListeners);
      });
  }

  final dataSource = CateringInquiryDataSource();

  final _notifiers = <ChangeNotifier>[];
  final items = ValueNotifier<List<CateringInquiry>>([]);
  final totalCount = ValueNotifier<int>(0);
  final isLoading = ValueNotifier<bool>(false);
  final hasError = ValueNotifier<bool>(false);
  final errorMessage = ValueNotifier<String?>(null);
  final selectedInquiry = ValueNotifier<CateringInquiry?>(null);

  bool get isEmpty => items.value.isEmpty;

  @override
  void dispose() {
    for (final element in _notifiers) {
      element
        ..removeListener(notifyListeners)
        ..dispose();
    }
    super.dispose();
  }

  Future<void> fetch() async {
    isLoading.value = true;
    hasError.value = false;
    errorMessage.value = null;

    try {
      final result = await dataSource.getAllInquiries();
      items.value = result.content;
      totalCount.value = result.totalElements;
      hasError.value = false;
    } catch (e) {
      hasError.value = true;
      errorMessage.value = e.toString();
      items.value = [];
    } finally {
      isLoading.value = false;
    }
  }

  Future<void> refresh() async {
    await fetch();
  }

  Future<void> fetchDetail(int id) async {
    try {
      selectedInquiry.value = await dataSource.getInquiry(id);
    } catch (e) {
      errorMessage.value = e.toString();
    }
  }

  void selectInquiry(CateringInquiry inquiry) {
    selectedInquiry.value = inquiry;
  }

  void clearSelectedInquiry() {
    selectedInquiry.value = null;
  }

  Future<bool> deleteInquiry(int id) async {
    try {
      await dataSource.deleteInquiry(id);
      items.value = items.value.where((inquiry) => inquiry.id != id).toList();
      totalCount.value = items.value.length;
      if (selectedInquiry.value?.id == id) {
        selectedInquiry.value = null;
      }
      return true;
    } catch (e) {
      errorMessage.value = e.toString();
      return false;
    }
  }
}
