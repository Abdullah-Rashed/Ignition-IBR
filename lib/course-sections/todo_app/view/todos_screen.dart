import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:ignition/course-sections/todo_app/shared/widgets/todo.dart';
import 'package:ignition/course-sections/todo_app/viewmodel/cubit.dart';
import 'package:ignition/course-sections/todo_app/viewmodel/states.dart';

class TodosScreen extends StatelessWidget {
  const TodosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => TodoCubit()..getTodos(),
      child: BlocConsumer<TodoCubit, TodoStates>(
        listener: (context, state) {},
        builder: (context, state) {
          final cubit = TodoCubit.get(context);
          return Scaffold(
            backgroundColor: const Color(0xFF8F78C8),
            appBar: AppBar(
              centerTitle: true,
              foregroundColor: Colors.white,
              backgroundColor: Color(0XFF6040AF),
              title: Text("Simple Todos"),
            ),
            body: cubit.todos.isEmpty
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Center(
                        child: Text(
                          "Well Done! No Todos.",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 17,
                          ),
                        ),
                      )
                    ],
                  )
                : ListView.separated(
                    padding: EdgeInsets.all(16),
                    itemCount: cubit.todos.length,
                    separatorBuilder: (context, index) => Gap(20),
                    itemBuilder: (context, index) => Todo(
                      todoName: cubit.todos[index]["todo_name"],
                      done: cubit.todos[index]["done"],
                      onChanged: (value) => cubit.toggleTodo(
                        id: cubit.todos[index]["id"],
                        value: value!,
                      ),
                    ),
                  ),
            bottomNavigationBar: Container(
              padding: EdgeInsets.symmetric(vertical: 40, horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    flex: 4,
                    child: TextFormField(
                      controller: cubit.todoFieldController,
                      decoration: InputDecoration(
                        filled: true,
                        fillColor: Colors.grey.shade200,
                        hintText: "Add a new todo item",
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(12),
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  Gap(28),
                  Expanded(
                    flex: 1,
                    child: FloatingActionButton(
                      onPressed: () => cubit.createTodo(),
                      child: Icon(Icons.add),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
