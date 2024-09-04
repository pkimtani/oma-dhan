import 'package:apps/core/models/currency.dart';
import 'package:drift/drift.dart';

class CurrencyConverter extends TypeConverter<Currency, String> {
  const CurrencyConverter();

  @override
  Currency fromSql(String fromDb) {
    switch (fromDb) {
      case 'USD':
        return const Currency.usd();
      case 'EUR':
        return const Currency.eur();
      case 'GBP':
        return const Currency.gbp();
      case 'JPY':
        return const Currency.jpy();
      case 'AUD':
        return const Currency.aud();
      case 'CAD':
        return const Currency.cad();
      case 'INR':
        return const Currency.inr();
      default:
        throw Exception('Unsupported currency');
    }
  }

  @override
  String toSql(Currency value) {
    return value.name;
  }
}
