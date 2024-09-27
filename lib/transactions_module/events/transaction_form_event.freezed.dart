// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'transaction_form_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TransactionFormEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TransactionFormEventCopyWith<$Res> {
  factory $TransactionFormEventCopyWith(TransactionFormEvent value,
          $Res Function(TransactionFormEvent) then) =
      _$TransactionFormEventCopyWithImpl<$Res, TransactionFormEvent>;
}

/// @nodoc
class _$TransactionFormEventCopyWithImpl<$Res,
        $Val extends TransactionFormEvent>
    implements $TransactionFormEventCopyWith<$Res> {
  _$TransactionFormEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$TransactionFormInitEventImplCopyWith<$Res> {
  factory _$$TransactionFormInitEventImplCopyWith(
          _$TransactionFormInitEventImpl value,
          $Res Function(_$TransactionFormInitEventImpl) then) =
      __$$TransactionFormInitEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionFormInitEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormInitEventImpl>
    implements _$$TransactionFormInitEventImplCopyWith<$Res> {
  __$$TransactionFormInitEventImplCopyWithImpl(
      _$TransactionFormInitEventImpl _value,
      $Res Function(_$TransactionFormInitEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionFormInitEventImpl extends TransactionFormInitEvent {
  const _$TransactionFormInitEventImpl() : super._();

  @override
  String toString() {
    return 'TransactionFormEvent.init()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormInitEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return init();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return init?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return init(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return init?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (init != null) {
      return init(this);
    }
    return orElse();
  }
}

abstract class TransactionFormInitEvent extends TransactionFormEvent {
  const factory TransactionFormInitEvent() = _$TransactionFormInitEventImpl;
  const TransactionFormInitEvent._() : super._();
}

/// @nodoc
abstract class _$$TransactionFormUserChangedEventImplCopyWith<$Res> {
  factory _$$TransactionFormUserChangedEventImplCopyWith(
          _$TransactionFormUserChangedEventImpl value,
          $Res Function(_$TransactionFormUserChangedEventImpl) then) =
      __$$TransactionFormUserChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});

  $UserCopyWith<$Res> get user;
}

/// @nodoc
class __$$TransactionFormUserChangedEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormUserChangedEventImpl>
    implements _$$TransactionFormUserChangedEventImplCopyWith<$Res> {
  __$$TransactionFormUserChangedEventImplCopyWithImpl(
      _$TransactionFormUserChangedEventImpl _value,
      $Res Function(_$TransactionFormUserChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$TransactionFormUserChangedEventImpl(
      null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $UserCopyWith<$Res> get user {
    return $UserCopyWith<$Res>(_value.user, (value) {
      return _then(_value.copyWith(user: value));
    });
  }
}

/// @nodoc

class _$TransactionFormUserChangedEventImpl
    extends TransactionFormUserChangedEvent {
  const _$TransactionFormUserChangedEventImpl(this.user) : super._();

  @override
  final User user;

  @override
  String toString() {
    return 'TransactionFormEvent.userChanged(user: $user)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormUserChangedEventImpl &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFormUserChangedEventImplCopyWith<
          _$TransactionFormUserChangedEventImpl>
      get copyWith => __$$TransactionFormUserChangedEventImplCopyWithImpl<
          _$TransactionFormUserChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return userChanged(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return userChanged?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return userChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return userChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (userChanged != null) {
      return userChanged(this);
    }
    return orElse();
  }
}

abstract class TransactionFormUserChangedEvent extends TransactionFormEvent {
  const factory TransactionFormUserChangedEvent(final User user) =
      _$TransactionFormUserChangedEventImpl;
  const TransactionFormUserChangedEvent._() : super._();

  User get user;

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFormUserChangedEventImplCopyWith<
          _$TransactionFormUserChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionFormTitleChangedEventImplCopyWith<$Res> {
  factory _$$TransactionFormTitleChangedEventImplCopyWith(
          _$TransactionFormTitleChangedEventImpl value,
          $Res Function(_$TransactionFormTitleChangedEventImpl) then) =
      __$$TransactionFormTitleChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String title});
}

/// @nodoc
class __$$TransactionFormTitleChangedEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormTitleChangedEventImpl>
    implements _$$TransactionFormTitleChangedEventImplCopyWith<$Res> {
  __$$TransactionFormTitleChangedEventImplCopyWithImpl(
      _$TransactionFormTitleChangedEventImpl _value,
      $Res Function(_$TransactionFormTitleChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
  }) {
    return _then(_$TransactionFormTitleChangedEventImpl(
      null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionFormTitleChangedEventImpl
    extends TransactionFormTitleChangedEvent {
  const _$TransactionFormTitleChangedEventImpl(this.title) : super._();

  @override
  final String title;

  @override
  String toString() {
    return 'TransactionFormEvent.titleChanged(title: $title)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormTitleChangedEventImpl &&
            (identical(other.title, title) || other.title == title));
  }

  @override
  int get hashCode => Object.hash(runtimeType, title);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFormTitleChangedEventImplCopyWith<
          _$TransactionFormTitleChangedEventImpl>
      get copyWith => __$$TransactionFormTitleChangedEventImplCopyWithImpl<
          _$TransactionFormTitleChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return titleChanged(title);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return titleChanged?.call(title);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(title);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return titleChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return titleChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (titleChanged != null) {
      return titleChanged(this);
    }
    return orElse();
  }
}

abstract class TransactionFormTitleChangedEvent extends TransactionFormEvent {
  const factory TransactionFormTitleChangedEvent(final String title) =
      _$TransactionFormTitleChangedEventImpl;
  const TransactionFormTitleChangedEvent._() : super._();

  String get title;

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFormTitleChangedEventImplCopyWith<
          _$TransactionFormTitleChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionFormNotesChangedEventImplCopyWith<$Res> {
  factory _$$TransactionFormNotesChangedEventImplCopyWith(
          _$TransactionFormNotesChangedEventImpl value,
          $Res Function(_$TransactionFormNotesChangedEventImpl) then) =
      __$$TransactionFormNotesChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String notes});
}

/// @nodoc
class __$$TransactionFormNotesChangedEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormNotesChangedEventImpl>
    implements _$$TransactionFormNotesChangedEventImplCopyWith<$Res> {
  __$$TransactionFormNotesChangedEventImplCopyWithImpl(
      _$TransactionFormNotesChangedEventImpl _value,
      $Res Function(_$TransactionFormNotesChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? notes = null,
  }) {
    return _then(_$TransactionFormNotesChangedEventImpl(
      null == notes
          ? _value.notes
          : notes // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionFormNotesChangedEventImpl
    extends TransactionFormNotesChangedEvent {
  const _$TransactionFormNotesChangedEventImpl(this.notes) : super._();

  @override
  final String notes;

  @override
  String toString() {
    return 'TransactionFormEvent.notesChanged(notes: $notes)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormNotesChangedEventImpl &&
            (identical(other.notes, notes) || other.notes == notes));
  }

  @override
  int get hashCode => Object.hash(runtimeType, notes);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFormNotesChangedEventImplCopyWith<
          _$TransactionFormNotesChangedEventImpl>
      get copyWith => __$$TransactionFormNotesChangedEventImplCopyWithImpl<
          _$TransactionFormNotesChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return notesChanged(notes);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return notesChanged?.call(notes);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(notes);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return notesChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return notesChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (notesChanged != null) {
      return notesChanged(this);
    }
    return orElse();
  }
}

abstract class TransactionFormNotesChangedEvent extends TransactionFormEvent {
  const factory TransactionFormNotesChangedEvent(final String notes) =
      _$TransactionFormNotesChangedEventImpl;
  const TransactionFormNotesChangedEvent._() : super._();

  String get notes;

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFormNotesChangedEventImplCopyWith<
          _$TransactionFormNotesChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionFormAmountChangedEventImplCopyWith<$Res> {
  factory _$$TransactionFormAmountChangedEventImplCopyWith(
          _$TransactionFormAmountChangedEventImpl value,
          $Res Function(_$TransactionFormAmountChangedEventImpl) then) =
      __$$TransactionFormAmountChangedEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String amount});
}

/// @nodoc
class __$$TransactionFormAmountChangedEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormAmountChangedEventImpl>
    implements _$$TransactionFormAmountChangedEventImplCopyWith<$Res> {
  __$$TransactionFormAmountChangedEventImplCopyWithImpl(
      _$TransactionFormAmountChangedEventImpl _value,
      $Res Function(_$TransactionFormAmountChangedEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? amount = null,
  }) {
    return _then(_$TransactionFormAmountChangedEventImpl(
      null == amount
          ? _value.amount
          : amount // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionFormAmountChangedEventImpl
    extends TransactionFormAmountChangedEvent {
  const _$TransactionFormAmountChangedEventImpl(this.amount) : super._();

  @override
  final String amount;

  @override
  String toString() {
    return 'TransactionFormEvent.amountChanged(amount: $amount)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormAmountChangedEventImpl &&
            (identical(other.amount, amount) || other.amount == amount));
  }

  @override
  int get hashCode => Object.hash(runtimeType, amount);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFormAmountChangedEventImplCopyWith<
          _$TransactionFormAmountChangedEventImpl>
      get copyWith => __$$TransactionFormAmountChangedEventImplCopyWithImpl<
          _$TransactionFormAmountChangedEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return amountChanged(amount);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return amountChanged?.call(amount);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(amount);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return amountChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return amountChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (amountChanged != null) {
      return amountChanged(this);
    }
    return orElse();
  }
}

abstract class TransactionFormAmountChangedEvent extends TransactionFormEvent {
  const factory TransactionFormAmountChangedEvent(final String amount) =
      _$TransactionFormAmountChangedEventImpl;
  const TransactionFormAmountChangedEvent._() : super._();

  String get amount;

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFormAmountChangedEventImplCopyWith<
          _$TransactionFormAmountChangedEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$TransactionFormSaveEventImplCopyWith<$Res> {
  factory _$$TransactionFormSaveEventImplCopyWith(
          _$TransactionFormSaveEventImpl value,
          $Res Function(_$TransactionFormSaveEventImpl) then) =
      __$$TransactionFormSaveEventImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TransactionFormSaveEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormSaveEventImpl>
    implements _$$TransactionFormSaveEventImplCopyWith<$Res> {
  __$$TransactionFormSaveEventImplCopyWithImpl(
      _$TransactionFormSaveEventImpl _value,
      $Res Function(_$TransactionFormSaveEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$TransactionFormSaveEventImpl extends TransactionFormSaveEvent {
  const _$TransactionFormSaveEventImpl() : super._();

  @override
  String toString() {
    return 'TransactionFormEvent.save()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormSaveEventImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return save();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return save?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class TransactionFormSaveEvent extends TransactionFormEvent {
  const factory TransactionFormSaveEvent() = _$TransactionFormSaveEventImpl;
  const TransactionFormSaveEvent._() : super._();
}

/// @nodoc
abstract class _$$TransactionFormErrorOnSaveEventImplCopyWith<$Res> {
  factory _$$TransactionFormErrorOnSaveEventImplCopyWith(
          _$TransactionFormErrorOnSaveEventImpl value,
          $Res Function(_$TransactionFormErrorOnSaveEventImpl) then) =
      __$$TransactionFormErrorOnSaveEventImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$TransactionFormErrorOnSaveEventImplCopyWithImpl<$Res>
    extends _$TransactionFormEventCopyWithImpl<$Res,
        _$TransactionFormErrorOnSaveEventImpl>
    implements _$$TransactionFormErrorOnSaveEventImplCopyWith<$Res> {
  __$$TransactionFormErrorOnSaveEventImplCopyWithImpl(
      _$TransactionFormErrorOnSaveEventImpl _value,
      $Res Function(_$TransactionFormErrorOnSaveEventImpl) _then)
      : super(_value, _then);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? message = null,
  }) {
    return _then(_$TransactionFormErrorOnSaveEventImpl(
      null == message
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$TransactionFormErrorOnSaveEventImpl
    extends TransactionFormErrorOnSaveEvent {
  const _$TransactionFormErrorOnSaveEventImpl(this.message) : super._();

  @override
  final String message;

  @override
  String toString() {
    return 'TransactionFormEvent.saveError(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TransactionFormErrorOnSaveEventImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$TransactionFormErrorOnSaveEventImplCopyWith<
          _$TransactionFormErrorOnSaveEventImpl>
      get copyWith => __$$TransactionFormErrorOnSaveEventImplCopyWithImpl<
          _$TransactionFormErrorOnSaveEventImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() init,
    required TResult Function(User user) userChanged,
    required TResult Function(String title) titleChanged,
    required TResult Function(String notes) notesChanged,
    required TResult Function(String amount) amountChanged,
    required TResult Function() save,
    required TResult Function(String message) saveError,
  }) {
    return saveError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? init,
    TResult? Function(User user)? userChanged,
    TResult? Function(String title)? titleChanged,
    TResult? Function(String notes)? notesChanged,
    TResult? Function(String amount)? amountChanged,
    TResult? Function()? save,
    TResult? Function(String message)? saveError,
  }) {
    return saveError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? init,
    TResult Function(User user)? userChanged,
    TResult Function(String title)? titleChanged,
    TResult Function(String notes)? notesChanged,
    TResult Function(String amount)? amountChanged,
    TResult Function()? save,
    TResult Function(String message)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(TransactionFormInitEvent value) init,
    required TResult Function(TransactionFormUserChangedEvent value)
        userChanged,
    required TResult Function(TransactionFormTitleChangedEvent value)
        titleChanged,
    required TResult Function(TransactionFormNotesChangedEvent value)
        notesChanged,
    required TResult Function(TransactionFormAmountChangedEvent value)
        amountChanged,
    required TResult Function(TransactionFormSaveEvent value) save,
    required TResult Function(TransactionFormErrorOnSaveEvent value) saveError,
  }) {
    return saveError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(TransactionFormInitEvent value)? init,
    TResult? Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult? Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult? Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult? Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult? Function(TransactionFormSaveEvent value)? save,
    TResult? Function(TransactionFormErrorOnSaveEvent value)? saveError,
  }) {
    return saveError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(TransactionFormInitEvent value)? init,
    TResult Function(TransactionFormUserChangedEvent value)? userChanged,
    TResult Function(TransactionFormTitleChangedEvent value)? titleChanged,
    TResult Function(TransactionFormNotesChangedEvent value)? notesChanged,
    TResult Function(TransactionFormAmountChangedEvent value)? amountChanged,
    TResult Function(TransactionFormSaveEvent value)? save,
    TResult Function(TransactionFormErrorOnSaveEvent value)? saveError,
    required TResult orElse(),
  }) {
    if (saveError != null) {
      return saveError(this);
    }
    return orElse();
  }
}

abstract class TransactionFormErrorOnSaveEvent extends TransactionFormEvent {
  const factory TransactionFormErrorOnSaveEvent(final String message) =
      _$TransactionFormErrorOnSaveEventImpl;
  const TransactionFormErrorOnSaveEvent._() : super._();

  String get message;

  /// Create a copy of TransactionFormEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$TransactionFormErrorOnSaveEventImplCopyWith<
          _$TransactionFormErrorOnSaveEventImpl>
      get copyWith => throw _privateConstructorUsedError;
}
