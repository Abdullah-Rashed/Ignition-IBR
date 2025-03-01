import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:ignition/course-sections/todo_app/model/todo_model.dart';
import 'package:ignition/course-sections/todo_app/shared/utils/shared_prefs.dart';
import 'package:ignition/course-sections/todo_app/viewmodel/states.dart';

class TodoCubit extends Cubit<TodoStates> {
  TodoCubit() : super(TodoInitState());

  static TodoCubit get(context) => BlocProvider.of(context);

  final todoFieldController = TextEditingController();

  void getTodos() {
    if (SharedPrefs.getString("todos").isNotEmpty) {
      todos = json.decode(SharedPrefs.getString("todos"));
    }

    print(todos);
  }

  void saveTodos() {
    SharedPrefs.setString("todos", json.encode(todos));
  }

  //? Map<String, dynamic> jsonObject = {"": ""};
  List<dynamic> todos = List.empty(growable: true);

  void toggleTodo({required int id, required bool value}) {
    todos.map((todo) {
      if (todo["id"] == id) {
        todo["done"] = value;
        emit(ToggledState());
      }
    }).toList();
    saveTodos();
  }

  void createTodo() {
    if (todoFieldController.text.trim().isNotEmpty) {
      todos.add(
        {
          "id": todos.length + 1,
          "todo_name": todoFieldController.text.trim(),
          "done": false,
        },
      );
      todoFieldController.clear();
      saveTodos();
      emit(CreateTodoState());
    }
  }
}
