import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:todo_riverpod/model/todo.dart';

class TodoService {
  final todoCollection = FirebaseFirestore.instance.collection("todos");

  void createTask(Todo todo) {
    todoCollection.add(todo.toJson());
  }

  void updateTask(String? todoId, bool? valueUpdate) {
    todoCollection.doc(todoId).update({
      'isDone': valueUpdate,
    });
  }

  void deleteTask(String? todoId) {
    todoCollection.doc(todoId).delete();
  }
}
