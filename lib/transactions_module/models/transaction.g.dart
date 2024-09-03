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
      notes: json['notes'] as String?,
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
    );

Map<String, dynamic> _$$TransactionImplToJson(_$TransactionImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'title': instance.title,
      'amount': instance.amount,
      'notes': instance.notes,
      'transactionType':
          _$TransactionTypeEnumEnumMap[instance.transactionType]!,
      'transactionDate': instance.transactionDate.toIso8601String(),
      'createdAt': instance.createdAt.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'deletedAt': instance.deletedAt?.toIso8601String(),
    };

const _$TransactionTypeEnumEnumMap = {
  TransactionTypeEnum.income: 'income',
  TransactionTypeEnum.expense: 'expense',
  TransactionTypeEnum.transfer: 'transfer',
};
