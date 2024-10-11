import 'package:freezed_annotation/freezed_annotation.dart';

part 'currency.freezed.dart';
part 'currency.g.dart';

@freezed
sealed class Currency with _$Currency {
  const Currency._();

  const factory Currency.usd() = USD;
  const factory Currency.eur() = EUR;
  const factory Currency.gbp() = GBP;
  const factory Currency.jpy() = JPY;
  const factory Currency.aud() = AUD;
  const factory Currency.cad() = CAD;
  const factory Currency.inr() = INR;

  String get name => switch (this) {
        USD() => 'USD',
        EUR() => 'EUR',
        GBP() => 'GBP',
        JPY() => 'JPY',
        AUD() => 'AUD',
        CAD() => 'CAD',
        INR() => 'INR',
      };

  String get symbol => switch (this) {
        USD() => '\$',
        EUR() => '€',
        GBP() => '£',
        JPY() => '¥',
        AUD() => '\$',
        CAD() => '\$',
        INR() => '₹',
      };

  factory Currency.fromJson(Map<String, dynamic> json) =>
      _$CurrencyFromJson(json);
}
