// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'transaction.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TransactionImpl _$$TransactionImplFromJson(Map<String, dynamic> json) =>
    _$TransactionImpl(
      id: json['id'] as String,
      user: json['user'] as String,
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      notes: json['notes'] as String? ?? '',
      currency: json['currency'] == null
          ? const Currency.eur()
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      transactionType:
          $enumDecode(_$TransactionTypeEnumEnumMap, json['transactionType']),
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'amount': instance.amount,
      'notes': instance.notes,
      'currency': instance.currency,
      'transactionType':
          _$TransactionTypeEnumEnumMap[instance.transactionType]!,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };

const _$TransactionTypeEnumEnumMap = {
  TransactionTypeEnum.income: 'income',
  TransactionTypeEnum.expense: 'expense',
  TransactionTypeEnum.transfer: 'transfer',
};

_$NewTransactionImpl _$$NewTransactionImplFromJson(Map<String, dynamic> json) =>
    _$NewTransactionImpl(
      id: json['id'] as String?,
      user: json['user'] as String,
      title: json['title'] as String,
      amount: (json['amount'] as num).toDouble(),
      notes: json['notes'] as String? ?? '',
      currency: json['currency'] == null
          ? const Currency.eur()
          : Currency.fromJson(json['currency'] as Map<String, dynamic>),
      transactionType:
          $enumDecode(_$TransactionTypeEnumEnumMap, json['transactionType']),
      transactionDate: DateTime.parse(json['transactionDate'] as String),
      createdAt: DateTime.parse(json['createdAt'] as String),
      updatedAt: json['updatedAt'] == null
          ? null
          : DateTime.parse(json['updatedAt'] as String),
      deletedAt: json['deletedAt'] == null
          ? null
          : DateTime.parse(json['deletedAt'] as String),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$NewTransactionImplToJson(
        _$NewTransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'amount': instance.amount,
      'notes': instance.notes,
      'currency': instance.currency,
      'transactionType':
          _$TransactionTypeEnumEnumMap[instance.transactionType]!,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
      'runtimeType': instance.$type,
    };
