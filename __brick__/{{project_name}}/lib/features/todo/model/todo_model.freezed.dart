// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoModel _$TodoModelFromJson(Map<String, dynamic> json) {
  return _TodoModel.fromJson(json);
}

/// @nodoc
mixin _$TodoModel {
  @HiveField(0)
  String get name => throw _privateConstructorUsedError;
  @HiveField(1)
  String? get description => throw _privateConstructorUsedError;
  @HiveField(2)
  DateTime? get time => throw _privateConstructorUsedError;
  @HiveField(3)
  bool? get isComplete => throw _privateConstructorUsedError;
  @HiveField(4)
  Map<String, bool>? get checkList => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoModelCopyWith<TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoModelCopyWith<$Res> {
  factory $TodoModelCopyWith(TodoModel value, $Res Function(TodoModel) then) =
      _$TodoModelCopyWithImpl<$Res, TodoModel>;
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? description,
      @HiveField(2) DateTime? time,
      @HiveField(3) bool? isComplete,
      @HiveField(4) Map<String, bool>? checkList});
}

/// @nodoc
class _$TodoModelCopyWithImpl<$Res, $Val extends TodoModel>
    implements $TodoModelCopyWith<$Res> {
  _$TodoModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? time = freezed,
    Object? isComplete = freezed,
    Object? checkList = freezed,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkList: freezed == checkList
          ? _value.checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_TodoModelCopyWith<$Res> implements $TodoModelCopyWith<$Res> {
  factory _$$_TodoModelCopyWith(
          _$_TodoModel value, $Res Function(_$_TodoModel) then) =
      __$$_TodoModelCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String name,
      @HiveField(1) String? description,
      @HiveField(2) DateTime? time,
      @HiveField(3) bool? isComplete,
      @HiveField(4) Map<String, bool>? checkList});
}

/// @nodoc
class __$$_TodoModelCopyWithImpl<$Res>
    extends _$TodoModelCopyWithImpl<$Res, _$_TodoModel>
    implements _$$_TodoModelCopyWith<$Res> {
  __$$_TodoModelCopyWithImpl(
      _$_TodoModel _value, $Res Function(_$_TodoModel) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? description = freezed,
    Object? time = freezed,
    Object? isComplete = freezed,
    Object? checkList = freezed,
  }) {
    return _then(_$_TodoModel(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      description: freezed == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      isComplete: freezed == isComplete
          ? _value.isComplete
          : isComplete // ignore: cast_nullable_to_non_nullable
              as bool?,
      checkList: freezed == checkList
          ? _value._checkList
          : checkList // ignore: cast_nullable_to_non_nullable
              as Map<String, bool>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$_TodoModel implements _TodoModel {
  _$_TodoModel(
      {@HiveField(0) required this.name,
      @HiveField(1) this.description,
      @HiveField(2) this.time,
      @HiveField(3) this.isComplete,
      @HiveField(4) final Map<String, bool>? checkList})
      : _checkList = checkList;

  factory _$_TodoModel.fromJson(Map<String, dynamic> json) =>
      _$$_TodoModelFromJson(json);

  @override
  @HiveField(0)
  final String name;
  @override
  @HiveField(1)
  final String? description;
  @override
  @HiveField(2)
  final DateTime? time;
  @override
  @HiveField(3)
  final bool? isComplete;
  final Map<String, bool>? _checkList;
  @override
  @HiveField(4)
  Map<String, bool>? get checkList {
    final value = _checkList;
    if (value == null) return null;
    if (_checkList is EqualUnmodifiableMapView) return _checkList;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableMapView(value);
  }

  @override
  String toString() {
    return 'TodoModel(name: $name, description: $description, time: $time, isComplete: $isComplete, checkList: $checkList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TodoModel &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isComplete, isComplete) ||
                other.isComplete == isComplete) &&
            const DeepCollectionEquality()
                .equals(other._checkList, _checkList));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, description, time,
      isComplete, const DeepCollectionEquality().hash(_checkList));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith =>
      __$$_TodoModelCopyWithImpl<_$_TodoModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TodoModelToJson(
      this,
    );
  }
}

abstract class _TodoModel implements TodoModel {
  factory _TodoModel(
      {@HiveField(0) required final String name,
      @HiveField(1) final String? description,
      @HiveField(2) final DateTime? time,
      @HiveField(3) final bool? isComplete,
      @HiveField(4) final Map<String, bool>? checkList}) = _$_TodoModel;

  factory _TodoModel.fromJson(Map<String, dynamic> json) =
      _$_TodoModel.fromJson;

  @override
  @HiveField(0)
  String get name;
  @override
  @HiveField(1)
  String? get description;
  @override
  @HiveField(2)
  DateTime? get time;
  @override
  @HiveField(3)
  bool? get isComplete;
  @override
  @HiveField(4)
  Map<String, bool>? get checkList;
  @override
  @JsonKey(ignore: true)
  _$$_TodoModelCopyWith<_$_TodoModel> get copyWith =>
      throw _privateConstructorUsedError;
}
