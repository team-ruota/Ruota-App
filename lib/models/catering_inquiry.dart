class BookerInfo {
  final String name;
  final String? organization;
  final String phoneNumber;

  BookerInfo({
    required this.name,
    this.organization,
    required this.phoneNumber,
  });

  factory BookerInfo.fromJson(Map<String, dynamic> json) {
    return BookerInfo(
      name: json['name'] ?? '',
      organization: json['organization'],
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

class Dessert {
  final String name;
  final int quantity;

  Dessert({
    required this.name,
    required this.quantity,
  });

  factory Dessert.fromJson(Map<String, dynamic> json) {
    return Dessert(
      name: json['name'] ?? '',
      quantity: json['quantity'] ?? 0,
    );
  }

  @override
  String toString() => '$name $quantity개';
}

class CateringInquiry {
  final int id;
  final String eventDatetime;
  final String celebrityName;
  final BookerInfo bookerInfo;
  final EventLocation eventLocation;
  final MenuSelection menuSelection;
  final List<Dessert> desserts;
  final String electricPowerSupport;
  final String referralSource;
  final String? additionalRequests;
  final String? regDateTime;
  final String? modDateTime;

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
    this.regDateTime,
    this.modDateTime,
  });

  factory CateringInquiry.fromJson(Map<String, dynamic> json) {
    return CateringInquiry(
      id: json['id'] ?? 0,
      eventDatetime: json['eventDatetime'] ?? '',
      celebrityName: json['celebrityName'] ?? '',
      bookerInfo: BookerInfo.fromJson(json['bookerInfo'] ?? {}),
      eventLocation: EventLocation.fromJson(json['eventLocation'] ?? {}),
      menuSelection: MenuSelection.fromJson(json['menuSelection'] ?? {}),
      desserts: (json['desserts'] as List<dynamic>?)
              ?.map((e) => Dessert.fromJson(e))
              .toList() ??
          [],
      electricPowerSupport: json['electricPowerSupport'] ?? '',
      referralSource: json['referralSource'] ?? '',
      additionalRequests: json['additionalRequests'],
      regDateTime: json['regDateTime'],
      modDateTime: json['modDateTime'],
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

  String get dessertsDisplay {
    if (desserts.isEmpty) return '없음';
    return desserts.map((d) => d.toString()).join(', ');
  }
}
