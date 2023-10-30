// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Todo _$TodoFromJson(Map<String, dynamic> json) {
  return _Todo.fromJson(json);
}

/// @nodoc
mixin _$Todo {
  String get todoId => throw _privateConstructorUsedError;
  String get taskTitle => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  String get category => throw _privateConstructorUsedError;
  String get taskDate => throw _privateConstructorUsedError;
  String get taskTime => throw _privateConstructorUsedError;
  bool get isDone => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TodoCopyWith<Todo> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoCopyWith<$Res> {
  factory $TodoCopyWith(Todo value, $Res Function(Todo) then) =
      _$TodoCopyWithImpl<$Res, Todo>;
  @useResult
  $Res call(
      {String todoId,
      String taskTitle,
      String description,
      String category,
      String taskDate,
      String taskTime,
      bool isDone});
}

/// @nodoc
class _$TodoCopyWithImpl<$Res, $Val extends Todo>
    implements $TodoCopyWith<$Res> {
  _$TodoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? taskTitle = null,
    Object? description = null,
    Object? category = null,
    Object? taskDate = null,
    Object? taskTime = null,
    Object? isDone = null,
  }) {
    return _then(_value.copyWith(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      taskTitle: null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      taskDate: null == taskDate
          ? _value.taskDate
          : taskDate // ignore: cast_nullable_to_non_nullable
              as String,
      taskTime: null == taskTime
          ? _value.taskTime
          : taskTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$TodoImplCopyWith<$Res> implements $TodoCopyWith<$Res> {
  factory _$$TodoImplCopyWith(
          _$TodoImpl value, $Res Function(_$TodoImpl) then) =
      __$$TodoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String todoId,
      String taskTitle,
      String description,
      String category,
      String taskDate,
      String taskTime,
      bool isDone});
}

/// @nodoc
class __$$TodoImplCopyWithImpl<$Res>
    extends _$TodoCopyWithImpl<$Res, _$TodoImpl>
    implements _$$TodoImplCopyWith<$Res> {
  __$$TodoImplCopyWithImpl(_$TodoImpl _value, $Res Function(_$TodoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? todoId = null,
    Object? taskTitle = null,
    Object? description = null,
    Object? category = null,
    Object? taskDate = null,
    Object? taskTime = null,
    Object? isDone = null,
  }) {
    return _then(_$TodoImpl(
      todoId: null == todoId
          ? _value.todoId
          : todoId // ignore: cast_nullable_to_non_nullable
              as String,
      taskTitle: null == taskTitle
          ? _value.taskTitle
          : taskTitle // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      category: null == category
          ? _value.category
          : category // ignore: cast_nullable_to_non_nullable
              as String,
      taskDate: null == taskDate
          ? _value.taskDate
          : taskDate // ignore: cast_nullable_to_non_nullable
              as String,
      taskTime: null == taskTime
          ? _value.taskTime
          : taskTime // ignore: cast_nullable_to_non_nullable
              as String,
      isDone: null == isDone
          ? _value.isDone
          : isDone // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$TodoImpl extends _Todo {
  const _$TodoImpl(
      {this.todoId = "",
      this.taskTitle = "",
      this.description = "",
      this.category = "",
      this.taskDate = "",
      this.taskTime = "",
      this.isDone = false})
      : super._();

  factory _$TodoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoImplFromJson(json);

  @override
  @JsonKey()
  final String todoId;
  @override
  @JsonKey()
  final String taskTitle;
  @override
  @JsonKey()
  final String description;
  @override
  @JsonKey()
  final String category;
  @override
  @JsonKey()
  final String taskDate;
  @override
  @JsonKey()
  final String taskTime;
  @override
  @JsonKey()
  final bool isDone;

  @override
  String toString() {
    return 'Todo(todoId: $todoId, taskTitle: $taskTitle, description: $description, category: $category, taskDate: $taskDate, taskTime: $taskTime, isDone: $isDone)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoImpl &&
            (identical(other.todoId, todoId) || other.todoId == todoId) &&
            (identical(other.taskTitle, taskTitle) ||
                other.taskTitle == taskTitle) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.category, category) ||
                other.category == category) &&
            (identical(other.taskDate, taskDate) ||
                other.taskDate == taskDate) &&
            (identical(other.taskTime, taskTime) ||
                other.taskTime == taskTime) &&
            (identical(other.isDone, isDone) || other.isDone == isDone));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, todoId, taskTitle, description,
      category, taskDate, taskTime, isDone);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      __$$TodoImplCopyWithImpl<_$TodoImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoImplToJson(
      this,
    );
  }
}

abstract class _Todo extends Todo {
  const factory _Todo(
      {final String todoId,
      final String taskTitle,
      final String description,
      final String category,
      final String taskDate,
      final String taskTime,
      final bool isDone}) = _$TodoImpl;
  const _Todo._() : super._();

  factory _Todo.fromJson(Map<String, dynamic> json) = _$TodoImpl.fromJson;

  @override
  String get todoId;
  @override
  String get taskTitle;
  @override
  String get description;
  @override
  String get category;
  @override
  String get taskDate;
  @override
  String get taskTime;
  @override
  bool get isDone;
  @override
  @JsonKey(ignore: true)
  _$$TodoImplCopyWith<_$TodoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
