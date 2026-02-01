// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'catering_inquiry_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

BookerInfo _$BookerInfoFromJson(Map<String, dynamic> json) {
  return _BookerInfo.fromJson(json);
}

/// @nodoc
mixin _$BookerInfo {
  String get name => throw _privateConstructorUsedError;
  String? get organization => throw _privateConstructorUsedError;
  String get phoneNumber => throw _privateConstructorUsedError;

  /// Serializes this BookerInfo to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of BookerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $BookerInfoCopyWith<BookerInfo> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BookerInfoCopyWith<$Res> {
  factory $BookerInfoCopyWith(
    BookerInfo value,
    $Res Function(BookerInfo) then,
  ) = _$BookerInfoCopyWithImpl<$Res, BookerInfo>;
  @useResult
  $Res call({String name, String? organization, String phoneNumber});
}

/// @nodoc
class _$BookerInfoCopyWithImpl<$Res, $Val extends BookerInfo>
    implements $BookerInfoCopyWith<$Res> {
  _$BookerInfoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of BookerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? organization = freezed,
    Object? phoneNumber = null,
  }) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            organization: freezed == organization
                ? _value.organization
                : organization // ignore: cast_nullable_to_non_nullable
                      as String?,
            phoneNumber: null == phoneNumber
                ? _value.phoneNumber
                : phoneNumber // ignore: cast_nullable_to_non_nullable
                      as String,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$BookerInfoImplCopyWith<$Res>
    implements $BookerInfoCopyWith<$Res> {
  factory _$$BookerInfoImplCopyWith(
    _$BookerInfoImpl value,
    $Res Function(_$BookerInfoImpl) then,
  ) = __$$BookerInfoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String? organization, String phoneNumber});
}

/// @nodoc
class __$$BookerInfoImplCopyWithImpl<$Res>
    extends _$BookerInfoCopyWithImpl<$Res, _$BookerInfoImpl>
    implements _$$BookerInfoImplCopyWith<$Res> {
  __$$BookerInfoImplCopyWithImpl(
    _$BookerInfoImpl _value,
    $Res Function(_$BookerInfoImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of BookerInfo
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? organization = freezed,
    Object? phoneNumber = null,
  }) {
    return _then(
      _$BookerInfoImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        organization: freezed == organization
            ? _value.organization
            : organization // ignore: cast_nullable_to_non_nullable
                  as String?,
        phoneNumber: null == phoneNumber
            ? _value.phoneNumber
            : phoneNumber // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$BookerInfoImpl implements _BookerInfo {
  const _$BookerInfoImpl({
    this.name = '',
    this.organization,
    this.phoneNumber = '',
  });

  factory _$BookerInfoImpl.fromJson(Map<String, dynamic> json) =>
      _$$BookerInfoImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  final String? organization;
  @override
  @JsonKey()
  final String phoneNumber;

  @override
  String toString() {
    return 'BookerInfo(name: $name, organization: $organization, phoneNumber: $phoneNumber)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$BookerInfoImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.organization, organization) ||
                other.organization == organization) &&
            (identical(other.phoneNumber, phoneNumber) ||
                other.phoneNumber == phoneNumber));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, organization, phoneNumber);

  /// Create a copy of BookerInfo
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$BookerInfoImplCopyWith<_$BookerInfoImpl> get copyWith =>
      __$$BookerInfoImplCopyWithImpl<_$BookerInfoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$BookerInfoImplToJson(this);
  }
}

abstract class _BookerInfo implements BookerInfo {
  const factory _BookerInfo({
    final String name,
    final String? organization,
    final String phoneNumber,
  }) = _$BookerInfoImpl;

  factory _BookerInfo.fromJson(Map<String, dynamic> json) =
      _$BookerInfoImpl.fromJson;

  @override
  String get name;
  @override
  String? get organization;
  @override
  String get phoneNumber;

  /// Create a copy of BookerInfo
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$BookerInfoImplCopyWith<_$BookerInfoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

EventLocation _$EventLocationFromJson(Map<String, dynamic> json) {
  return _EventLocation.fromJson(json);
}

/// @nodoc
mixin _$EventLocation {
  String? get address => throw _privateConstructorUsedError;
  String? get detailedAddress => throw _privateConstructorUsedError;
  String? get zonecode => throw _privateConstructorUsedError;
  String? get sido => throw _privateConstructorUsedError;
  String? get sigungu => throw _privateConstructorUsedError;

  /// Serializes this EventLocation to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $EventLocationCopyWith<EventLocation> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventLocationCopyWith<$Res> {
  factory $EventLocationCopyWith(
    EventLocation value,
    $Res Function(EventLocation) then,
  ) = _$EventLocationCopyWithImpl<$Res, EventLocation>;
  @useResult
  $Res call({
    String? address,
    String? detailedAddress,
    String? zonecode,
    String? sido,
    String? sigungu,
  });
}

/// @nodoc
class _$EventLocationCopyWithImpl<$Res, $Val extends EventLocation>
    implements $EventLocationCopyWith<$Res> {
  _$EventLocationCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? detailedAddress = freezed,
    Object? zonecode = freezed,
    Object? sido = freezed,
    Object? sigungu = freezed,
  }) {
    return _then(
      _value.copyWith(
            address: freezed == address
                ? _value.address
                : address // ignore: cast_nullable_to_non_nullable
                      as String?,
            detailedAddress: freezed == detailedAddress
                ? _value.detailedAddress
                : detailedAddress // ignore: cast_nullable_to_non_nullable
                      as String?,
            zonecode: freezed == zonecode
                ? _value.zonecode
                : zonecode // ignore: cast_nullable_to_non_nullable
                      as String?,
            sido: freezed == sido
                ? _value.sido
                : sido // ignore: cast_nullable_to_non_nullable
                      as String?,
            sigungu: freezed == sigungu
                ? _value.sigungu
                : sigungu // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$EventLocationImplCopyWith<$Res>
    implements $EventLocationCopyWith<$Res> {
  factory _$$EventLocationImplCopyWith(
    _$EventLocationImpl value,
    $Res Function(_$EventLocationImpl) then,
  ) = __$$EventLocationImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    String? address,
    String? detailedAddress,
    String? zonecode,
    String? sido,
    String? sigungu,
  });
}

/// @nodoc
class __$$EventLocationImplCopyWithImpl<$Res>
    extends _$EventLocationCopyWithImpl<$Res, _$EventLocationImpl>
    implements _$$EventLocationImplCopyWith<$Res> {
  __$$EventLocationImplCopyWithImpl(
    _$EventLocationImpl _value,
    $Res Function(_$EventLocationImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? address = freezed,
    Object? detailedAddress = freezed,
    Object? zonecode = freezed,
    Object? sido = freezed,
    Object? sigungu = freezed,
  }) {
    return _then(
      _$EventLocationImpl(
        address: freezed == address
            ? _value.address
            : address // ignore: cast_nullable_to_non_nullable
                  as String?,
        detailedAddress: freezed == detailedAddress
            ? _value.detailedAddress
            : detailedAddress // ignore: cast_nullable_to_non_nullable
                  as String?,
        zonecode: freezed == zonecode
            ? _value.zonecode
            : zonecode // ignore: cast_nullable_to_non_nullable
                  as String?,
        sido: freezed == sido
            ? _value.sido
            : sido // ignore: cast_nullable_to_non_nullable
                  as String?,
        sigungu: freezed == sigungu
            ? _value.sigungu
            : sigungu // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$EventLocationImpl extends _EventLocation {
  const _$EventLocationImpl({
    this.address,
    this.detailedAddress,
    this.zonecode,
    this.sido,
    this.sigungu,
  }) : super._();

  factory _$EventLocationImpl.fromJson(Map<String, dynamic> json) =>
      _$$EventLocationImplFromJson(json);

  @override
  final String? address;
  @override
  final String? detailedAddress;
  @override
  final String? zonecode;
  @override
  final String? sido;
  @override
  final String? sigungu;

  @override
  String toString() {
    return 'EventLocation(address: $address, detailedAddress: $detailedAddress, zonecode: $zonecode, sido: $sido, sigungu: $sigungu)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$EventLocationImpl &&
            (identical(other.address, address) || other.address == address) &&
            (identical(other.detailedAddress, detailedAddress) ||
                other.detailedAddress == detailedAddress) &&
            (identical(other.zonecode, zonecode) ||
                other.zonecode == zonecode) &&
            (identical(other.sido, sido) || other.sido == sido) &&
            (identical(other.sigungu, sigungu) || other.sigungu == sigungu));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(
    runtimeType,
    address,
    detailedAddress,
    zonecode,
    sido,
    sigungu,
  );

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$EventLocationImplCopyWith<_$EventLocationImpl> get copyWith =>
      __$$EventLocationImplCopyWithImpl<_$EventLocationImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$EventLocationImplToJson(this);
  }
}

abstract class _EventLocation extends EventLocation {
  const factory _EventLocation({
    final String? address,
    final String? detailedAddress,
    final String? zonecode,
    final String? sido,
    final String? sigungu,
  }) = _$EventLocationImpl;
  const _EventLocation._() : super._();

  factory _EventLocation.fromJson(Map<String, dynamic> json) =
      _$EventLocationImpl.fromJson;

  @override
  String? get address;
  @override
  String? get detailedAddress;
  @override
  String? get zonecode;
  @override
  String? get sido;
  @override
  String? get sigungu;

  /// Create a copy of EventLocation
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$EventLocationImplCopyWith<_$EventLocationImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

MenuSelection _$MenuSelectionFromJson(Map<String, dynamic> json) {
  return _MenuSelection.fromJson(json);
}

/// @nodoc
mixin _$MenuSelection {
  String get menuSet => throw _privateConstructorUsedError;
  int get cupCount => throw _privateConstructorUsedError;

  /// Serializes this MenuSelection to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of MenuSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $MenuSelectionCopyWith<MenuSelection> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenuSelectionCopyWith<$Res> {
  factory $MenuSelectionCopyWith(
    MenuSelection value,
    $Res Function(MenuSelection) then,
  ) = _$MenuSelectionCopyWithImpl<$Res, MenuSelection>;
  @useResult
  $Res call({String menuSet, int cupCount});
}

/// @nodoc
class _$MenuSelectionCopyWithImpl<$Res, $Val extends MenuSelection>
    implements $MenuSelectionCopyWith<$Res> {
  _$MenuSelectionCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of MenuSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? menuSet = null, Object? cupCount = null}) {
    return _then(
      _value.copyWith(
            menuSet: null == menuSet
                ? _value.menuSet
                : menuSet // ignore: cast_nullable_to_non_nullable
                      as String,
            cupCount: null == cupCount
                ? _value.cupCount
                : cupCount // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$MenuSelectionImplCopyWith<$Res>
    implements $MenuSelectionCopyWith<$Res> {
  factory _$$MenuSelectionImplCopyWith(
    _$MenuSelectionImpl value,
    $Res Function(_$MenuSelectionImpl) then,
  ) = __$$MenuSelectionImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String menuSet, int cupCount});
}

/// @nodoc
class __$$MenuSelectionImplCopyWithImpl<$Res>
    extends _$MenuSelectionCopyWithImpl<$Res, _$MenuSelectionImpl>
    implements _$$MenuSelectionImplCopyWith<$Res> {
  __$$MenuSelectionImplCopyWithImpl(
    _$MenuSelectionImpl _value,
    $Res Function(_$MenuSelectionImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of MenuSelection
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? menuSet = null, Object? cupCount = null}) {
    return _then(
      _$MenuSelectionImpl(
        menuSet: null == menuSet
            ? _value.menuSet
            : menuSet // ignore: cast_nullable_to_non_nullable
                  as String,
        cupCount: null == cupCount
            ? _value.cupCount
            : cupCount // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$MenuSelectionImpl implements _MenuSelection {
  const _$MenuSelectionImpl({this.menuSet = '', this.cupCount = 0});

  factory _$MenuSelectionImpl.fromJson(Map<String, dynamic> json) =>
      _$$MenuSelectionImplFromJson(json);

  @override
  @JsonKey()
  final String menuSet;
  @override
  @JsonKey()
  final int cupCount;

  @override
  String toString() {
    return 'MenuSelection(menuSet: $menuSet, cupCount: $cupCount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MenuSelectionImpl &&
            (identical(other.menuSet, menuSet) || other.menuSet == menuSet) &&
            (identical(other.cupCount, cupCount) ||
                other.cupCount == cupCount));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, menuSet, cupCount);

  /// Create a copy of MenuSelection
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$MenuSelectionImplCopyWith<_$MenuSelectionImpl> get copyWith =>
      __$$MenuSelectionImplCopyWithImpl<_$MenuSelectionImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MenuSelectionImplToJson(this);
  }
}

abstract class _MenuSelection implements MenuSelection {
  const factory _MenuSelection({final String menuSet, final int cupCount}) =
      _$MenuSelectionImpl;

  factory _MenuSelection.fromJson(Map<String, dynamic> json) =
      _$MenuSelectionImpl.fromJson;

  @override
  String get menuSet;
  @override
  int get cupCount;

  /// Create a copy of MenuSelection
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$MenuSelectionImplCopyWith<_$MenuSelectionImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Dessert _$DessertFromJson(Map<String, dynamic> json) {
  return _Dessert.fromJson(json);
}

/// @nodoc
mixin _$Dessert {
  String get name => throw _privateConstructorUsedError;
  int get quantity => throw _privateConstructorUsedError;

  /// Serializes this Dessert to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of Dessert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $DessertCopyWith<Dessert> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DessertCopyWith<$Res> {
  factory $DessertCopyWith(Dessert value, $Res Function(Dessert) then) =
      _$DessertCopyWithImpl<$Res, Dessert>;
  @useResult
  $Res call({String name, int quantity});
}

/// @nodoc
class _$DessertCopyWithImpl<$Res, $Val extends Dessert>
    implements $DessertCopyWith<$Res> {
  _$DessertCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Dessert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? quantity = null}) {
    return _then(
      _value.copyWith(
            name: null == name
                ? _value.name
                : name // ignore: cast_nullable_to_non_nullable
                      as String,
            quantity: null == quantity
                ? _value.quantity
                : quantity // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$DessertImplCopyWith<$Res> implements $DessertCopyWith<$Res> {
  factory _$$DessertImplCopyWith(
    _$DessertImpl value,
    $Res Function(_$DessertImpl) then,
  ) = __$$DessertImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, int quantity});
}

/// @nodoc
class __$$DessertImplCopyWithImpl<$Res>
    extends _$DessertCopyWithImpl<$Res, _$DessertImpl>
    implements _$$DessertImplCopyWith<$Res> {
  __$$DessertImplCopyWithImpl(
    _$DessertImpl _value,
    $Res Function(_$DessertImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of Dessert
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? name = null, Object? quantity = null}) {
    return _then(
      _$DessertImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        quantity: null == quantity
            ? _value.quantity
            : quantity // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$DessertImpl extends _Dessert {
  const _$DessertImpl({this.name = '', this.quantity = 0}) : super._();

  factory _$DessertImpl.fromJson(Map<String, dynamic> json) =>
      _$$DessertImplFromJson(json);

  @override
  @JsonKey()
  final String name;
  @override
  @JsonKey()
  final int quantity;

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$DessertImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.quantity, quantity) ||
                other.quantity == quantity));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, name, quantity);

  /// Create a copy of Dessert
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$DessertImplCopyWith<_$DessertImpl> get copyWith =>
      __$$DessertImplCopyWithImpl<_$DessertImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$DessertImplToJson(this);
  }
}

abstract class _Dessert extends Dessert {
  const factory _Dessert({final String name, final int quantity}) =
      _$DessertImpl;
  const _Dessert._() : super._();

  factory _Dessert.fromJson(Map<String, dynamic> json) = _$DessertImpl.fromJson;

  @override
  String get name;
  @override
  int get quantity;

  /// Create a copy of Dessert
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$DessertImplCopyWith<_$DessertImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

CateringInquiry _$CateringInquiryFromJson(Map<String, dynamic> json) {
  return _CateringInquiry.fromJson(json);
}

/// @nodoc
mixin _$CateringInquiry {
  int get id => throw _privateConstructorUsedError;
  String? get fromEventDatetime => throw _privateConstructorUsedError;
  String? get toEventDatetime => throw _privateConstructorUsedError;
  String get celebrityName => throw _privateConstructorUsedError;
  BookerInfo get bookerInfo => throw _privateConstructorUsedError;
  EventLocation get eventLocation => throw _privateConstructorUsedError;
  MenuSelection get menuSelection => throw _privateConstructorUsedError;
  List<Dessert> get desserts => throw _privateConstructorUsedError;
  String get electricPowerSupport => throw _privateConstructorUsedError;
  String get referralSource => throw _privateConstructorUsedError;
  String get truckType => throw _privateConstructorUsedError;
  String? get additionalRequests => throw _privateConstructorUsedError;
  String? get regDateTime => throw _privateConstructorUsedError;
  String? get modDateTime => throw _privateConstructorUsedError;
  String get inquiryState => throw _privateConstructorUsedError;
  String get inquiryStateDescription => throw _privateConstructorUsedError;
  String? get confirmDateTime => throw _privateConstructorUsedError;
  String? get completedDateTime => throw _privateConstructorUsedError;
  String? get deletedDateTime => throw _privateConstructorUsedError;

  /// Serializes this CateringInquiry to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CateringInquiryCopyWith<CateringInquiry> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CateringInquiryCopyWith<$Res> {
  factory $CateringInquiryCopyWith(
    CateringInquiry value,
    $Res Function(CateringInquiry) then,
  ) = _$CateringInquiryCopyWithImpl<$Res, CateringInquiry>;
  @useResult
  $Res call({
    int id,
    String? fromEventDatetime,
    String? toEventDatetime,
    String celebrityName,
    BookerInfo bookerInfo,
    EventLocation eventLocation,
    MenuSelection menuSelection,
    List<Dessert> desserts,
    String electricPowerSupport,
    String referralSource,
    String truckType,
    String? additionalRequests,
    String? regDateTime,
    String? modDateTime,
    String inquiryState,
    String inquiryStateDescription,
    String? confirmDateTime,
    String? completedDateTime,
    String? deletedDateTime,
  });

  $BookerInfoCopyWith<$Res> get bookerInfo;
  $EventLocationCopyWith<$Res> get eventLocation;
  $MenuSelectionCopyWith<$Res> get menuSelection;
}

/// @nodoc
class _$CateringInquiryCopyWithImpl<$Res, $Val extends CateringInquiry>
    implements $CateringInquiryCopyWith<$Res> {
  _$CateringInquiryCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromEventDatetime = freezed,
    Object? toEventDatetime = freezed,
    Object? celebrityName = null,
    Object? bookerInfo = null,
    Object? eventLocation = null,
    Object? menuSelection = null,
    Object? desserts = null,
    Object? electricPowerSupport = null,
    Object? referralSource = null,
    Object? truckType = null,
    Object? additionalRequests = freezed,
    Object? regDateTime = freezed,
    Object? modDateTime = freezed,
    Object? inquiryState = null,
    Object? inquiryStateDescription = null,
    Object? confirmDateTime = freezed,
    Object? completedDateTime = freezed,
    Object? deletedDateTime = freezed,
  }) {
    return _then(
      _value.copyWith(
            id: null == id
                ? _value.id
                : id // ignore: cast_nullable_to_non_nullable
                      as int,
            fromEventDatetime: freezed == fromEventDatetime
                ? _value.fromEventDatetime
                : fromEventDatetime // ignore: cast_nullable_to_non_nullable
                      as String?,
            toEventDatetime: freezed == toEventDatetime
                ? _value.toEventDatetime
                : toEventDatetime // ignore: cast_nullable_to_non_nullable
                      as String?,
            celebrityName: null == celebrityName
                ? _value.celebrityName
                : celebrityName // ignore: cast_nullable_to_non_nullable
                      as String,
            bookerInfo: null == bookerInfo
                ? _value.bookerInfo
                : bookerInfo // ignore: cast_nullable_to_non_nullable
                      as BookerInfo,
            eventLocation: null == eventLocation
                ? _value.eventLocation
                : eventLocation // ignore: cast_nullable_to_non_nullable
                      as EventLocation,
            menuSelection: null == menuSelection
                ? _value.menuSelection
                : menuSelection // ignore: cast_nullable_to_non_nullable
                      as MenuSelection,
            desserts: null == desserts
                ? _value.desserts
                : desserts // ignore: cast_nullable_to_non_nullable
                      as List<Dessert>,
            electricPowerSupport: null == electricPowerSupport
                ? _value.electricPowerSupport
                : electricPowerSupport // ignore: cast_nullable_to_non_nullable
                      as String,
            referralSource: null == referralSource
                ? _value.referralSource
                : referralSource // ignore: cast_nullable_to_non_nullable
                      as String,
            truckType: null == truckType
                ? _value.truckType
                : truckType // ignore: cast_nullable_to_non_nullable
                      as String,
            additionalRequests: freezed == additionalRequests
                ? _value.additionalRequests
                : additionalRequests // ignore: cast_nullable_to_non_nullable
                      as String?,
            regDateTime: freezed == regDateTime
                ? _value.regDateTime
                : regDateTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            modDateTime: freezed == modDateTime
                ? _value.modDateTime
                : modDateTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            inquiryState: null == inquiryState
                ? _value.inquiryState
                : inquiryState // ignore: cast_nullable_to_non_nullable
                      as String,
            inquiryStateDescription: null == inquiryStateDescription
                ? _value.inquiryStateDescription
                : inquiryStateDescription // ignore: cast_nullable_to_non_nullable
                      as String,
            confirmDateTime: freezed == confirmDateTime
                ? _value.confirmDateTime
                : confirmDateTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            completedDateTime: freezed == completedDateTime
                ? _value.completedDateTime
                : completedDateTime // ignore: cast_nullable_to_non_nullable
                      as String?,
            deletedDateTime: freezed == deletedDateTime
                ? _value.deletedDateTime
                : deletedDateTime // ignore: cast_nullable_to_non_nullable
                      as String?,
          )
          as $Val,
    );
  }

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $BookerInfoCopyWith<$Res> get bookerInfo {
    return $BookerInfoCopyWith<$Res>(_value.bookerInfo, (value) {
      return _then(_value.copyWith(bookerInfo: value) as $Val);
    });
  }

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $EventLocationCopyWith<$Res> get eventLocation {
    return $EventLocationCopyWith<$Res>(_value.eventLocation, (value) {
      return _then(_value.copyWith(eventLocation: value) as $Val);
    });
  }

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $MenuSelectionCopyWith<$Res> get menuSelection {
    return $MenuSelectionCopyWith<$Res>(_value.menuSelection, (value) {
      return _then(_value.copyWith(menuSelection: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$CateringInquiryImplCopyWith<$Res>
    implements $CateringInquiryCopyWith<$Res> {
  factory _$$CateringInquiryImplCopyWith(
    _$CateringInquiryImpl value,
    $Res Function(_$CateringInquiryImpl) then,
  ) = __$$CateringInquiryImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({
    int id,
    String? fromEventDatetime,
    String? toEventDatetime,
    String celebrityName,
    BookerInfo bookerInfo,
    EventLocation eventLocation,
    MenuSelection menuSelection,
    List<Dessert> desserts,
    String electricPowerSupport,
    String referralSource,
    String truckType,
    String? additionalRequests,
    String? regDateTime,
    String? modDateTime,
    String inquiryState,
    String inquiryStateDescription,
    String? confirmDateTime,
    String? completedDateTime,
    String? deletedDateTime,
  });

  @override
  $BookerInfoCopyWith<$Res> get bookerInfo;
  @override
  $EventLocationCopyWith<$Res> get eventLocation;
  @override
  $MenuSelectionCopyWith<$Res> get menuSelection;
}

/// @nodoc
class __$$CateringInquiryImplCopyWithImpl<$Res>
    extends _$CateringInquiryCopyWithImpl<$Res, _$CateringInquiryImpl>
    implements _$$CateringInquiryImplCopyWith<$Res> {
  __$$CateringInquiryImplCopyWithImpl(
    _$CateringInquiryImpl _value,
    $Res Function(_$CateringInquiryImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? fromEventDatetime = freezed,
    Object? toEventDatetime = freezed,
    Object? celebrityName = null,
    Object? bookerInfo = null,
    Object? eventLocation = null,
    Object? menuSelection = null,
    Object? desserts = null,
    Object? electricPowerSupport = null,
    Object? referralSource = null,
    Object? truckType = null,
    Object? additionalRequests = freezed,
    Object? regDateTime = freezed,
    Object? modDateTime = freezed,
    Object? inquiryState = null,
    Object? inquiryStateDescription = null,
    Object? confirmDateTime = freezed,
    Object? completedDateTime = freezed,
    Object? deletedDateTime = freezed,
  }) {
    return _then(
      _$CateringInquiryImpl(
        id: null == id
            ? _value.id
            : id // ignore: cast_nullable_to_non_nullable
                  as int,
        fromEventDatetime: freezed == fromEventDatetime
            ? _value.fromEventDatetime
            : fromEventDatetime // ignore: cast_nullable_to_non_nullable
                  as String?,
        toEventDatetime: freezed == toEventDatetime
            ? _value.toEventDatetime
            : toEventDatetime // ignore: cast_nullable_to_non_nullable
                  as String?,
        celebrityName: null == celebrityName
            ? _value.celebrityName
            : celebrityName // ignore: cast_nullable_to_non_nullable
                  as String,
        bookerInfo: null == bookerInfo
            ? _value.bookerInfo
            : bookerInfo // ignore: cast_nullable_to_non_nullable
                  as BookerInfo,
        eventLocation: null == eventLocation
            ? _value.eventLocation
            : eventLocation // ignore: cast_nullable_to_non_nullable
                  as EventLocation,
        menuSelection: null == menuSelection
            ? _value.menuSelection
            : menuSelection // ignore: cast_nullable_to_non_nullable
                  as MenuSelection,
        desserts: null == desserts
            ? _value._desserts
            : desserts // ignore: cast_nullable_to_non_nullable
                  as List<Dessert>,
        electricPowerSupport: null == electricPowerSupport
            ? _value.electricPowerSupport
            : electricPowerSupport // ignore: cast_nullable_to_non_nullable
                  as String,
        referralSource: null == referralSource
            ? _value.referralSource
            : referralSource // ignore: cast_nullable_to_non_nullable
                  as String,
        truckType: null == truckType
            ? _value.truckType
            : truckType // ignore: cast_nullable_to_non_nullable
                  as String,
        additionalRequests: freezed == additionalRequests
            ? _value.additionalRequests
            : additionalRequests // ignore: cast_nullable_to_non_nullable
                  as String?,
        regDateTime: freezed == regDateTime
            ? _value.regDateTime
            : regDateTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        modDateTime: freezed == modDateTime
            ? _value.modDateTime
            : modDateTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        inquiryState: null == inquiryState
            ? _value.inquiryState
            : inquiryState // ignore: cast_nullable_to_non_nullable
                  as String,
        inquiryStateDescription: null == inquiryStateDescription
            ? _value.inquiryStateDescription
            : inquiryStateDescription // ignore: cast_nullable_to_non_nullable
                  as String,
        confirmDateTime: freezed == confirmDateTime
            ? _value.confirmDateTime
            : confirmDateTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        completedDateTime: freezed == completedDateTime
            ? _value.completedDateTime
            : completedDateTime // ignore: cast_nullable_to_non_nullable
                  as String?,
        deletedDateTime: freezed == deletedDateTime
            ? _value.deletedDateTime
            : deletedDateTime // ignore: cast_nullable_to_non_nullable
                  as String?,
      ),
    );
  }
}

/// @nodoc
@JsonSerializable()
class _$CateringInquiryImpl extends _CateringInquiry {
  const _$CateringInquiryImpl({
    this.id = 0,
    this.fromEventDatetime,
    this.toEventDatetime,
    this.celebrityName = '',
    this.bookerInfo = const BookerInfo(),
    this.eventLocation = const EventLocation(),
    this.menuSelection = const MenuSelection(),
    final List<Dessert> desserts = const [],
    this.electricPowerSupport = '',
    this.referralSource = '',
    this.truckType = '',
    this.additionalRequests,
    this.regDateTime,
    this.modDateTime,
    this.inquiryState = '',
    this.inquiryStateDescription = '',
    this.confirmDateTime,
    this.completedDateTime,
    this.deletedDateTime,
  }) : _desserts = desserts,
       super._();

  factory _$CateringInquiryImpl.fromJson(Map<String, dynamic> json) =>
      _$$CateringInquiryImplFromJson(json);

  @override
  @JsonKey()
  final int id;
  @override
  final String? fromEventDatetime;
  @override
  final String? toEventDatetime;
  @override
  @JsonKey()
  final String celebrityName;
  @override
  @JsonKey()
  final BookerInfo bookerInfo;
  @override
  @JsonKey()
  final EventLocation eventLocation;
  @override
  @JsonKey()
  final MenuSelection menuSelection;
  final List<Dessert> _desserts;
  @override
  @JsonKey()
  List<Dessert> get desserts {
    if (_desserts is EqualUnmodifiableListView) return _desserts;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_desserts);
  }

  @override
  @JsonKey()
  final String electricPowerSupport;
  @override
  @JsonKey()
  final String referralSource;
  @override
  @JsonKey()
  final String truckType;
  @override
  final String? additionalRequests;
  @override
  final String? regDateTime;
  @override
  final String? modDateTime;
  @override
  @JsonKey()
  final String inquiryState;
  @override
  @JsonKey()
  final String inquiryStateDescription;
  @override
  final String? confirmDateTime;
  @override
  final String? completedDateTime;
  @override
  final String? deletedDateTime;

  @override
  String toString() {
    return 'CateringInquiry(id: $id, fromEventDatetime: $fromEventDatetime, toEventDatetime: $toEventDatetime, celebrityName: $celebrityName, bookerInfo: $bookerInfo, eventLocation: $eventLocation, menuSelection: $menuSelection, desserts: $desserts, electricPowerSupport: $electricPowerSupport, referralSource: $referralSource, truckType: $truckType, additionalRequests: $additionalRequests, regDateTime: $regDateTime, modDateTime: $modDateTime, inquiryState: $inquiryState, inquiryStateDescription: $inquiryStateDescription, confirmDateTime: $confirmDateTime, completedDateTime: $completedDateTime, deletedDateTime: $deletedDateTime)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CateringInquiryImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.fromEventDatetime, fromEventDatetime) ||
                other.fromEventDatetime == fromEventDatetime) &&
            (identical(other.toEventDatetime, toEventDatetime) ||
                other.toEventDatetime == toEventDatetime) &&
            (identical(other.celebrityName, celebrityName) ||
                other.celebrityName == celebrityName) &&
            (identical(other.bookerInfo, bookerInfo) ||
                other.bookerInfo == bookerInfo) &&
            (identical(other.eventLocation, eventLocation) ||
                other.eventLocation == eventLocation) &&
            (identical(other.menuSelection, menuSelection) ||
                other.menuSelection == menuSelection) &&
            const DeepCollectionEquality().equals(other._desserts, _desserts) &&
            (identical(other.electricPowerSupport, electricPowerSupport) ||
                other.electricPowerSupport == electricPowerSupport) &&
            (identical(other.referralSource, referralSource) ||
                other.referralSource == referralSource) &&
            (identical(other.truckType, truckType) ||
                other.truckType == truckType) &&
            (identical(other.additionalRequests, additionalRequests) ||
                other.additionalRequests == additionalRequests) &&
            (identical(other.regDateTime, regDateTime) ||
                other.regDateTime == regDateTime) &&
            (identical(other.modDateTime, modDateTime) ||
                other.modDateTime == modDateTime) &&
            (identical(other.inquiryState, inquiryState) ||
                other.inquiryState == inquiryState) &&
            (identical(
                  other.inquiryStateDescription,
                  inquiryStateDescription,
                ) ||
                other.inquiryStateDescription == inquiryStateDescription) &&
            (identical(other.confirmDateTime, confirmDateTime) ||
                other.confirmDateTime == confirmDateTime) &&
            (identical(other.completedDateTime, completedDateTime) ||
                other.completedDateTime == completedDateTime) &&
            (identical(other.deletedDateTime, deletedDateTime) ||
                other.deletedDateTime == deletedDateTime));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
    runtimeType,
    id,
    fromEventDatetime,
    toEventDatetime,
    celebrityName,
    bookerInfo,
    eventLocation,
    menuSelection,
    const DeepCollectionEquality().hash(_desserts),
    electricPowerSupport,
    referralSource,
    truckType,
    additionalRequests,
    regDateTime,
    modDateTime,
    inquiryState,
    inquiryStateDescription,
    confirmDateTime,
    completedDateTime,
    deletedDateTime,
  ]);

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CateringInquiryImplCopyWith<_$CateringInquiryImpl> get copyWith =>
      __$$CateringInquiryImplCopyWithImpl<_$CateringInquiryImpl>(
        this,
        _$identity,
      );

  @override
  Map<String, dynamic> toJson() {
    return _$$CateringInquiryImplToJson(this);
  }
}

abstract class _CateringInquiry extends CateringInquiry {
  const factory _CateringInquiry({
    final int id,
    final String? fromEventDatetime,
    final String? toEventDatetime,
    final String celebrityName,
    final BookerInfo bookerInfo,
    final EventLocation eventLocation,
    final MenuSelection menuSelection,
    final List<Dessert> desserts,
    final String electricPowerSupport,
    final String referralSource,
    final String truckType,
    final String? additionalRequests,
    final String? regDateTime,
    final String? modDateTime,
    final String inquiryState,
    final String inquiryStateDescription,
    final String? confirmDateTime,
    final String? completedDateTime,
    final String? deletedDateTime,
  }) = _$CateringInquiryImpl;
  const _CateringInquiry._() : super._();

  factory _CateringInquiry.fromJson(Map<String, dynamic> json) =
      _$CateringInquiryImpl.fromJson;

  @override
  int get id;
  @override
  String? get fromEventDatetime;
  @override
  String? get toEventDatetime;
  @override
  String get celebrityName;
  @override
  BookerInfo get bookerInfo;
  @override
  EventLocation get eventLocation;
  @override
  MenuSelection get menuSelection;
  @override
  List<Dessert> get desserts;
  @override
  String get electricPowerSupport;
  @override
  String get referralSource;
  @override
  String get truckType;
  @override
  String? get additionalRequests;
  @override
  String? get regDateTime;
  @override
  String? get modDateTime;
  @override
  String get inquiryState;
  @override
  String get inquiryStateDescription;
  @override
  String? get confirmDateTime;
  @override
  String? get completedDateTime;
  @override
  String? get deletedDateTime;

  /// Create a copy of CateringInquiry
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CateringInquiryImplCopyWith<_$CateringInquiryImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$PagedResponse<T> {
  List<T> get content => throw _privateConstructorUsedError;
  int get pageNumber => throw _privateConstructorUsedError;
  int get pageSize => throw _privateConstructorUsedError;
  int get totalElements => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  bool get isFirst => throw _privateConstructorUsedError;
  bool get isLast => throw _privateConstructorUsedError;
  bool get hasNext => throw _privateConstructorUsedError;
  bool get hasPrevious => throw _privateConstructorUsedError;

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $PagedResponseCopyWith<T, PagedResponse<T>> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PagedResponseCopyWith<T, $Res> {
  factory $PagedResponseCopyWith(
    PagedResponse<T> value,
    $Res Function(PagedResponse<T>) then,
  ) = _$PagedResponseCopyWithImpl<T, $Res, PagedResponse<T>>;
  @useResult
  $Res call({
    List<T> content,
    int pageNumber,
    int pageSize,
    int totalElements,
    int totalPages,
    bool isFirst,
    bool isLast,
    bool hasNext,
    bool hasPrevious,
  });
}

/// @nodoc
class _$PagedResponseCopyWithImpl<T, $Res, $Val extends PagedResponse<T>>
    implements $PagedResponseCopyWith<T, $Res> {
  _$PagedResponseCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? isFirst = null,
    Object? isLast = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
  }) {
    return _then(
      _value.copyWith(
            content: null == content
                ? _value.content
                : content // ignore: cast_nullable_to_non_nullable
                      as List<T>,
            pageNumber: null == pageNumber
                ? _value.pageNumber
                : pageNumber // ignore: cast_nullable_to_non_nullable
                      as int,
            pageSize: null == pageSize
                ? _value.pageSize
                : pageSize // ignore: cast_nullable_to_non_nullable
                      as int,
            totalElements: null == totalElements
                ? _value.totalElements
                : totalElements // ignore: cast_nullable_to_non_nullable
                      as int,
            totalPages: null == totalPages
                ? _value.totalPages
                : totalPages // ignore: cast_nullable_to_non_nullable
                      as int,
            isFirst: null == isFirst
                ? _value.isFirst
                : isFirst // ignore: cast_nullable_to_non_nullable
                      as bool,
            isLast: null == isLast
                ? _value.isLast
                : isLast // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasNext: null == hasNext
                ? _value.hasNext
                : hasNext // ignore: cast_nullable_to_non_nullable
                      as bool,
            hasPrevious: null == hasPrevious
                ? _value.hasPrevious
                : hasPrevious // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$PagedResponseImplCopyWith<T, $Res>
    implements $PagedResponseCopyWith<T, $Res> {
  factory _$$PagedResponseImplCopyWith(
    _$PagedResponseImpl<T> value,
    $Res Function(_$PagedResponseImpl<T>) then,
  ) = __$$PagedResponseImplCopyWithImpl<T, $Res>;
  @override
  @useResult
  $Res call({
    List<T> content,
    int pageNumber,
    int pageSize,
    int totalElements,
    int totalPages,
    bool isFirst,
    bool isLast,
    bool hasNext,
    bool hasPrevious,
  });
}

/// @nodoc
class __$$PagedResponseImplCopyWithImpl<T, $Res>
    extends _$PagedResponseCopyWithImpl<T, $Res, _$PagedResponseImpl<T>>
    implements _$$PagedResponseImplCopyWith<T, $Res> {
  __$$PagedResponseImplCopyWithImpl(
    _$PagedResponseImpl<T> _value,
    $Res Function(_$PagedResponseImpl<T>) _then,
  ) : super(_value, _then);

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? content = null,
    Object? pageNumber = null,
    Object? pageSize = null,
    Object? totalElements = null,
    Object? totalPages = null,
    Object? isFirst = null,
    Object? isLast = null,
    Object? hasNext = null,
    Object? hasPrevious = null,
  }) {
    return _then(
      _$PagedResponseImpl<T>(
        content: null == content
            ? _value._content
            : content // ignore: cast_nullable_to_non_nullable
                  as List<T>,
        pageNumber: null == pageNumber
            ? _value.pageNumber
            : pageNumber // ignore: cast_nullable_to_non_nullable
                  as int,
        pageSize: null == pageSize
            ? _value.pageSize
            : pageSize // ignore: cast_nullable_to_non_nullable
                  as int,
        totalElements: null == totalElements
            ? _value.totalElements
            : totalElements // ignore: cast_nullable_to_non_nullable
                  as int,
        totalPages: null == totalPages
            ? _value.totalPages
            : totalPages // ignore: cast_nullable_to_non_nullable
                  as int,
        isFirst: null == isFirst
            ? _value.isFirst
            : isFirst // ignore: cast_nullable_to_non_nullable
                  as bool,
        isLast: null == isLast
            ? _value.isLast
            : isLast // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasNext: null == hasNext
            ? _value.hasNext
            : hasNext // ignore: cast_nullable_to_non_nullable
                  as bool,
        hasPrevious: null == hasPrevious
            ? _value.hasPrevious
            : hasPrevious // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$PagedResponseImpl<T> implements _PagedResponse<T> {
  const _$PagedResponseImpl({
    required final List<T> content,
    this.pageNumber = 0,
    this.pageSize = 20,
    this.totalElements = 0,
    this.totalPages = 0,
    this.isFirst = true,
    this.isLast = true,
    this.hasNext = false,
    this.hasPrevious = false,
  }) : _content = content;

  final List<T> _content;
  @override
  List<T> get content {
    if (_content is EqualUnmodifiableListView) return _content;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_content);
  }

  @override
  @JsonKey()
  final int pageNumber;
  @override
  @JsonKey()
  final int pageSize;
  @override
  @JsonKey()
  final int totalElements;
  @override
  @JsonKey()
  final int totalPages;
  @override
  @JsonKey()
  final bool isFirst;
  @override
  @JsonKey()
  final bool isLast;
  @override
  @JsonKey()
  final bool hasNext;
  @override
  @JsonKey()
  final bool hasPrevious;

  @override
  String toString() {
    return 'PagedResponse<$T>(content: $content, pageNumber: $pageNumber, pageSize: $pageSize, totalElements: $totalElements, totalPages: $totalPages, isFirst: $isFirst, isLast: $isLast, hasNext: $hasNext, hasPrevious: $hasPrevious)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PagedResponseImpl<T> &&
            const DeepCollectionEquality().equals(other._content, _content) &&
            (identical(other.pageNumber, pageNumber) ||
                other.pageNumber == pageNumber) &&
            (identical(other.pageSize, pageSize) ||
                other.pageSize == pageSize) &&
            (identical(other.totalElements, totalElements) ||
                other.totalElements == totalElements) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.isFirst, isFirst) || other.isFirst == isFirst) &&
            (identical(other.isLast, isLast) || other.isLast == isLast) &&
            (identical(other.hasNext, hasNext) || other.hasNext == hasNext) &&
            (identical(other.hasPrevious, hasPrevious) ||
                other.hasPrevious == hasPrevious));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_content),
    pageNumber,
    pageSize,
    totalElements,
    totalPages,
    isFirst,
    isLast,
    hasNext,
    hasPrevious,
  );

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PagedResponseImplCopyWith<T, _$PagedResponseImpl<T>> get copyWith =>
      __$$PagedResponseImplCopyWithImpl<T, _$PagedResponseImpl<T>>(
        this,
        _$identity,
      );
}

abstract class _PagedResponse<T> implements PagedResponse<T> {
  const factory _PagedResponse({
    required final List<T> content,
    final int pageNumber,
    final int pageSize,
    final int totalElements,
    final int totalPages,
    final bool isFirst,
    final bool isLast,
    final bool hasNext,
    final bool hasPrevious,
  }) = _$PagedResponseImpl<T>;

  @override
  List<T> get content;
  @override
  int get pageNumber;
  @override
  int get pageSize;
  @override
  int get totalElements;
  @override
  int get totalPages;
  @override
  bool get isFirst;
  @override
  bool get isLast;
  @override
  bool get hasNext;
  @override
  bool get hasPrevious;

  /// Create a copy of PagedResponse
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PagedResponseImplCopyWith<T, _$PagedResponseImpl<T>> get copyWith =>
      throw _privateConstructorUsedError;
}
