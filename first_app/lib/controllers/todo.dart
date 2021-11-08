import 'dart:async';

import 'package:first_app/model/todo.dart';
import 'package:first_app/services/services.dart';

class TodoController { 
  final Services service;
  List<Todo> todos = List.empty();

  StreamController<bool> onSyncController = StreamController();
  Stream<bool> get onSync => onSyncController.stream;

  TodoController(this.service);

  Future<List<Todo>> fectTodos() async {
    onSyncController.add(true);
    todos = await service.getTodos();
    onSyncController.add(false);
    return todos;
  }

  Future<void> updateTodos(int id, bool completed) async {
    onSyncController.add(true);
    await service.updateTodos(id, completed);
    onSyncController.add(false);
    
  }
}