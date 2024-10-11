// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'currency.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

Currency _$CurrencyFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'usd':
      return USD.fromJson(json);
    case 'eur':
      return EUR.fromJson(json);
    case 'gbp':
      return GBP.fromJson(json);
    case 'jpy':
      return JPY.fromJson(json);
    case 'aud':
      return AUD.fromJson(json);
    case 'cad':
      return CAD.fromJson(json);
    case 'inr':
      return INR.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'Currency',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
mixin _$Currency {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Serializes this Currency to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CurrencyCopyWith<$Res> {
  factory $CurrencyCopyWith(Currency value, $Res Function(Currency) then) =
      _$CurrencyCopyWithImpl<$Res, Currency>;
}

/// @nodoc
class _$CurrencyCopyWithImpl<$Res, $Val extends Currency>
    implements $CurrencyCopyWith<$Res> {
  _$CurrencyCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$USDImplCopyWith<$Res> {
  factory _$$USDImplCopyWith(_$USDImpl value, $Res Function(_$USDImpl) then) =
      __$$USDImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$USDImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$USDImpl>
    implements _$$USDImplCopyWith<$Res> {
  __$$USDImplCopyWithImpl(_$USDImpl _value, $Res Function(_$USDImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$USDImpl extends USD {
  const _$USDImpl({final String? $type})
      : $type = $type ?? 'usd',
        super._();

  factory _$USDImpl.fromJson(Map<String, dynamic> json) =>
      _$$USDImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.usd()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$USDImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return usd();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return usd?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (usd != null) {
      return usd();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return usd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return usd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (usd != null) {
      return usd(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$USDImplToJson(
      this,
    );
  }
}

abstract class USD extends Currency {
  const factory USD() = _$USDImpl;
  const USD._() : super._();

  factory USD.fromJson(Map<String, dynamic> json) = _$USDImpl.fromJson;
}

/// @nodoc
abstract class _$$EURImplCopyWith<$Res> {
  factory _$$EURImplCopyWith(_$EURImpl value, $Res Function(_$EURImpl) then) =
      __$$EURImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EURImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$EURImpl>
    implements _$$EURImplCopyWith<$Res> {
  __$$EURImplCopyWithImpl(_$EURImpl _value, $Res Function(_$EURImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EURImpl extends EUR {
  const _$EURImpl({final String? $type})
      : $type = $type ?? 'eur',
        super._();

  factory _$EURImpl.fromJson(Map<String, dynamic> json) =>
      _$$EURImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.eur()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EURImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return eur();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return eur?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (eur != null) {
      return eur();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return eur(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return eur?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (eur != null) {
      return eur(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EURImplToJson(
      this,
    );
  }
}

abstract class EUR extends Currency {
  const factory EUR() = _$EURImpl;
  const EUR._() : super._();

  factory EUR.fromJson(Map<String, dynamic> json) = _$EURImpl.fromJson;
}

/// @nodoc
abstract class _$$GBPImplCopyWith<$Res> {
  factory _$$GBPImplCopyWith(_$GBPImpl value, $Res Function(_$GBPImpl) then) =
      __$$GBPImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GBPImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$GBPImpl>
    implements _$$GBPImplCopyWith<$Res> {
  __$$GBPImplCopyWithImpl(_$GBPImpl _value, $Res Function(_$GBPImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GBPImpl extends GBP {
  const _$GBPImpl({final String? $type})
      : $type = $type ?? 'gbp',
        super._();

  factory _$GBPImpl.fromJson(Map<String, dynamic> json) =>
      _$$GBPImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.gbp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GBPImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return gbp();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return gbp?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (gbp != null) {
      return gbp();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return gbp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return gbp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (gbp != null) {
      return gbp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GBPImplToJson(
      this,
    );
  }
}

abstract class GBP extends Currency {
  const factory GBP() = _$GBPImpl;
  const GBP._() : super._();

  factory GBP.fromJson(Map<String, dynamic> json) = _$GBPImpl.fromJson;
}

/// @nodoc
abstract class _$$JPYImplCopyWith<$Res> {
  factory _$$JPYImplCopyWith(_$JPYImpl value, $Res Function(_$JPYImpl) then) =
      __$$JPYImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JPYImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$JPYImpl>
    implements _$$JPYImplCopyWith<$Res> {
  __$$JPYImplCopyWithImpl(_$JPYImpl _value, $Res Function(_$JPYImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$JPYImpl extends JPY {
  const _$JPYImpl({final String? $type})
      : $type = $type ?? 'jpy',
        super._();

  factory _$JPYImpl.fromJson(Map<String, dynamic> json) =>
      _$$JPYImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.jpy()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JPYImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return jpy();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return jpy?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (jpy != null) {
      return jpy();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return jpy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return jpy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (jpy != null) {
      return jpy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JPYImplToJson(
      this,
    );
  }
}

abstract class JPY extends Currency {
  const factory JPY() = _$JPYImpl;
  const JPY._() : super._();

  factory JPY.fromJson(Map<String, dynamic> json) = _$JPYImpl.fromJson;
}

/// @nodoc
abstract class _$$AUDImplCopyWith<$Res> {
  factory _$$AUDImplCopyWith(_$AUDImpl value, $Res Function(_$AUDImpl) then) =
      __$$AUDImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AUDImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$AUDImpl>
    implements _$$AUDImplCopyWith<$Res> {
  __$$AUDImplCopyWithImpl(_$AUDImpl _value, $Res Function(_$AUDImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AUDImpl extends AUD {
  const _$AUDImpl({final String? $type})
      : $type = $type ?? 'aud',
        super._();

  factory _$AUDImpl.fromJson(Map<String, dynamic> json) =>
      _$$AUDImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.aud()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AUDImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return aud();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return aud?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (aud != null) {
      return aud();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return aud(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return aud?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (aud != null) {
      return aud(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AUDImplToJson(
      this,
    );
  }
}

abstract class AUD extends Currency {
  const factory AUD() = _$AUDImpl;
  const AUD._() : super._();

  factory AUD.fromJson(Map<String, dynamic> json) = _$AUDImpl.fromJson;
}

/// @nodoc
abstract class _$$CADImplCopyWith<$Res> {
  factory _$$CADImplCopyWith(_$CADImpl value, $Res Function(_$CADImpl) then) =
      __$$CADImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CADImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CADImpl>
    implements _$$CADImplCopyWith<$Res> {
  __$$CADImplCopyWithImpl(_$CADImpl _value, $Res Function(_$CADImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CADImpl extends CAD {
  const _$CADImpl({final String? $type})
      : $type = $type ?? 'cad',
        super._();

  factory _$CADImpl.fromJson(Map<String, dynamic> json) =>
      _$$CADImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.cad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CADImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return cad();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return cad?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (cad != null) {
      return cad();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return cad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return cad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (cad != null) {
      return cad(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CADImplToJson(
      this,
    );
  }
}

abstract class CAD extends Currency {
  const factory CAD() = _$CADImpl;
  const CAD._() : super._();

  factory CAD.fromJson(Map<String, dynamic> json) = _$CADImpl.fromJson;
}

/// @nodoc
abstract class _$$INRImplCopyWith<$Res> {
  factory _$$INRImplCopyWith(_$INRImpl value, $Res Function(_$INRImpl) then) =
      __$$INRImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$INRImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$INRImpl>
    implements _$$INRImplCopyWith<$Res> {
  __$$INRImplCopyWithImpl(_$INRImpl _value, $Res Function(_$INRImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$INRImpl extends INR {
  const _$INRImpl({final String? $type})
      : $type = $type ?? 'inr',
        super._();

  factory _$INRImpl.fromJson(Map<String, dynamic> json) =>
      _$$INRImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.inr()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$INRImpl);
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() usd,
    required TResult Function() eur,
    required TResult Function() gbp,
    required TResult Function() jpy,
    required TResult Function() aud,
    required TResult Function() cad,
    required TResult Function() inr,
  }) {
    return inr();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? usd,
    TResult? Function()? eur,
    TResult? Function()? gbp,
    TResult? Function()? jpy,
    TResult? Function()? aud,
    TResult? Function()? cad,
    TResult? Function()? inr,
  }) {
    return inr?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? usd,
    TResult Function()? eur,
    TResult Function()? gbp,
    TResult Function()? jpy,
    TResult Function()? aud,
    TResult Function()? cad,
    TResult Function()? inr,
    required TResult orElse(),
  }) {
    if (inr != null) {
      return inr();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(USD value) usd,
    required TResult Function(EUR value) eur,
    required TResult Function(GBP value) gbp,
    required TResult Function(JPY value) jpy,
    required TResult Function(AUD value) aud,
    required TResult Function(CAD value) cad,
    required TResult Function(INR value) inr,
  }) {
    return inr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(USD value)? usd,
    TResult? Function(EUR value)? eur,
    TResult? Function(GBP value)? gbp,
    TResult? Function(JPY value)? jpy,
    TResult? Function(AUD value)? aud,
    TResult? Function(CAD value)? cad,
    TResult? Function(INR value)? inr,
  }) {
    return inr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(USD value)? usd,
    TResult Function(EUR value)? eur,
    TResult Function(GBP value)? gbp,
    TResult Function(JPY value)? jpy,
    TResult Function(AUD value)? aud,
    TResult Function(CAD value)? cad,
    TResult Function(INR value)? inr,
    required TResult orElse(),
  }) {
    if (inr != null) {
      return inr(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$INRImplToJson(
      this,
    );
  }
}

abstract class INR extends Currency {
  const factory INR() = _$INRImpl;
  const INR._() : super._();

  factory INR.fromJson(Map<String, dynamic> json) = _$INRImpl.fromJson;
}
