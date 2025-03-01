class TodoModel {
  int id;
  String todoName;
  bool done;

  TodoModel({required this.id, required this.todoName, required this.done});
  //? fromJson converts List<Map<String, dynamic>> ==> TO List<TodoModel>
}
