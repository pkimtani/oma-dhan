// part 'currency.freezed.dart';
// part 'currency.g.dart';

// @freezed
sealed class Currency {
  const Currency._();

  const factory Currency.usd() = _Usd;

  const factory Currency.eur() = _Eur;

  const factory Currency.gbp() = _Gbp;

  const factory Currency.jpy() = _Jpy;

  const factory Currency.aud() = _Aud;

  const factory Currency.cad() = _Cad;

  const factory Currency.inr() = _Inr;

  String get name {
    return map(
      usd: (_) => 'USD',
      eur: (_) => 'EUR',
      gbp: (_) => 'GBP',
      jpy: (_) => 'JPY',
      aud: (_) => 'AUD',
      cad: (_) => 'CAD',
      inr: (_) => 'INR',
    );
  }

  String get symbol {
    return map(
      usd: (_) => '\$',
      eur: (_) => '€',
      gbp: (_) => '£',
      jpy: (_) => '¥',
      aud: (_) => 'A\$',
      cad: (_) => 'C\$',
      inr: (_) => '₹',
    );
  }

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);

  // static TypeConverter<Currency, String> converter = TypeConverter.json(
  //   fromJson: (json) => Currency.fromJson(json as Map<String, Object?>),
  //   toJson: (pref) => pref.toJson(),
  // );
}
