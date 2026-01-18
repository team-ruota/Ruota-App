class BookerInfo {
  final String name;
  final String? affiliation;
  final String phoneNumber;

  BookerInfo({
    required this.name,
    this.affiliation,
    required this.phoneNumber,
  });

  factory BookerInfo.fromJson(Map<String, dynamic> json) {
    return BookerInfo(
      name: json['name'] ?? '',
      affiliation: json['affiliation'],
      phoneNumber: json['phoneNumber'] ?? '',
    );
  }
}

class EventLocation {
  final String address;
  final String detailedAddress;
  final String? zonecode;
  final String? sido;
  final String? sigungu;

  EventLocation({
    required this.address,
    required this.detailedAddress,
    this.zonecode,
    this.sido,
    this.sigungu,
  });

  factory EventLocation.fromJson(Map<String, dynamic> json) {
    return EventLocation(
      address: json['address'] ?? '',
      detailedAddress: json['detailedAddress'] ?? '',
      zonecode: json['zonecode'],
      sido: json['sido'],
      sigungu: json['sigungu'],
    );
  }

  String get fullAddress => '$address $detailedAddress';
}

class MenuSelection {
  final String menuSet;
  final int cupCount;

  MenuSelection({
    required this.menuSet,
    required this.cupCount,
  });

  factory MenuSelection.fromJson(Map<String, dynamic> json) {
    return MenuSelection(
      menuSet: json['menuSet'] ?? '',
      cupCount: json['cupCount'] ?? 0,
    );
  }
}

class CateringInquiry {
  final int id;
  final String eventDatetime;
  final String celebrityName;
  final BookerInfo bookerInfo;
  final EventLocation eventLocation;
  final MenuSelection menuSelection;
  final List<String> desserts;
  final String electricPowerSupport;
  final String referralSource;
  final String? additionalRequests;
  final String? createdAt;
  final String? updatedAt;

  CateringInquiry({
    required this.id,
    required this.eventDatetime,
    required this.celebrityName,
    required this.bookerInfo,
    required this.eventLocation,
    required this.menuSelection,
    required this.desserts,
    required this.electricPowerSupport,
    required this.referralSource,
    this.additionalRequests,
    this.createdAt,
    this.updatedAt,
  });

  factory CateringInquiry.fromJson(Map<String, dynamic> json) {
    return CateringInquiry(
      id: json['id'] ?? 0,
      eventDatetime: json['eventDatetime'] ?? '',
      celebrityName: json['celebrityName'] ?? '',
      bookerInfo: BookerInfo.fromJson(json['bookerInfo'] ?? {}),
      eventLocation: EventLocation.fromJson(json['eventLocation'] ?? {}),
      menuSelection: MenuSelection.fromJson(json['menuSelection'] ?? {}),
      desserts: List<String>.from(json['desserts'] ?? []),
      electricPowerSupport: json['electricPowerSupport'] ?? '',
      referralSource: json['referralSource'] ?? '',
      additionalRequests: json['additionalRequests'],
      createdAt: json['createdAt'],
      updatedAt: json['updatedAt'],
    );
  }

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
}
