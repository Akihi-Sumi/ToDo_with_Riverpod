import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/model/todo.dart';
import 'package:todo_riverpod/services/todo_services.dart';

final serviceProvider = StateProvider<TodoService>((ref) {
  return TodoService();
});

final fetchTodoProvider = StreamProvider<List<Todo>>((ref) async* {
  final getData = FirebaseFirestore.instance
      .collection('todos')
      .snapshots()
      .map((event) =>
          event.docs.map((e) => Todo.fromDocumentSnapshot(e)).toList());

  yield* getData;
});
