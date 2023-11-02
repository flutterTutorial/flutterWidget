import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_utils/model/todo_model.dart';
import 'package:widget_utils/provider/todo_provider.dart';

class CheckBoxExample extends StatefulWidget {
  const CheckBoxExample({super.key});

  @override
  State<CheckBoxExample> createState() => _CheckBoxExampleState();
}

class _CheckBoxExampleState extends State<CheckBoxExample> {
  // List<int>? selectedtask = [];

  @override
  void initState() {
    super.initState();
    Provider.of<TodoProvider>(context, listen: false).getDataPro();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("CheckBox Example"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(child: Consumer<TodoProvider>(
                builder: (context, toDoData, child) {
                  return ListView.builder(
                      itemCount: toDoData.listData.length,
                      itemBuilder: (context, index) {
                        TodoModel task = toDoData.listData[index];
                        return Card(
                          elevation: 3,
                          child: CheckboxListTile(
                            title: Text(task.title!),
                            value: task.completed,
                            onChanged: (val) {
                              toDoData.checkBoxState(index, val!);
                              toDoData.addData(index);
                              // if (task.completed == false) {
                              //   selectedtask!.remove(task.id);
                              // } else {
                              //   selectedtask!.add(task.id!);
                              // }
                              // print(selectedtask);
                            },
                          ),
                        );
                      });
                },
              )),
            ],
          ),
        ));
  }
}
