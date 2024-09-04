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
      return _Usd.fromJson(json);
    case 'eur':
      return _Eur.fromJson(json);
    case 'gbp':
      return _Gbp.fromJson(json);
    case 'jpy':
      return _Jpy.fromJson(json);
    case 'aud':
      return _Aud.fromJson(json);
    case 'cad':
      return _Cad.fromJson(json);
    case 'inr':
      return _Inr.fromJson(json);

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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
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
abstract class _$$UsdImplCopyWith<$Res> {
  factory _$$UsdImplCopyWith(_$UsdImpl value, $Res Function(_$UsdImpl) then) =
      __$$UsdImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UsdImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$UsdImpl>
    implements _$$UsdImplCopyWith<$Res> {
  __$$UsdImplCopyWithImpl(_$UsdImpl _value, $Res Function(_$UsdImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$UsdImpl extends _Usd {
  const _$UsdImpl({final String? $type})
      : $type = $type ?? 'usd',
        super._();

  factory _$UsdImpl.fromJson(Map<String, dynamic> json) =>
      _$$UsdImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.usd()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UsdImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return usd(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return usd?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (usd != null) {
      return usd(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$UsdImplToJson(
      this,
    );
  }
}

abstract class _Usd extends Currency {
  const factory _Usd() = _$UsdImpl;
  const _Usd._() : super._();

  factory _Usd.fromJson(Map<String, dynamic> json) = _$UsdImpl.fromJson;
}

/// @nodoc
abstract class _$$EurImplCopyWith<$Res> {
  factory _$$EurImplCopyWith(_$EurImpl value, $Res Function(_$EurImpl) then) =
      __$$EurImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$EurImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$EurImpl>
    implements _$$EurImplCopyWith<$Res> {
  __$$EurImplCopyWithImpl(_$EurImpl _value, $Res Function(_$EurImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$EurImpl extends _Eur {
  const _$EurImpl({final String? $type})
      : $type = $type ?? 'eur',
        super._();

  factory _$EurImpl.fromJson(Map<String, dynamic> json) =>
      _$$EurImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.eur()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$EurImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return eur(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return eur?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (eur != null) {
      return eur(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$EurImplToJson(
      this,
    );
  }
}

abstract class _Eur extends Currency {
  const factory _Eur() = _$EurImpl;
  const _Eur._() : super._();

  factory _Eur.fromJson(Map<String, dynamic> json) = _$EurImpl.fromJson;
}

/// @nodoc
abstract class _$$GbpImplCopyWith<$Res> {
  factory _$$GbpImplCopyWith(_$GbpImpl value, $Res Function(_$GbpImpl) then) =
      __$$GbpImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GbpImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$GbpImpl>
    implements _$$GbpImplCopyWith<$Res> {
  __$$GbpImplCopyWithImpl(_$GbpImpl _value, $Res Function(_$GbpImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$GbpImpl extends _Gbp {
  const _$GbpImpl({final String? $type})
      : $type = $type ?? 'gbp',
        super._();

  factory _$GbpImpl.fromJson(Map<String, dynamic> json) =>
      _$$GbpImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.gbp()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GbpImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return gbp(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return gbp?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (gbp != null) {
      return gbp(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$GbpImplToJson(
      this,
    );
  }
}

abstract class _Gbp extends Currency {
  const factory _Gbp() = _$GbpImpl;
  const _Gbp._() : super._();

  factory _Gbp.fromJson(Map<String, dynamic> json) = _$GbpImpl.fromJson;
}

/// @nodoc
abstract class _$$JpyImplCopyWith<$Res> {
  factory _$$JpyImplCopyWith(_$JpyImpl value, $Res Function(_$JpyImpl) then) =
      __$$JpyImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$JpyImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$JpyImpl>
    implements _$$JpyImplCopyWith<$Res> {
  __$$JpyImplCopyWithImpl(_$JpyImpl _value, $Res Function(_$JpyImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$JpyImpl extends _Jpy {
  const _$JpyImpl({final String? $type})
      : $type = $type ?? 'jpy',
        super._();

  factory _$JpyImpl.fromJson(Map<String, dynamic> json) =>
      _$$JpyImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.jpy()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$JpyImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return jpy(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return jpy?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (jpy != null) {
      return jpy(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$JpyImplToJson(
      this,
    );
  }
}

abstract class _Jpy extends Currency {
  const factory _Jpy() = _$JpyImpl;
  const _Jpy._() : super._();

  factory _Jpy.fromJson(Map<String, dynamic> json) = _$JpyImpl.fromJson;
}

/// @nodoc
abstract class _$$AudImplCopyWith<$Res> {
  factory _$$AudImplCopyWith(_$AudImpl value, $Res Function(_$AudImpl) then) =
      __$$AudImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AudImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$AudImpl>
    implements _$$AudImplCopyWith<$Res> {
  __$$AudImplCopyWithImpl(_$AudImpl _value, $Res Function(_$AudImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$AudImpl extends _Aud {
  const _$AudImpl({final String? $type})
      : $type = $type ?? 'aud',
        super._();

  factory _$AudImpl.fromJson(Map<String, dynamic> json) =>
      _$$AudImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.aud()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$AudImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return aud(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return aud?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (aud != null) {
      return aud(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$AudImplToJson(
      this,
    );
  }
}

abstract class _Aud extends Currency {
  const factory _Aud() = _$AudImpl;
  const _Aud._() : super._();

  factory _Aud.fromJson(Map<String, dynamic> json) = _$AudImpl.fromJson;
}

/// @nodoc
abstract class _$$CadImplCopyWith<$Res> {
  factory _$$CadImplCopyWith(_$CadImpl value, $Res Function(_$CadImpl) then) =
      __$$CadImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CadImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$CadImpl>
    implements _$$CadImplCopyWith<$Res> {
  __$$CadImplCopyWithImpl(_$CadImpl _value, $Res Function(_$CadImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$CadImpl extends _Cad {
  const _$CadImpl({final String? $type})
      : $type = $type ?? 'cad',
        super._();

  factory _$CadImpl.fromJson(Map<String, dynamic> json) =>
      _$$CadImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.cad()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CadImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return cad(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return cad?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (cad != null) {
      return cad(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$CadImplToJson(
      this,
    );
  }
}

abstract class _Cad extends Currency {
  const factory _Cad() = _$CadImpl;
  const _Cad._() : super._();

  factory _Cad.fromJson(Map<String, dynamic> json) = _$CadImpl.fromJson;
}

/// @nodoc
abstract class _$$InrImplCopyWith<$Res> {
  factory _$$InrImplCopyWith(_$InrImpl value, $Res Function(_$InrImpl) then) =
      __$$InrImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InrImplCopyWithImpl<$Res>
    extends _$CurrencyCopyWithImpl<$Res, _$InrImpl>
    implements _$$InrImplCopyWith<$Res> {
  __$$InrImplCopyWithImpl(_$InrImpl _value, $Res Function(_$InrImpl) _then)
      : super(_value, _then);

  /// Create a copy of Currency
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
@JsonSerializable()
class _$InrImpl extends _Inr {
  const _$InrImpl({final String? $type})
      : $type = $type ?? 'inr',
        super._();

  factory _$InrImpl.fromJson(Map<String, dynamic> json) =>
      _$$InrImplFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'Currency.inr()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InrImpl);
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
    required TResult Function(_Usd value) usd,
    required TResult Function(_Eur value) eur,
    required TResult Function(_Gbp value) gbp,
    required TResult Function(_Jpy value) jpy,
    required TResult Function(_Aud value) aud,
    required TResult Function(_Cad value) cad,
    required TResult Function(_Inr value) inr,
  }) {
    return inr(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Usd value)? usd,
    TResult? Function(_Eur value)? eur,
    TResult? Function(_Gbp value)? gbp,
    TResult? Function(_Jpy value)? jpy,
    TResult? Function(_Aud value)? aud,
    TResult? Function(_Cad value)? cad,
    TResult? Function(_Inr value)? inr,
  }) {
    return inr?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Usd value)? usd,
    TResult Function(_Eur value)? eur,
    TResult Function(_Gbp value)? gbp,
    TResult Function(_Jpy value)? jpy,
    TResult Function(_Aud value)? aud,
    TResult Function(_Cad value)? cad,
    TResult Function(_Inr value)? inr,
    required TResult orElse(),
  }) {
    if (inr != null) {
      return inr(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$InrImplToJson(
      this,
    );
  }
}

abstract class _Inr extends Currency {
  const factory _Inr() = _$InrImpl;
  const _Inr._() : super._();

  factory _Inr.fromJson(Map<String, dynamic> json) = _$InrImpl.fromJson;
}
