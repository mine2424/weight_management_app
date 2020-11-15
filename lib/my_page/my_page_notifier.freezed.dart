// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'my_page_notifier.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$MyPageStateTearOff {
  const _$MyPageStateTearOff();

// ignore: unused_element
  _MyPageState call(
      {int count = 0,
      String weight,
      String comment,
      List<Map<String, String>> record = const []}) {
    return _MyPageState(
      count: count,
      weight: weight,
      comment: comment,
      record: record,
    );
  }
}

/// @nodoc
// ignore: unused_element
const $MyPageState = _$MyPageStateTearOff();

/// @nodoc
mixin _$MyPageState {
  int get count;
  String get weight;
  String get comment;
  List<Map<String, String>> get record;

  $MyPageStateCopyWith<MyPageState> get copyWith;
}

/// @nodoc
abstract class $MyPageStateCopyWith<$Res> {
  factory $MyPageStateCopyWith(
          MyPageState value, $Res Function(MyPageState) then) =
      _$MyPageStateCopyWithImpl<$Res>;
  $Res call(
      {int count,
      String weight,
      String comment,
      List<Map<String, String>> record});
}

/// @nodoc
class _$MyPageStateCopyWithImpl<$Res> implements $MyPageStateCopyWith<$Res> {
  _$MyPageStateCopyWithImpl(this._value, this._then);

  final MyPageState _value;
  // ignore: unused_field
  final $Res Function(MyPageState) _then;

  @override
  $Res call({
    Object count = freezed,
    Object weight = freezed,
    Object comment = freezed,
    Object record = freezed,
  }) {
    return _then(_value.copyWith(
      count: count == freezed ? _value.count : count as int,
      weight: weight == freezed ? _value.weight : weight as String,
      comment: comment == freezed ? _value.comment : comment as String,
      record: record == freezed
          ? _value.record
          : record as List<Map<String, String>>,
    ));
  }
}

/// @nodoc
abstract class _$MyPageStateCopyWith<$Res>
    implements $MyPageStateCopyWith<$Res> {
  factory _$MyPageStateCopyWith(
          _MyPageState value, $Res Function(_MyPageState) then) =
      __$MyPageStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {int count,
      String weight,
      String comment,
      List<Map<String, String>> record});
}

/// @nodoc
class __$MyPageStateCopyWithImpl<$Res> extends _$MyPageStateCopyWithImpl<$Res>
    implements _$MyPageStateCopyWith<$Res> {
  __$MyPageStateCopyWithImpl(
      _MyPageState _value, $Res Function(_MyPageState) _then)
      : super(_value, (v) => _then(v as _MyPageState));

  @override
  _MyPageState get _value => super._value as _MyPageState;

  @override
  $Res call({
    Object count = freezed,
    Object weight = freezed,
    Object comment = freezed,
    Object record = freezed,
  }) {
    return _then(_MyPageState(
      count: count == freezed ? _value.count : count as int,
      weight: weight == freezed ? _value.weight : weight as String,
      comment: comment == freezed ? _value.comment : comment as String,
      record: record == freezed
          ? _value.record
          : record as List<Map<String, String>>,
    ));
  }
}

/// @nodoc
class _$_MyPageState implements _MyPageState {
  const _$_MyPageState(
      {this.count = 0, this.weight, this.comment, this.record = const []})
      : assert(count != null),
        assert(record != null);

  @JsonKey(defaultValue: 0)
  @override
  final int count;
  @override
  final String weight;
  @override
  final String comment;
  @JsonKey(defaultValue: const [])
  @override
  final List<Map<String, String>> record;

  @override
  String toString() {
    return 'MyPageState(count: $count, weight: $weight, comment: $comment, record: $record)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is _MyPageState &&
            (identical(other.count, count) ||
                const DeepCollectionEquality().equals(other.count, count)) &&
            (identical(other.weight, weight) ||
                const DeepCollectionEquality().equals(other.weight, weight)) &&
            (identical(other.comment, comment) ||
                const DeepCollectionEquality()
                    .equals(other.comment, comment)) &&
            (identical(other.record, record) ||
                const DeepCollectionEquality().equals(other.record, record)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^
      const DeepCollectionEquality().hash(count) ^
      const DeepCollectionEquality().hash(weight) ^
      const DeepCollectionEquality().hash(comment) ^
      const DeepCollectionEquality().hash(record);

  @override
  _$MyPageStateCopyWith<_MyPageState> get copyWith =>
      __$MyPageStateCopyWithImpl<_MyPageState>(this, _$identity);
}

abstract class _MyPageState implements MyPageState {
  const factory _MyPageState(
      {int count,
      String weight,
      String comment,
      List<Map<String, String>> record}) = _$_MyPageState;

  @override
  int get count;
  @override
  String get weight;
  @override
  String get comment;
  @override
  List<Map<String, String>> get record;
  @override
  _$MyPageStateCopyWith<_MyPageState> get copyWith;
}
