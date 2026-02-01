// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'catering_inquiry_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$BookerInfoImpl _$$BookerInfoImplFromJson(Map<String, dynamic> json) =>
    _$BookerInfoImpl(
      name: json['name'] as String? ?? '',
      organization: json['organization'] as String?,
      phoneNumber: json['phoneNumber'] as String? ?? '',
    );

Map<String, dynamic> _$$BookerInfoImplToJson(_$BookerInfoImpl instance) =>
    <String, dynamic>{
      'name': instance.name,
      'organization': instance.organization,
      'phoneNumber': instance.phoneNumber,
    };

_$EventLocationImpl _$$EventLocationImplFromJson(Map<String, dynamic> json) =>
    _$EventLocationImpl(
      address: json['address'] as String?,
      detailedAddress: json['detailedAddress'] as String?,
      zonecode: json['zonecode'] as String?,
      sido: json['sido'] as String?,
      sigungu: json['sigungu'] as String?,
    );

Map<String, dynamic> _$$EventLocationImplToJson(_$EventLocationImpl instance) =>
    <String, dynamic>{
      'address': instance.address,
      'detailedAddress': instance.detailedAddress,
      'zonecode': instance.zonecode,
      'sido': instance.sido,
      'sigungu': instance.sigungu,
    };

_$MenuSelectionImpl _$$MenuSelectionImplFromJson(Map<String, dynamic> json) =>
    _$MenuSelectionImpl(
      menuSet: json['menuSet'] as String? ?? '',
      cupCount: (json['cupCount'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$MenuSelectionImplToJson(_$MenuSelectionImpl instance) =>
    <String, dynamic>{
      'menuSet': instance.menuSet,
      'cupCount': instance.cupCount,
    };

_$DessertImpl _$$DessertImplFromJson(Map<String, dynamic> json) =>
    _$DessertImpl(
      name: json['name'] as String? ?? '',
      quantity: (json['quantity'] as num?)?.toInt() ?? 0,
    );

Map<String, dynamic> _$$DessertImplToJson(_$DessertImpl instance) =>
    <String, dynamic>{'name': instance.name, 'quantity': instance.quantity};

_$CateringInquiryImpl _$$CateringInquiryImplFromJson(
  Map<String, dynamic> json,
) => _$CateringInquiryImpl(
  id: (json['id'] as num?)?.toInt() ?? 0,
  fromEventDatetime: json['fromEventDatetime'] as String?,
  toEventDatetime: json['toEventDatetime'] as String?,
  celebrityName: json['celebrityName'] as String? ?? '',
  bookerInfo: json['bookerInfo'] == null
      ? const BookerInfo()
      : BookerInfo.fromJson(json['bookerInfo'] as Map<String, dynamic>),
  eventLocation: json['eventLocation'] == null
      ? const EventLocation()
      : EventLocation.fromJson(json['eventLocation'] as Map<String, dynamic>),
  menuSelection: json['menuSelection'] == null
      ? const MenuSelection()
      : MenuSelection.fromJson(json['menuSelection'] as Map<String, dynamic>),
  desserts:
      (json['desserts'] as List<dynamic>?)
          ?.map((e) => Dessert.fromJson(e as Map<String, dynamic>))
          .toList() ??
      const [],
  electricPowerSupport: json['electricPowerSupport'] as String? ?? '',
  referralSource: json['referralSource'] as String? ?? '',
  truckType: json['truckType'] as String? ?? '',
  additionalRequests: json['additionalRequests'] as String?,
  regDateTime: json['regDateTime'] as String?,
  modDateTime: json['modDateTime'] as String?,
  inquiryState: json['inquiryState'] as String? ?? '',
  inquiryStateDescription: json['inquiryStateDescription'] as String? ?? '',
  confirmDateTime: json['confirmDateTime'] as String?,
  completedDateTime: json['completedDateTime'] as String?,
  deletedDateTime: json['deletedDateTime'] as String?,
);

Map<String, dynamic> _$$CateringInquiryImplToJson(
  _$CateringInquiryImpl instance,
) => <String, dynamic>{
  'id': instance.id,
  'fromEventDatetime': instance.fromEventDatetime,
  'toEventDatetime': instance.toEventDatetime,
  'celebrityName': instance.celebrityName,
  'bookerInfo': instance.bookerInfo,
  'eventLocation': instance.eventLocation,
  'menuSelection': instance.menuSelection,
  'desserts': instance.desserts,
  'electricPowerSupport': instance.electricPowerSupport,
  'referralSource': instance.referralSource,
  'truckType': instance.truckType,
  'additionalRequests': instance.additionalRequests,
  'regDateTime': instance.regDateTime,
  'modDateTime': instance.modDateTime,
  'inquiryState': instance.inquiryState,
  'inquiryStateDescription': instance.inquiryStateDescription,
  'confirmDateTime': instance.confirmDateTime,
  'completedDateTime': instance.completedDateTime,
  'deletedDateTime': instance.deletedDateTime,
};
