// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'local_db.dart';

// ignore_for_file: type=lint
class $UserTableTable extends UserTable with TableInfo<$UserTableTable, User> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<String> id = GeneratedColumn<String>(
      'id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      clientDefault: () => const Uuid().v8());
  static const VerificationMeta _usernameMeta =
      const VerificationMeta('username');
  @override
  late final GeneratedColumn<String> username = GeneratedColumn<String>(
      'username', aliasedName, false,
      additionalChecks:
          GeneratedColumn.checkTextLength(minTextLength: 1, maxTextLength: 50),
      type: DriftSqlType.string,
      requiredDuringInsert: true);
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
        username,
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
  VerificationContext validateIntegrity(Insertable<User> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('username')) {
      context.handle(_usernameMeta,
          username.isAcceptableOrUnknown(data['username']!, _usernameMeta));
    } else if (isInserting) {
      context.missing(_usernameMeta);
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
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  User map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return User(
      id: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}id'])!,
      username: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}username'])!,
      firstName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}first_name'])!,
      lastName: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}last_name'])!,
      email: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}email'])!,
      createdAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}created_at'])!,
      updatedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}updated_at']),
      deletedAt: attachedDatabase.typeMapping
          .read(DriftSqlType.dateTime, data['${effectivePrefix}deleted_at']),
    );
  }

  @override
  $UserTableTable createAlias(String alias) {
    return $UserTableTable(attachedDatabase, alias);
  }
}

class UserTableCompanion extends UpdateCompanion<User> {
  final Value<String> id;
  final Value<String> username;
  final Value<String> firstName;
  final Value<String> lastName;
  final Value<String> email;
  final Value<String> password;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const UserTableCompanion({
    this.id = const Value.absent(),
    this.username = const Value.absent(),
    this.firstName = const Value.absent(),
    this.lastName = const Value.absent(),
    this.email = const Value.absent(),
    this.password = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserTableCompanion.insert({
    this.id = const Value.absent(),
    required String username,
    required String firstName,
    required String lastName,
    required String email,
    required String password,
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : username = Value(username),
        firstName = Value(firstName),
        lastName = Value(lastName),
        email = Value(email),
        password = Value(password);
  static Insertable<User> custom({
    Expression<String>? id,
    Expression<String>? username,
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
      if (username != null) 'username': username,
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

  UserTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? username,
      Value<String>? firstName,
      Value<String>? lastName,
      Value<String>? email,
      Value<String>? password,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? deletedAt,
      Value<int>? rowid}) {
    return UserTableCompanion(
      id: id ?? this.id,
      username: username ?? this.username,
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
    if (username.present) {
      map['username'] = Variable<String>(username.value);
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
    return (StringBuffer('UserTableCompanion(')
          ..write('id: $id, ')
          ..write('username: $username, ')
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

class $UserFriendsTableTable extends UserFriendsTable
    with TableInfo<$UserFriendsTableTable, UserFriends> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $UserFriendsTableTable(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _userIdMeta = const VerificationMeta('userId');
  @override
  late final GeneratedColumn<String> userId = GeneratedColumn<String>(
      'user_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  static const VerificationMeta _friendIdMeta =
      const VerificationMeta('friendId');
  @override
  late final GeneratedColumn<String> friendId = GeneratedColumn<String>(
      'friend_id', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      defaultConstraints:
          GeneratedColumn.constraintIsAlways('REFERENCES user (id)'));
  @override
  List<GeneratedColumn> get $columns => [userId, friendId];
  @override
  String get aliasedName => _alias ?? actualTableName;
  @override
  String get actualTableName => $name;
  static const String $name = 'user_friends';
  @override
  VerificationContext validateIntegrity(Insertable<UserFriends> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('user_id')) {
      context.handle(_userIdMeta,
          userId.isAcceptableOrUnknown(data['user_id']!, _userIdMeta));
    } else if (isInserting) {
      context.missing(_userIdMeta);
    }
    if (data.containsKey('friend_id')) {
      context.handle(_friendIdMeta,
          friendId.isAcceptableOrUnknown(data['friend_id']!, _friendIdMeta));
    } else if (isInserting) {
      context.missing(_friendIdMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  UserFriends map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return UserFriends(
      userId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}user_id'])!,
      friendId: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}friend_id'])!,
    );
  }

  @override
  $UserFriendsTableTable createAlias(String alias) {
    return $UserFriendsTableTable(attachedDatabase, alias);
  }
}

class UserFriendsTableCompanion extends UpdateCompanion<UserFriends> {
  final Value<String> userId;
  final Value<String> friendId;
  final Value<int> rowid;
  const UserFriendsTableCompanion({
    this.userId = const Value.absent(),
    this.friendId = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  UserFriendsTableCompanion.insert({
    required String userId,
    required String friendId,
    this.rowid = const Value.absent(),
  })  : userId = Value(userId),
        friendId = Value(friendId);
  static Insertable<UserFriends> custom({
    Expression<String>? userId,
    Expression<String>? friendId,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (userId != null) 'user_id': userId,
      if (friendId != null) 'friend_id': friendId,
      if (rowid != null) 'rowid': rowid,
    });
  }

  UserFriendsTableCompanion copyWith(
      {Value<String>? userId, Value<String>? friendId, Value<int>? rowid}) {
    return UserFriendsTableCompanion(
      userId: userId ?? this.userId,
      friendId: friendId ?? this.friendId,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (userId.present) {
      map['user_id'] = Variable<String>(userId.value);
    }
    if (friendId.present) {
      map['friend_id'] = Variable<String>(friendId.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('UserFriendsTableCompanion(')
          ..write('userId: $userId, ')
          ..write('friendId: $friendId, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class $TransactionTableTable extends TransactionTable
    with TableInfo<$TransactionTableTable, Transaction> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TransactionTableTable(this.attachedDatabase, [this._alias]);
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
              $TransactionTableTable.$convertertransactionType);
  static const VerificationMeta _notesMeta = const VerificationMeta('notes');
  @override
  late final GeneratedColumn<String> notes = GeneratedColumn<String>(
      'notes', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: false,
      defaultValue: const Constant(''));
  static const VerificationMeta _currencyMeta =
      const VerificationMeta('currency');
  @override
  late final GeneratedColumnWithTypeConverter<Currency, String> currency =
      GeneratedColumn<String>('currency', aliasedName, false,
              type: DriftSqlType.string, requiredDuringInsert: true)
          .withConverter<Currency>($TransactionTableTable.$convertercurrency);
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
        currency,
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
    context.handle(_currencyMeta, const VerificationResult.success());
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
  Set<GeneratedColumn> get $primaryKey => {id};
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
          .read(DriftSqlType.string, data['${effectivePrefix}notes'])!,
      currency: $TransactionTableTable.$convertercurrency.fromSql(
          attachedDatabase.typeMapping
              .read(DriftSqlType.string, data['${effectivePrefix}currency'])!),
      transactionType: $TransactionTableTable.$convertertransactionType.fromSql(
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
  $TransactionTableTable createAlias(String alias) {
    return $TransactionTableTable(attachedDatabase, alias);
  }

  static JsonTypeConverter2<TransactionTypeEnum, String, String>
      $convertertransactionType =
      const EnumNameConverter<TransactionTypeEnum>(TransactionTypeEnum.values);
  static TypeConverter<Currency, String> $convertercurrency =
      const CurrencyConverter();
}

class TransactionTableCompanion extends UpdateCompanion<Transaction> {
  final Value<String> id;
  final Value<String> user;
  final Value<String> title;
  final Value<double> amount;
  final Value<TransactionTypeEnum> transactionType;
  final Value<String> notes;
  final Value<Currency> currency;
  final Value<DateTime> transactionDate;
  final Value<DateTime> createdAt;
  final Value<DateTime?> updatedAt;
  final Value<DateTime?> deletedAt;
  final Value<int> rowid;
  const TransactionTableCompanion({
    this.id = const Value.absent(),
    this.user = const Value.absent(),
    this.title = const Value.absent(),
    this.amount = const Value.absent(),
    this.transactionType = const Value.absent(),
    this.notes = const Value.absent(),
    this.currency = const Value.absent(),
    this.transactionDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  TransactionTableCompanion.insert({
    this.id = const Value.absent(),
    required String user,
    required String title,
    required double amount,
    this.transactionType = const Value.absent(),
    this.notes = const Value.absent(),
    required Currency currency,
    this.transactionDate = const Value.absent(),
    this.createdAt = const Value.absent(),
    this.updatedAt = const Value.absent(),
    this.deletedAt = const Value.absent(),
    this.rowid = const Value.absent(),
  })  : user = Value(user),
        title = Value(title),
        amount = Value(amount),
        currency = Value(currency);
  static Insertable<Transaction> custom({
    Expression<String>? id,
    Expression<String>? user,
    Expression<String>? title,
    Expression<double>? amount,
    Expression<String>? transactionType,
    Expression<String>? notes,
    Expression<String>? currency,
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
      if (currency != null) 'currency': currency,
      if (transactionDate != null) 'transaction_date': transactionDate,
      if (createdAt != null) 'created_at': createdAt,
      if (updatedAt != null) 'updated_at': updatedAt,
      if (deletedAt != null) 'deleted_at': deletedAt,
      if (rowid != null) 'rowid': rowid,
    });
  }

  TransactionTableCompanion copyWith(
      {Value<String>? id,
      Value<String>? user,
      Value<String>? title,
      Value<double>? amount,
      Value<TransactionTypeEnum>? transactionType,
      Value<String>? notes,
      Value<Currency>? currency,
      Value<DateTime>? transactionDate,
      Value<DateTime>? createdAt,
      Value<DateTime?>? updatedAt,
      Value<DateTime?>? deletedAt,
      Value<int>? rowid}) {
    return TransactionTableCompanion(
      id: id ?? this.id,
      user: user ?? this.user,
      title: title ?? this.title,
      amount: amount ?? this.amount,
      transactionType: transactionType ?? this.transactionType,
      notes: notes ?? this.notes,
      currency: currency ?? this.currency,
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
      map['transaction_type'] = Variable<String>($TransactionTableTable
          .$convertertransactionType
          .toSql(transactionType.value));
    }
    if (notes.present) {
      map['notes'] = Variable<String>(notes.value);
    }
    if (currency.present) {
      map['currency'] = Variable<String>(
          $TransactionTableTable.$convertercurrency.toSql(currency.value));
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
    return (StringBuffer('TransactionTableCompanion(')
          ..write('id: $id, ')
          ..write('user: $user, ')
          ..write('title: $title, ')
          ..write('amount: $amount, ')
          ..write('transactionType: $transactionType, ')
          ..write('notes: $notes, ')
          ..write('currency: $currency, ')
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
  late final $UserTableTable userTable = $UserTableTable(this);
  late final $UserFriendsTableTable userFriendsTable =
      $UserFriendsTableTable(this);
  late final $TransactionTableTable transactionTable =
      $TransactionTableTable(this);
  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [userTable, userFriendsTable, transactionTable];
}

typedef $$UserTableTableCreateCompanionBuilder = UserTableCompanion Function({
  Value<String> id,
  required String username,
  required String firstName,
  required String lastName,
  required String email,
  required String password,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$UserTableTableUpdateCompanionBuilder = UserTableCompanion Function({
  Value<String> id,
  Value<String> username,
  Value<String> firstName,
  Value<String> lastName,
  Value<String> email,
  Value<String> password,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$UserTableTableReferences
    extends BaseReferences<_$LocalDB, $UserTableTable, User> {
  $$UserTableTableReferences(super.$_db, super.$_table, super.$_typedResult);

  static MultiTypedResultKey<$UserFriendsTableTable, List<UserFriends>>
      _userTableUserTable(_$LocalDB db) =>
          MultiTypedResultKey.fromTable(db.userFriendsTable,
              aliasName: $_aliasNameGenerator(
                  db.userTable.id, db.userFriendsTable.userId));

  $$UserFriendsTableTableProcessedTableManager get userTableUser {
    final manager =
        $$UserFriendsTableTableTableManager($_db, $_db.userFriendsTable)
            .filter((f) => f.userId.id($_item.id));

    final cache = $_typedResult.readTableOrNull(_userTableUserTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$UserFriendsTableTable, List<UserFriends>>
      _userTableFriendUserTable(_$LocalDB db) =>
          MultiTypedResultKey.fromTable(db.userFriendsTable,
              aliasName: $_aliasNameGenerator(
                  db.userTable.id, db.userFriendsTable.friendId));

  $$UserFriendsTableTableProcessedTableManager get userTableFriendUser {
    final manager =
        $$UserFriendsTableTableTableManager($_db, $_db.userFriendsTable)
            .filter((f) => f.friendId.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_userTableFriendUserTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }

  static MultiTypedResultKey<$TransactionTableTable, List<Transaction>>
      _transactionTableRefsTable(_$LocalDB db) => MultiTypedResultKey.fromTable(
          db.transactionTable,
          aliasName:
              $_aliasNameGenerator(db.userTable.id, db.transactionTable.user));

  $$TransactionTableTableProcessedTableManager get transactionTableRefs {
    final manager =
        $$TransactionTableTableTableManager($_db, $_db.transactionTable)
            .filter((f) => f.user.id($_item.id));

    final cache =
        $_typedResult.readTableOrNull(_transactionTableRefsTable($_db));
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: cache));
  }
}

class $$UserTableTableFilterComposer
    extends Composer<_$LocalDB, $UserTableTable> {
  $$UserTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
      column: $table.deletedAt, builder: (column) => ColumnFilters(column));

  Expression<bool> userTableUser(
      Expression<bool> Function($$UserFriendsTableTableFilterComposer f) f) {
    final $$UserFriendsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userFriendsTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserFriendsTableTableFilterComposer(
              $db: $db,
              $table: $db.userFriendsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> userTableFriendUser(
      Expression<bool> Function($$UserFriendsTableTableFilterComposer f) f) {
    final $$UserFriendsTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userFriendsTable,
        getReferencedColumn: (t) => t.friendId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserFriendsTableTableFilterComposer(
              $db: $db,
              $table: $db.userFriendsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<bool> transactionTableRefs(
      Expression<bool> Function($$TransactionTableTableFilterComposer f) f) {
    final $$TransactionTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionTable,
        getReferencedColumn: (t) => t.user,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTableTableFilterComposer(
              $db: $db,
              $table: $db.transactionTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserTableTableOrderingComposer
    extends Composer<_$LocalDB, $UserTableTable> {
  $$UserTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get username => $composableBuilder(
      column: $table.username, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get firstName => $composableBuilder(
      column: $table.firstName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get lastName => $composableBuilder(
      column: $table.lastName, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get email => $composableBuilder(
      column: $table.email, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get password => $composableBuilder(
      column: $table.password, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
      column: $table.deletedAt, builder: (column) => ColumnOrderings(column));
}

class $$UserTableTableAnnotationComposer
    extends Composer<_$LocalDB, $UserTableTable> {
  $$UserTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get username =>
      $composableBuilder(column: $table.username, builder: (column) => column);

  GeneratedColumn<String> get firstName =>
      $composableBuilder(column: $table.firstName, builder: (column) => column);

  GeneratedColumn<String> get lastName =>
      $composableBuilder(column: $table.lastName, builder: (column) => column);

  GeneratedColumn<String> get email =>
      $composableBuilder(column: $table.email, builder: (column) => column);

  GeneratedColumn<String> get password =>
      $composableBuilder(column: $table.password, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  Expression<T> userTableUser<T extends Object>(
      Expression<T> Function($$UserFriendsTableTableAnnotationComposer a) f) {
    final $$UserFriendsTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userFriendsTable,
        getReferencedColumn: (t) => t.userId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserFriendsTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userFriendsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> userTableFriendUser<T extends Object>(
      Expression<T> Function($$UserFriendsTableTableAnnotationComposer a) f) {
    final $$UserFriendsTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.userFriendsTable,
        getReferencedColumn: (t) => t.friendId,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserFriendsTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userFriendsTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }

  Expression<T> transactionTableRefs<T extends Object>(
      Expression<T> Function($$TransactionTableTableAnnotationComposer a) f) {
    final $$TransactionTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.id,
        referencedTable: $db.transactionTable,
        getReferencedColumn: (t) => t.user,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$TransactionTableTableAnnotationComposer(
              $db: $db,
              $table: $db.transactionTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return f(composer);
  }
}

class $$UserTableTableTableManager extends RootTableManager<
    _$LocalDB,
    $UserTableTable,
    User,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableAnnotationComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (User, $$UserTableTableReferences),
    User,
    PrefetchHooks Function(
        {bool userTableUser,
        bool userTableFriendUser,
        bool transactionTableRefs})> {
  $$UserTableTableTableManager(_$LocalDB db, $UserTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> username = const Value.absent(),
            Value<String> firstName = const Value.absent(),
            Value<String> lastName = const Value.absent(),
            Value<String> email = const Value.absent(),
            Value<String> password = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserTableCompanion(
            id: id,
            username: username,
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
            required String username,
            required String firstName,
            required String lastName,
            required String email,
            required String password,
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserTableCompanion.insert(
            id: id,
            username: username,
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
              .map((e) => (
                    e.readTable(table),
                    $$UserTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: (
              {userTableUser = false,
              userTableFriendUser = false,
              transactionTableRefs = false}) {
            return PrefetchHooks(
              db: db,
              explicitlyWatchedTables: [
                if (userTableUser) db.userFriendsTable,
                if (userTableFriendUser) db.userFriendsTable,
                if (transactionTableRefs) db.transactionTable
              ],
              addJoins: null,
              getPrefetchedDataCallback: (items) async {
                return [
                  if (userTableUser)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable:
                            $$UserTableTableReferences._userTableUserTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableTableReferences(db, table, p0)
                                .userTableUser,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.userId == item.id),
                        typedResults: items),
                  if (userTableFriendUser)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$UserTableTableReferences
                            ._userTableFriendUserTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableTableReferences(db, table, p0)
                                .userTableFriendUser,
                        referencedItemsForCurrentItem: (item,
                                referencedItems) =>
                            referencedItems.where((e) => e.friendId == item.id),
                        typedResults: items),
                  if (transactionTableRefs)
                    await $_getPrefetchedData(
                        currentTable: table,
                        referencedTable: $$UserTableTableReferences
                            ._transactionTableRefsTable(db),
                        managerFromTypedResult: (p0) =>
                            $$UserTableTableReferences(db, table, p0)
                                .transactionTableRefs,
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

typedef $$UserTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalDB,
    $UserTableTable,
    User,
    $$UserTableTableFilterComposer,
    $$UserTableTableOrderingComposer,
    $$UserTableTableAnnotationComposer,
    $$UserTableTableCreateCompanionBuilder,
    $$UserTableTableUpdateCompanionBuilder,
    (User, $$UserTableTableReferences),
    User,
    PrefetchHooks Function(
        {bool userTableUser,
        bool userTableFriendUser,
        bool transactionTableRefs})>;
typedef $$UserFriendsTableTableCreateCompanionBuilder
    = UserFriendsTableCompanion Function({
  required String userId,
  required String friendId,
  Value<int> rowid,
});
typedef $$UserFriendsTableTableUpdateCompanionBuilder
    = UserFriendsTableCompanion Function({
  Value<String> userId,
  Value<String> friendId,
  Value<int> rowid,
});

final class $$UserFriendsTableTableReferences
    extends BaseReferences<_$LocalDB, $UserFriendsTableTable, UserFriends> {
  $$UserFriendsTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _userIdTable(_$LocalDB db) => db.userTable.createAlias(
      $_aliasNameGenerator(db.userFriendsTable.userId, db.userTable.id));

  $$UserTableTableProcessedTableManager? get userId {
    if ($_item.userId == null) return null;
    final manager = $$UserTableTableTableManager($_db, $_db.userTable)
        .filter((f) => f.id($_item.userId!));
    final item = $_typedResult.readTableOrNull(_userIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }

  static $UserTableTable _friendIdTable(_$LocalDB db) =>
      db.userTable.createAlias(
          $_aliasNameGenerator(db.userFriendsTable.friendId, db.userTable.id));

  $$UserTableTableProcessedTableManager? get friendId {
    if ($_item.friendId == null) return null;
    final manager = $$UserTableTableTableManager($_db, $_db.userTable)
        .filter((f) => f.id($_item.friendId!));
    final item = $_typedResult.readTableOrNull(_friendIdTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$UserFriendsTableTableFilterComposer
    extends Composer<_$LocalDB, $UserFriendsTableTable> {
  $$UserFriendsTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$UserTableTableFilterComposer get userId {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableFilterComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableTableFilterComposer get friendId {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.friendId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableFilterComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserFriendsTableTableOrderingComposer
    extends Composer<_$LocalDB, $UserFriendsTableTable> {
  $$UserFriendsTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$UserTableTableOrderingComposer get userId {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableOrderingComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableTableOrderingComposer get friendId {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.friendId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableOrderingComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserFriendsTableTableAnnotationComposer
    extends Composer<_$LocalDB, $UserFriendsTableTable> {
  $$UserFriendsTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  $$UserTableTableAnnotationComposer get userId {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.userId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }

  $$UserTableTableAnnotationComposer get friendId {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.friendId,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$UserFriendsTableTableTableManager extends RootTableManager<
    _$LocalDB,
    $UserFriendsTableTable,
    UserFriends,
    $$UserFriendsTableTableFilterComposer,
    $$UserFriendsTableTableOrderingComposer,
    $$UserFriendsTableTableAnnotationComposer,
    $$UserFriendsTableTableCreateCompanionBuilder,
    $$UserFriendsTableTableUpdateCompanionBuilder,
    (UserFriends, $$UserFriendsTableTableReferences),
    UserFriends,
    PrefetchHooks Function({bool userId, bool friendId})> {
  $$UserFriendsTableTableTableManager(
      _$LocalDB db, $UserFriendsTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$UserFriendsTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$UserFriendsTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$UserFriendsTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> userId = const Value.absent(),
            Value<String> friendId = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              UserFriendsTableCompanion(
            userId: userId,
            friendId: friendId,
            rowid: rowid,
          ),
          createCompanionCallback: ({
            required String userId,
            required String friendId,
            Value<int> rowid = const Value.absent(),
          }) =>
              UserFriendsTableCompanion.insert(
            userId: userId,
            friendId: friendId,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$UserFriendsTableTableReferences(db, table, e)
                  ))
              .toList(),
          prefetchHooksCallback: ({userId = false, friendId = false}) {
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
                      dynamic,
                      dynamic>>(state) {
                if (userId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.userId,
                    referencedTable:
                        $$UserFriendsTableTableReferences._userIdTable(db),
                    referencedColumn:
                        $$UserFriendsTableTableReferences._userIdTable(db).id,
                  ) as T;
                }
                if (friendId) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.friendId,
                    referencedTable:
                        $$UserFriendsTableTableReferences._friendIdTable(db),
                    referencedColumn:
                        $$UserFriendsTableTableReferences._friendIdTable(db).id,
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

typedef $$UserFriendsTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalDB,
    $UserFriendsTableTable,
    UserFriends,
    $$UserFriendsTableTableFilterComposer,
    $$UserFriendsTableTableOrderingComposer,
    $$UserFriendsTableTableAnnotationComposer,
    $$UserFriendsTableTableCreateCompanionBuilder,
    $$UserFriendsTableTableUpdateCompanionBuilder,
    (UserFriends, $$UserFriendsTableTableReferences),
    UserFriends,
    PrefetchHooks Function({bool userId, bool friendId})>;
typedef $$TransactionTableTableCreateCompanionBuilder
    = TransactionTableCompanion Function({
  Value<String> id,
  required String user,
  required String title,
  required double amount,
  Value<TransactionTypeEnum> transactionType,
  Value<String> notes,
  required Currency currency,
  Value<DateTime> transactionDate,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});
typedef $$TransactionTableTableUpdateCompanionBuilder
    = TransactionTableCompanion Function({
  Value<String> id,
  Value<String> user,
  Value<String> title,
  Value<double> amount,
  Value<TransactionTypeEnum> transactionType,
  Value<String> notes,
  Value<Currency> currency,
  Value<DateTime> transactionDate,
  Value<DateTime> createdAt,
  Value<DateTime?> updatedAt,
  Value<DateTime?> deletedAt,
  Value<int> rowid,
});

final class $$TransactionTableTableReferences
    extends BaseReferences<_$LocalDB, $TransactionTableTable, Transaction> {
  $$TransactionTableTableReferences(
      super.$_db, super.$_table, super.$_typedResult);

  static $UserTableTable _userTable(_$LocalDB db) => db.userTable.createAlias(
      $_aliasNameGenerator(db.transactionTable.user, db.userTable.id));

  $$UserTableTableProcessedTableManager? get user {
    if ($_item.user == null) return null;
    final manager = $$UserTableTableTableManager($_db, $_db.userTable)
        .filter((f) => f.id($_item.user!));
    final item = $_typedResult.readTableOrNull(_userTable($_db));
    if (item == null) return manager;
    return ProcessedTableManager(
        manager.$state.copyWith(prefetchedData: [item]));
  }
}

class $$TransactionTableTableFilterComposer
    extends Composer<_$LocalDB, $TransactionTableTable> {
  $$TransactionTableTableFilterComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnFilters<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnFilters(column));

  ColumnFilters<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnFilters(column));

  ColumnFilters<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<TransactionTypeEnum, TransactionTypeEnum,
          String>
      get transactionType => $composableBuilder(
          column: $table.transactionType,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnFilters(column));

  ColumnWithTypeConverterFilters<Currency, Currency, String> get currency =>
      $composableBuilder(
          column: $table.currency,
          builder: (column) => ColumnWithTypeConverterFilters(column));

  ColumnFilters<DateTime> get transactionDate => $composableBuilder(
      column: $table.transactionDate,
      builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnFilters(column));

  ColumnFilters<DateTime> get deletedAt => $composableBuilder(
      column: $table.deletedAt, builder: (column) => ColumnFilters(column));

  $$UserTableTableFilterComposer get user {
    final $$UserTableTableFilterComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableFilterComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionTableTableOrderingComposer
    extends Composer<_$LocalDB, $TransactionTableTable> {
  $$TransactionTableTableOrderingComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  ColumnOrderings<String> get id => $composableBuilder(
      column: $table.id, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get title => $composableBuilder(
      column: $table.title, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<double> get amount => $composableBuilder(
      column: $table.amount, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get transactionType => $composableBuilder(
      column: $table.transactionType,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get notes => $composableBuilder(
      column: $table.notes, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<String> get currency => $composableBuilder(
      column: $table.currency, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get transactionDate => $composableBuilder(
      column: $table.transactionDate,
      builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get createdAt => $composableBuilder(
      column: $table.createdAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get updatedAt => $composableBuilder(
      column: $table.updatedAt, builder: (column) => ColumnOrderings(column));

  ColumnOrderings<DateTime> get deletedAt => $composableBuilder(
      column: $table.deletedAt, builder: (column) => ColumnOrderings(column));

  $$UserTableTableOrderingComposer get user {
    final $$UserTableTableOrderingComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableOrderingComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionTableTableAnnotationComposer
    extends Composer<_$LocalDB, $TransactionTableTable> {
  $$TransactionTableTableAnnotationComposer({
    required super.$db,
    required super.$table,
    super.joinBuilder,
    super.$addJoinBuilderToRootComposer,
    super.$removeJoinBuilderFromRootComposer,
  });
  GeneratedColumn<String> get id =>
      $composableBuilder(column: $table.id, builder: (column) => column);

  GeneratedColumn<String> get title =>
      $composableBuilder(column: $table.title, builder: (column) => column);

  GeneratedColumn<double> get amount =>
      $composableBuilder(column: $table.amount, builder: (column) => column);

  GeneratedColumnWithTypeConverter<TransactionTypeEnum, String>
      get transactionType => $composableBuilder(
          column: $table.transactionType, builder: (column) => column);

  GeneratedColumn<String> get notes =>
      $composableBuilder(column: $table.notes, builder: (column) => column);

  GeneratedColumnWithTypeConverter<Currency, String> get currency =>
      $composableBuilder(column: $table.currency, builder: (column) => column);

  GeneratedColumn<DateTime> get transactionDate => $composableBuilder(
      column: $table.transactionDate, builder: (column) => column);

  GeneratedColumn<DateTime> get createdAt =>
      $composableBuilder(column: $table.createdAt, builder: (column) => column);

  GeneratedColumn<DateTime> get updatedAt =>
      $composableBuilder(column: $table.updatedAt, builder: (column) => column);

  GeneratedColumn<DateTime> get deletedAt =>
      $composableBuilder(column: $table.deletedAt, builder: (column) => column);

  $$UserTableTableAnnotationComposer get user {
    final $$UserTableTableAnnotationComposer composer = $composerBuilder(
        composer: this,
        getCurrentColumn: (t) => t.user,
        referencedTable: $db.userTable,
        getReferencedColumn: (t) => t.id,
        builder: (joinBuilder,
                {$addJoinBuilderToRootComposer,
                $removeJoinBuilderFromRootComposer}) =>
            $$UserTableTableAnnotationComposer(
              $db: $db,
              $table: $db.userTable,
              $addJoinBuilderToRootComposer: $addJoinBuilderToRootComposer,
              joinBuilder: joinBuilder,
              $removeJoinBuilderFromRootComposer:
                  $removeJoinBuilderFromRootComposer,
            ));
    return composer;
  }
}

class $$TransactionTableTableTableManager extends RootTableManager<
    _$LocalDB,
    $TransactionTableTable,
    Transaction,
    $$TransactionTableTableFilterComposer,
    $$TransactionTableTableOrderingComposer,
    $$TransactionTableTableAnnotationComposer,
    $$TransactionTableTableCreateCompanionBuilder,
    $$TransactionTableTableUpdateCompanionBuilder,
    (Transaction, $$TransactionTableTableReferences),
    Transaction,
    PrefetchHooks Function({bool user})> {
  $$TransactionTableTableTableManager(
      _$LocalDB db, $TransactionTableTable table)
      : super(TableManagerState(
          db: db,
          table: table,
          createFilteringComposer: () =>
              $$TransactionTableTableFilterComposer($db: db, $table: table),
          createOrderingComposer: () =>
              $$TransactionTableTableOrderingComposer($db: db, $table: table),
          createComputedFieldComposer: () =>
              $$TransactionTableTableAnnotationComposer($db: db, $table: table),
          updateCompanionCallback: ({
            Value<String> id = const Value.absent(),
            Value<String> user = const Value.absent(),
            Value<String> title = const Value.absent(),
            Value<double> amount = const Value.absent(),
            Value<TransactionTypeEnum> transactionType = const Value.absent(),
            Value<String> notes = const Value.absent(),
            Value<Currency> currency = const Value.absent(),
            Value<DateTime> transactionDate = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TransactionTableCompanion(
            id: id,
            user: user,
            title: title,
            amount: amount,
            transactionType: transactionType,
            notes: notes,
            currency: currency,
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
            Value<String> notes = const Value.absent(),
            required Currency currency,
            Value<DateTime> transactionDate = const Value.absent(),
            Value<DateTime> createdAt = const Value.absent(),
            Value<DateTime?> updatedAt = const Value.absent(),
            Value<DateTime?> deletedAt = const Value.absent(),
            Value<int> rowid = const Value.absent(),
          }) =>
              TransactionTableCompanion.insert(
            id: id,
            user: user,
            title: title,
            amount: amount,
            transactionType: transactionType,
            notes: notes,
            currency: currency,
            transactionDate: transactionDate,
            createdAt: createdAt,
            updatedAt: updatedAt,
            deletedAt: deletedAt,
            rowid: rowid,
          ),
          withReferenceMapper: (p0) => p0
              .map((e) => (
                    e.readTable(table),
                    $$TransactionTableTableReferences(db, table, e)
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
                      dynamic,
                      dynamic>>(state) {
                if (user) {
                  state = state.withJoin(
                    currentTable: table,
                    currentColumn: table.user,
                    referencedTable:
                        $$TransactionTableTableReferences._userTable(db),
                    referencedColumn:
                        $$TransactionTableTableReferences._userTable(db).id,
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

typedef $$TransactionTableTableProcessedTableManager = ProcessedTableManager<
    _$LocalDB,
    $TransactionTableTable,
    Transaction,
    $$TransactionTableTableFilterComposer,
    $$TransactionTableTableOrderingComposer,
    $$TransactionTableTableAnnotationComposer,
    $$TransactionTableTableCreateCompanionBuilder,
    $$TransactionTableTableUpdateCompanionBuilder,
    (Transaction, $$TransactionTableTableReferences),
    Transaction,
    PrefetchHooks Function({bool user})>;

class $LocalDBManager {
  final _$LocalDB _db;
  $LocalDBManager(this._db);
  $$UserTableTableTableManager get userTable =>
      $$UserTableTableTableManager(_db, _db.userTable);
  $$UserFriendsTableTableTableManager get userFriendsTable =>
      $$UserFriendsTableTableTableManager(_db, _db.userFriendsTable);
  $$TransactionTableTableTableManager get transactionTable =>
      $$TransactionTableTableTableManager(_db, _db.transactionTable);
}
