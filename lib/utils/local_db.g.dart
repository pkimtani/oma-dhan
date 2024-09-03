// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_db.dart';

// ignore_for_file: type=lint
class $UserTable extends User with TableInfo<$UserTable, UserData> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => const Uuid().v8());
  static const VerificationMeta _firstNameMeta =
      const VerificationMeta('firstName');
  @override
  late final GeneratedColumn<String> firstName = GeneratedColumn<String>(
      'first_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _lastNameMeta =
      const VerificationMeta('lastName');
  @override
  late final GeneratedColumn<String> lastName = GeneratedColumn<String>(
      'last_name', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _emailMeta = const VerificationMeta('email');
  @override
  late final GeneratedColumn<String> email = GeneratedColumn<String>(
      'email', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _passwordMeta =
      const VerificationMeta('password');
  @override
  late final GeneratedColumn<String> password = GeneratedColumn<String>(
      'password', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _deletedAtMeta =
      const VerificationMeta('deletedAt');
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
      'deleted_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        firstName,
        lastName,
        email,
        password,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user';
  @override
  VerificationContext validateIntegrity(Insertable<UserData> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('first_name')) {
      context.handle(_firstNameMeta,
          firstName.isAcceptableOrUnknown(data['first_name']!, _firstNameMeta));
    } else if (isInserting) {
      context.missing(_firstNameMeta);
    }
    if (data.containsKey('last_name')) {
      context.handle(_lastNameMeta,
          lastName.isAcceptableOrUnknown(data['last_name']!, _lastNameMeta));
    } else if (isInserting) {
      context.missing(_lastNameMeta);
    }
    if (data.containsKey('email')) {
      context.handle(
          _emailMeta, email.isAcceptableOrUnknown(data['email']!, _emailMeta));
    } else if (isInserting) {
      context.missing(_emailMeta);
    }
    if (data.containsKey('password')) {
      context.handle(_passwordMeta,
          password.isAcceptableOrUnknown(data['password']!, _passwordMeta));
    } else if (isInserting) {
      context.missing(_passwordMeta);
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserData map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserData(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      password: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}password'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      deletedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}deleted_at']),
    );
  }

  @override
  $UserTable createAlias(String alias) {
    return $UserTable(attachedDatabase, alias);
  }
}

class UserData extends DataClass implements Insertable<UserData> {
  final String id;
  final String firstName;
  final String lastName;
  final String email;
  final String password;
  final DateTime createdAt;
  final DateTime? updatedAt;
  final DateTime? deletedAt;
  const UserData(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.email,
      required this.password,
      required this.createdAt,
      this.updatedAt,
      this.deletedAt});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<String>(id);
    map['first_name'] = Variable<String>(firstName);
    map['last_name'] = Variable<String>(lastName);
    map['email'] = Variable<String>(email);
    map['password'] = Variable<String>(password);
    map['created_at'] = Variable<DateTime>(createdAt);
    if (!nullToAbsent || updatedAt != null) {
      map['updated_at'] = Variable<DateTime>(updatedAt);
    }
    if (!nullToAbsent || deletedAt != null) {
      map['deleted_at'] = Variable<DateTime>(deletedAt);
    }
    return map;
  }

  UserCompanion toCompanion(bool nullToAbsent) {
    return UserCompanion(
      id: Value(id),
      firstName: Value(firstName),
      lastName: Value(lastName),
      email: Value(email),
      password: Value(password),
      createdAt: Value(createdAt),
      updatedAt: updatedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(updatedAt),
      deletedAt: deletedAt == null && nullToAbsent
          ? const Value.absent()
          : Value(deletedAt),
    );
  }

  factory UserData.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return UserData(
      id: serializer.fromJson<String>(json['id']),
      firstName: serializer.fromJson<String>(json['firstName']),
      lastName: serializer.fromJson<String>(json['lastName']),
      email: serializer.fromJson<String>(json['email']),
      password: serializer.fromJson<String>(json['password']),
      createdAt: serializer.fromJson<DateTime>(json['createdAt']),
      updatedAt: serializer.fromJson<DateTime?>(json['updatedAt']),
      deletedAt: serializer.fromJson<DateTime?>(json['deletedAt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<String>(id),
      'firstName': serializer.toJson<String>(firstName),
      'lastName': serializer.toJson<String>(lastName),
      'email': serializer.toJson<String>(email),
      'password': serializer.toJson<String>(password),
      'createdAt': serializer.toJson<DateTime>(createdAt),
      'updatedAt': serializer.toJson<DateTime?>(updatedAt),
      'deletedAt': serializer.toJson<DateTime?>(deletedAt),
    };
  }

  UserData copyWith(
          {String? id,
          String? firstName,
          String? lastName,
          String? email,
          String? password,
          DateTime? createdAt,
          Value<DateTime?> updatedAt = const Value.absent(),
          Value<DateTime?> deletedAt = const Value.absent()}) =>
      UserData(
        id: id ?? this.id,
        firstName: firstName ?? this.firstName,
        lastName: lastName ?? this.lastName,
        email: email ?? this.email,
        password: password ?? this.password,
        createdAt: createdAt ?? this.createdAt,
        updatedAt: updatedAt.present ? updatedAt.value : this.updatedAt,
        deletedAt: deletedAt.present ? deletedAt.value : this.deletedAt,
      );
  UserData copyWithCompanion(UserCompanion data) {
    return UserData(
      id: data.id.present ? data.id.value : this.id,
      firstName: data.firstName.present ? data.firstName.value : this.firstName,
      lastName: data.lastName.present ? data.lastName.value : this.lastName,
      email: data.email.present ? data.email.value : this.email,
      password: data.password.present ? data.password.value : this.password,
      createdAt: data.createdAt.present ? data.createdAt.value : this.createdAt,
      updatedAt: data.updatedAt.present ? data.updatedAt.value : this.updatedAt,
      deletedAt: data.deletedAt.present ? data.deletedAt.value : this.deletedAt,
    );
  }

  @override
  String toString() {
    return (StringBuffer('UserData(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, firstName, lastName, email, password,
      createdAt, updatedAt, deletedAt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is UserData &&
          other.id == this.id &&
          other.firstName == this.firstName &&
          other.lastName == this.lastName &&
          other.email == this.email &&
          other.password == this.password &&
          other.createdAt == this.createdAt &&
          other.updatedAt == this.updatedAt &&
          other.deletedAt == this.deletedAt);
}

class UserCompanion extends UpdateCompanion<UserData> {
  final Value<String> id;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> email;
  final Value<String> password;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const UserCompanion({
    this.id = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserCompanion.insert({
    this.id = const Value.absent(),
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : firstName = Value(firstName),
        lastName = Value(lastName),
        email = Value(email),
        password = Value(password);
  static Insertable<UserData> custom({
    Expression<String>? id,
    Expression<String>? firstName,
    Expression<String>? lastName,
    Expression<String>? email,
    Expression<String>? password,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (firstName != null) 'first_name': firstName,
      if (lastName != null) 'last_name': lastName,
      if (email != null) 'email': email,
      if (password != null) 'password': password,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserCompanion copyWith(
      {Value<String>? id,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String>? email,
      Value<String>? password,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? deletedAt,
      Value<int>? rowid}) {
    return UserCompanion(
      id: id ?? this.id,
      firstName: firstName ?? this.firstName,
      lastName: lastName ?? this.lastName,
      email: email ?? this.email,
      password: password ?? this.password,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (firstName.present) {
      map['first_name'] = Variable<String>(firstName.value);
    }
    if (lastName.present) {
      map['last_name'] = Variable<String>(lastName.value);
    }
    if (email.present) {
      map['email'] = Variable<String>(email.value);
    }
    if (password.present) {
      map['password'] = Variable<String>(password.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserCompanion(')
          ..write('id: $id, ')
          ..write('firstName: $firstName, ')
          ..write('lastName: $lastName, ')
          ..write('email: $email, ')
          ..write('password: $password, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $UserTransactionTable extends UserTransaction
    with TableInfo<$UserTransactionTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTransactionTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => const Uuid().v8());
  static const VerificationMeta _userMeta = const VerificationMeta('user');
  @override
  late final GeneratedColumn<String> user = GeneratedColumn<String>(
      'user', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
  static const VerificationMeta _amountMeta = const VerificationMeta('amount');
  @override
  late final GeneratedColumn<double> amount = GeneratedColumn<double>(
      'amount', aliasedName, false,
      type: DriftSqlType.double, requiredDuringInsert: true);
  static const VerificationMeta _transactionTypeMeta =
      const VerificationMeta('transactionType');
  @override
  late final GeneratedColumnWithTypeConverter<TransactionTypeEnum, String>
      transactionType = GeneratedColumn<String>(
              'transaction_type', aliasedName, false,
              type: DriftSqlType.string,
              requiredDuringInsert: false,
              defaultValue: Constant(TransactionTypeEnum.expense.toString()))
          .withConverter<TransactionTypeEnum>(
              $UserTransactionTable.$convertertransactionType);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, true,
      type: DriftSqlType.string, requiredDuringInsert: false);
  static const VerificationMeta _transactionDateMeta =
      const VerificationMeta('transactionDate');
  @override
  late final GeneratedColumn<DateTime> transactionDate =
      GeneratedColumn<DateTime>('transaction_date', aliasedName, false,
          type: DriftSqlType.dateTime,
          requiredDuringInsert: false,
          defaultValue: currentDateAndTime);
  static const VerificationMeta _createdAtMeta =
      const VerificationMeta('createdAt');
  @override
  late final GeneratedColumn<DateTime> createdAt = GeneratedColumn<DateTime>(
      'created_at', aliasedName, false,
      type: DriftSqlType.dateTime,
      requiredDuringInsert: false,
      defaultValue: currentDateAndTime);
  static const VerificationMeta _updatedAtMeta =
      const VerificationMeta('updatedAt');
  @override
  late final GeneratedColumn<DateTime> updatedAt = GeneratedColumn<DateTime>(
      'updated_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  static const VerificationMeta _deletedAtMeta =
      const VerificationMeta('deletedAt');
  @override
  late final GeneratedColumn<DateTime> deletedAt = GeneratedColumn<DateTime>(
      'deleted_at', aliasedName, true,
      type: DriftSqlType.dateTime, requiredDuringInsert: false);
  @override
  List<GeneratedColumn> get $columns => [
        id,
        user,
        title,
        amount,
        transactionType,
        notes,
        transactionDate,
        createdAt,
        updatedAt,
        deletedAt
      ];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'transaction';
  @override
  VerificationContext validateIntegrity(Insertable<Transaction> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('user')) {
      context.handle(
          _userMeta, user.isAcceptableOrUnknown(data['user']!, _userMeta));
    } else if (isInserting) {
      context.missing(_userMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('amount')) {
      context.handle(_amountMeta,
          amount.isAcceptableOrUnknown(data['amount']!, _amountMeta));
    } else if (isInserting) {
      context.missing(_amountMeta);
    }
    context.handle(_transactionTypeMeta, const VerificationResult.success());
    if (data.containsKey('notes')) {
      context.handle(
          _notesMeta, notes.isAcceptableOrUnknown(data['notes']!, _notesMeta));
    }
    if (data.containsKey('transaction_date')) {
      context.handle(
          _transactionDateMeta,
          transactionDate.isAcceptableOrUnknown(
              data['transaction_date']!, _transactionDateMeta));
    }
    if (data.containsKey('created_at')) {
      context.handle(_createdAtMeta,
          createdAt.isAcceptableOrUnknown(data['created_at']!, _createdAtMeta));
    }
    if (data.containsKey('updated_at')) {
      context.handle(_updatedAtMeta,
          updatedAt.isAcceptableOrUnknown(data['updated_at']!, _updatedAtMeta));
    }
    if (data.containsKey('deleted_at')) {
      context.handle(_deletedAtMeta,
          deletedAt.isAcceptableOrUnknown(data['deleted_at']!, _deletedAtMeta));
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  Transaction map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return Transaction(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      user: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      amount: attachedDatabase.typeMapping
          .read(DriftSqlType.double, data['${effectivePrefix}amount'])!,
      notes: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}notes']),
      transactionType: $UserTransactionTable.$convertertransactionType.fromSql(
          attachedDatabase.typeMapping.read(DriftSqlType.string,
              data['${effectivePrefix}transaction_type'])!),
      transactionDate: attachedDatabase.typeMapping.read(
          DriftSqlType.dateTime, data['${effectivePrefix}transaction_date'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      deletedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}deleted_at']),
    );
  }

  @override
  $UserTransactionTable createAlias(String alias) {
    return $UserTransactionTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TransactionTypeEnum, String, String>
      $convertertransactionType =
      const EnumNameConverter<TransactionTypeEnum>(TransactionTypeEnum.values);
}

class UserTransactionCompanion extends UpdateCompanion<Transaction> {
  final Value<String> id;
  final Value<String> user;
  final Value<String> title;
  final Value<double> amount;
  final Value<TransactionTypeEnum> transactionType;
  final Value<String?> notes;
  final Value<DateTime> transactionDate;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const UserTransactionCompanion({
    this.id = const Value.absent(),
    this.user = const Value.absent(),
    this.title = const Value.absent(),
    this.amount = const Value.absent(),
    this.transactionType = const Value.absent(),
    this.notes = const Value.absent(),
    this.transactionDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserTransactionCompanion.insert({
    this.id = const Value.absent(),
    required String user,
    required String title,
    required double amount,
    this.transactionType = const Value.absent(),
    this.notes = const Value.absent(),
    this.transactionDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : user = Value(user),
        title = Value(title),
        amount = Value(amount);
  static Insertable<Transaction> custom({
    Expression<String>? id,
    Expression<String>? user,
    Expression<String>? title,
    Expression<double>? amount,
    Expression<String>? transactionType,
    Expression<String>? notes,
    Expression<DateTime>? transactionDate,
    Expression<DateTime>? createdAt,
    Expression<DateTime>? updatedAt,
    Expression<DateTime>? deletedAt,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (user != null) 'user': user,
      if (title != null) 'title': title,
      if (amount != null) 'amount': amount,
      if (transactionType != null) 'transaction_type': transactionType,
      if (notes != null) 'notes': notes,
      if (transactionDate != null) 'transaction_date': transactionDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserTransactionCompanion copyWith(
      {Value<String>? id,
      Value<String>? user,
      Value<String>? title,
      Value<double>? amount,
      Value<TransactionTypeEnum>? transactionType,
      Value<String?>? notes,
      Value<DateTime>? transactionDate,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? deletedAt,
      Value<int>? rowid}) {
    return UserTransactionCompanion(
      id: id ?? this.id,
      user: user ?? this.user,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      transactionType: transactionType ?? this.transactionType,
      notes: notes ?? this.notes,
      transactionDate: transactionDate ?? this.transactionDate,
      createdAt: createdAt ?? this.createdAt,
      updatedAt: updatedAt ?? this.updatedAt,
      deletedAt: deletedAt ?? this.deletedAt,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<String>(id.value);
    }
    if (user.present) {
      map['user'] = Variable<String>(user.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (amount.present) {
      map['amount'] = Variable<double>(amount.value);
    }
    if (transactionType.present) {
      map['transaction_type'] = Variable<String>($UserTransactionTable
          .$convertertransactionType
          .toSql(transactionType.value));
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (transactionDate.present) {
      map['transaction_date'] = Variable<DateTime>(transactionDate.value);
    }
    if (createdAt.present) {
      map['created_at'] = Variable<DateTime>(createdAt.value);
    }
    if (updatedAt.present) {
      map['updated_at'] = Variable<DateTime>(updatedAt.value);
    }
    if (deletedAt.present) {
      map['deleted_at'] = Variable<DateTime>(deletedAt.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserTransactionCompanion(')
          ..write('id: $id, ')
          ..write('user: $user, ')
          ..write('title: $title, ')
          ..write('amount: $amount, ')
          ..write('transactionType: $transactionType, ')
          ..write('notes: $notes, ')
          ..write('transactionDate: $transactionDate, ')
          ..write('createdAt: $createdAt, ')
          ..write('updatedAt: $updatedAt, ')
          ..write('deletedAt: $deletedAt, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$LocalDB extends GeneratedDatabase {
  _$LocalDB(QueryExecutor e) : super(e);
  $LocalDBManager get managers => $LocalDBManager(this);
  late final $UserTable user = $UserTable(this);
  late final $UserTransactionTable userTransaction =
      $UserTransactionTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [user, userTransaction];
}

typedef $$UserTableCreateCompanionBuilder = UserCompanion Function({
  Value<String> id,
  required String firstName,
  required String lastName,
  required String email,
  required String password,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$UserTableUpdateCompanionBuilder = UserCompanion Function({
  Value<String> id,
  Value<String> firstName,
  Value<String> lastName,
  Value<String> email,
  Value<String> password,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$UserTableReferences
    extends BaseReferences<_$LocalDB, $UserTable, UserData> {
  $$UserTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$UserTransactionTable, List<Transaction>>
      _userTransactionRefsTable(_$LocalDB db) => MultiTypedResultKey.fromTable(
          db.userTransaction,
          aliasName: $_aliasNameGenerator(db.user.id, db.userTransaction.user));

  $$UserTransactionTableProcessedTableManager get userTransactionRefs {
    final manager =
        $$UserTransactionTableTableManager($_db, $_db.userTransaction)
            .filter((f) => f.user.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_userTransactionRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserTableFilterComposer extends FilterComposer<_$LocalDB, $UserTable> {
  $$UserTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get firstName => $state.composableBuilder(
      column: $state.table.firstName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get lastName => $state.composableBuilder(
      column: $state.table.lastName,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get password => $state.composableBuilder(
      column: $state.table.password,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get deletedAt => $state.composableBuilder(
      column: $state.table.deletedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ComposableFilter userTransactionRefs(
      ComposableFilter Function($$UserTransactionTableFilterComposer f) f) {
    final $$UserTransactionTableFilterComposer composer =
        $state.composerBuilder(
            composer: this,
            getCurrentColumn: (t) => t.id,
            referencedTable: $state.db.userTransaction,
            getReferencedColumn: (t) => t.user,
            builder: (joinBuilder, parentComposers) =>
                $$UserTransactionTableFilterComposer(ComposerState($state.db,
                    $state.db.userTransaction, joinBuilder, parentComposers)));
    return f(composer);
  }
}

class $$UserTableOrderingComposer
    extends OrderingComposer<_$LocalDB, $UserTable> {
  $$UserTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get firstName => $state.composableBuilder(
      column: $state.table.firstName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get lastName => $state.composableBuilder(
      column: $state.table.lastName,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get email => $state.composableBuilder(
      column: $state.table.email,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get password => $state.composableBuilder(
      column: $state.table.password,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get deletedAt => $state.composableBuilder(
      column: $state.table.deletedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));
}

class $$UserTableTableManager extends RootTableManager<
    _$LocalDB,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, $$UserTableReferences),
    UserData,
    PrefetchHooks Function({bool userTransactionRefs})> {
  $$UserTableTableManager(_$LocalDB db, $UserTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCompanion(
            id: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            password: password,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deletedAt: deletedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String firstName,
            required String lastName,
            required String email,
            required String password,
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserCompanion.insert(
            id: id,
            firstName: firstName,
            lastName: lastName,
            email: email,
            password: password,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deletedAt: deletedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) =>
                  (e.readTable(table), $$UserTableReferences(db, table, e)))
              .toList(),
          prefetchHooksCallback: ({userTransactionRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (userTransactionRefs) db.userTransaction
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (userTransactionRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$UserTableReferences._userTransactionRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableReferences(db, table, p0)
                                .userTransactionRefs,
                        referencedItemsForCurrentItem:
                            (item, referencedItems) =>
                                referencedItems.where((e) => e.user == item.id),
                        typedResults: items)
                ];
              },
            );
          },
        ));
}

typedef $$UserTableProcessedTableManager = ProcessedTableManager<
    _$LocalDB,
    $UserTable,
    UserData,
    $$UserTableFilterComposer,
    $$UserTableOrderingComposer,
    $$UserTableCreateCompanionBuilder,
    $$UserTableUpdateCompanionBuilder,
    (UserData, $$UserTableReferences),
    UserData,
    PrefetchHooks Function({bool userTransactionRefs})>;
typedef $$UserTransactionTableCreateCompanionBuilder = UserTransactionCompanion
    Function({
  Value<String> id,
  required String user,
  required String title,
  required double amount,
  Value<TransactionTypeEnum> transactionType,
  Value<String?> notes,
  Value<DateTime> transactionDate,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$UserTransactionTableUpdateCompanionBuilder = UserTransactionCompanion
    Function({
  Value<String> id,
  Value<String> user,
  Value<String> title,
  Value<double> amount,
  Value<TransactionTypeEnum> transactionType,
  Value<String?> notes,
  Value<DateTime> transactionDate,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$UserTransactionTableReferences
    extends BaseReferences<_$LocalDB, $UserTransactionTable, Transaction> {
  $$UserTransactionTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserTable _userTable(_$LocalDB db) => db.user
      .createAlias($_aliasNameGenerator(db.userTransaction.user, db.user.id));

  $$UserTableProcessedTableManager? get user {
    if ($_item.user == null) return null;
    final manager = $$UserTableTableManager($_db, $_db.user)
        .filter((f) => f.id($_item.user!));
    final item = $_typedResult.readTableOrNull(_userTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UserTransactionTableFilterComposer
    extends FilterComposer<_$LocalDB, $UserTransactionTable> {
  $$UserTransactionTableFilterComposer(super.$state);
  ColumnFilters<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnWithTypeConverterFilters<TransactionTypeEnum, TransactionTypeEnum,
          String>
      get transactionType => $state.composableBuilder(
          column: $state.table.transactionType,
          builder: (column, joinBuilders) => ColumnWithTypeConverterFilters(
              column,
              joinBuilders: joinBuilders));

  ColumnFilters<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get transactionDate => $state.composableBuilder(
      column: $state.table.transactionDate,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  ColumnFilters<DateTime> get deletedAt => $state.composableBuilder(
      column: $state.table.deletedAt,
      builder: (column, joinBuilders) =>
          ColumnFilters(column, joinBuilders: joinBuilders));

  $$UserTableFilterComposer get user {
    final $$UserTableFilterComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $state.db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$UserTableFilterComposer(
            ComposerState(
                $state.db, $state.db.user, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$UserTransactionTableOrderingComposer
    extends OrderingComposer<_$LocalDB, $UserTransactionTable> {
  $$UserTransactionTableOrderingComposer(super.$state);
  ColumnOrderings<String> get id => $state.composableBuilder(
      column: $state.table.id,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get title => $state.composableBuilder(
      column: $state.table.title,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<double> get amount => $state.composableBuilder(
      column: $state.table.amount,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get transactionType => $state.composableBuilder(
      column: $state.table.transactionType,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<String> get notes => $state.composableBuilder(
      column: $state.table.notes,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get transactionDate => $state.composableBuilder(
      column: $state.table.transactionDate,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get createdAt => $state.composableBuilder(
      column: $state.table.createdAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get updatedAt => $state.composableBuilder(
      column: $state.table.updatedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  ColumnOrderings<DateTime> get deletedAt => $state.composableBuilder(
      column: $state.table.deletedAt,
      builder: (column, joinBuilders) =>
          ColumnOrderings(column, joinBuilders: joinBuilders));

  $$UserTableOrderingComposer get user {
    final $$UserTableOrderingComposer composer = $state.composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $state.db.user,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder, parentComposers) => $$UserTableOrderingComposer(
            ComposerState(
                $state.db, $state.db.user, joinBuilder, parentComposers)));
    return composer;
  }
}

class $$UserTransactionTableTableManager extends RootTableManager<
    _$LocalDB,
    $UserTransactionTable,
    Transaction,
    $$UserTransactionTableFilterComposer,
    $$UserTransactionTableOrderingComposer,
    $$UserTransactionTableCreateCompanionBuilder,
    $$UserTransactionTableUpdateCompanionBuilder,
    (Transaction, $$UserTransactionTableReferences),
    Transaction,
    PrefetchHooks Function({bool user})> {
  $$UserTransactionTableTableManager(_$LocalDB db, $UserTransactionTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          filteringComposer:
              $$UserTransactionTableFilterComposer(ComposerState(db, table)),
          orderingComposer:
              $$UserTransactionTableOrderingComposer(ComposerState(db, table)),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> user = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<TransactionTypeEnum> transactionType = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime> transactionDate = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserTransactionCompanion(
            id: id,
            user: user,
            title: title,
            amount: amount,
            transactionType: transactionType,
            notes: notes,
            transactionDate: transactionDate,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deletedAt: deletedAt,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            Value<String> id = const Value.absent(),
            required String user,
            required String title,
            required double amount,
            Value<TransactionTypeEnum> transactionType = const Value.absent(),
            Value<String?> notes = const Value.absent(),
            Value<DateTime> transactionDate = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserTransactionCompanion.insert(
            id: id,
            user: user,
            title: title,
            amount: amount,
            transactionType: transactionType,
            notes: notes,
            transactionDate: transactionDate,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deletedAt: deletedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserTransactionTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({user = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [],
              addJoins: <
                  T extends TableManagerState<
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic,
                      dynamic>>(state) {
                if (user) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.user,
                    referencedTable:
                        $$UserTransactionTableReferences._userTable(db),
                    referencedColumn:
                        $$UserTransactionTableReferences._userTable(db).id,
                  ) as T;
                }

                return state;
              },
              getPrefetchedDataCallback: (items) async {
                return [];
              },
            );
          },
        ));
}

typedef $$UserTransactionTableProcessedTableManager = ProcessedTableManager<
    _$LocalDB,
    $UserTransactionTable,
    Transaction,
    $$UserTransactionTableFilterComposer,
    $$UserTransactionTableOrderingComposer,
    $$UserTransactionTableCreateCompanionBuilder,
    $$UserTransactionTableUpdateCompanionBuilder,
    (Transaction, $$UserTransactionTableReferences),
    Transaction,
    PrefetchHooks Function({bool user})>;

class $LocalDBManager {
  final _$LocalDB _db;
  $LocalDBManager(this._db);
  $$UserTableTableManager get user => $$UserTableTableManager(_db, _db.user);
  $$UserTransactionTableTableManager get userTransaction =>
      $$UserTransactionTableTableManager(_db, _db.userTransaction);
}
