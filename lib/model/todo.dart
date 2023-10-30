import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo.freezed.dart';
part 'todo.g.dart';

@freezed
class Todo with _$Todo {
  const factory Todo({
    @Default("") String todoId,
    @Default("") String taskTitle,
    @Default("") String description,
    @Default("") String category,
    @Default("") String taskDate,
    @Default("") String taskTime,
    @Default(false) bool isDone,
  }) = _Todo;

  factory Todo.fromJson(Map<String, dynamic> json) => _$TodoFromJson(json);

  factory Todo.fromDocumentSnapshot(DocumentSnapshot ds) {
    final data = ds.data()! as Map<String, dynamic>;

    return Todo.fromJson(<String, dynamic>{
      ...data,
      'todoId': ds.id,
    });
  }

  const Todo._();
}
