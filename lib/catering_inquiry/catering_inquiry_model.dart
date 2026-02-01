import 'package:freezed_annotation/freezed_annotation.dart';

part 'catering_inquiry_model.freezed.dart';
part 'catering_inquiry_model.g.dart';

@freezed
class BookerInfo with _$BookerInfo {
  const factory BookerInfo({
    @Default('') String name,
    String? organization,
    @Default('') String phoneNumber,
  }) = _BookerInfo;

  factory BookerInfo.fromJson(Map<String, dynamic> json) =>
      _$BookerInfoFromJson(json);
}

@freezed
class EventLocation with _$EventLocation {
  const EventLocation._();

  const factory EventLocation({
    String? address,
    String? detailedAddress,
    String? zonecode,
    String? sido,
    String? sigungu,
  }) = _EventLocation;

  factory EventLocation.fromJson(Map<String, dynamic> json) =>
      _$EventLocationFromJson(json);

  String get fullAddress =>
      '${address ?? ''} ${detailedAddress ?? ''}'.trim();
}

@freezed
class MenuSelection with _$MenuSelection {
  const factory MenuSelection({
    @Default('') String menuSet,
    @Default(0) int cupCount,
  }) = _MenuSelection;

  factory MenuSelection.fromJson(Map<String, dynamic> json) =>
      _$MenuSelectionFromJson(json);
}

@freezed
class Dessert with _$Dessert {
  const Dessert._();

  const factory Dessert({
    @Default('') String name,
    @Default(0) int quantity,
  }) = _Dessert;

  factory Dessert.fromJson(Map<String, dynamic> json) =>
      _$DessertFromJson(json);

  @override
  String toString() => '$name $quantity개';
}

@freezed
class CateringInquiry with _$CateringInquiry {
  const CateringInquiry._();

  const factory CateringInquiry({
    @Default(0) int id,
    String? fromEventDatetime,
    String? toEventDatetime,
    @Default('') String celebrityName,
    @Default(BookerInfo()) BookerInfo bookerInfo,
    @Default(EventLocation()) EventLocation eventLocation,
    @Default(MenuSelection()) MenuSelection menuSelection,
    @Default([]) List<Dessert> desserts,
    @Default('') String electricPowerSupport,
    @Default('') String referralSource,
    @Default('') String truckType,
    String? additionalRequests,
    String? regDateTime,
    String? modDateTime,
    @Default('') String inquiryState,
    @Default('') String inquiryStateDescription,
    String? confirmDateTime,
    String? completedDateTime,
    String? deletedDateTime,
  }) = _CateringInquiry;

  factory CateringInquiry.fromJson(Map<String, dynamic> json) =>
      _$CateringInquiryFromJson(json);

  String get electricPowerSupportLabel {
    switch (electricPowerSupport) {
      case 'AVAILABLE':
        return '가능';
      case 'UNAVAILABLE':
        return '불가능';
      case 'UNKNOWN':
        return '확인 필요';
      default:
        return electricPowerSupport;
    }
  }

  String get referralSourceLabel {
    switch (referralSource) {
      case 'INSTAGRAM':
        return '인스타그램';
      case 'NAVER':
        return '네이버';
      case 'TWITTER':
        return '트위터';
      case 'RECOMMEND':
        return '지인 추천';
      case 'BUSINESS_CARD':
        return '명함';
      case 'OTHER':
        return '기타';
      default:
        return referralSource;
    }
  }

  String get truckTypeLabel {
    switch (truckType) {
      case 'ESPRESSO_BAR':
        return '에스프레소 바';
      case 'BREWING_BAR':
        return '브루잉 바';
      default:
        return truckType;
    }
  }

  String get dessertsDisplay {
    if (desserts.isEmpty) return '없음';
    return desserts.map((d) => d.toString()).join(', ');
  }
}

@freezed
class PagedResponse<T> with _$PagedResponse<T> {
  const factory PagedResponse({
    required List<T> content,
    @Default(0) int pageNumber,
    @Default(20) int pageSize,
    @Default(0) int totalElements,
    @Default(0) int totalPages,
    @Default(true) bool isFirst,
    @Default(true) bool isLast,
    @Default(false) bool hasNext,
    @Default(false) bool hasPrevious,
  }) = _PagedResponse<T>;
}
