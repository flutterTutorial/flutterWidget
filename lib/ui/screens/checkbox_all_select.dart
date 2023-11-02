import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:widget_utils/model/todo_model.dart';
import 'package:widget_utils/provider/todo_provider.dart';

class AllSelectCheckbox extends StatefulWidget {
  const AllSelectCheckbox({super.key});

  @override
  State<AllSelectCheckbox> createState() => _AllSelectCheckboxState();
}

class _AllSelectCheckboxState extends State<AllSelectCheckbox> {
  bool ischecked = false;
  List<int> selectedIndexes = [];

  List<TodoModel>? getAllModel;

  @override
  void initState() {
    Provider.of<TodoProvider>(context, listen: false).getDataPro();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    print("build_1");
    return Scaffold(
      appBar: AppBar(
        title: const Text("App Bar"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Consumer<TodoProvider>(
              builder: (context, allchekpro, child) {
                return ListTile(
                  title: Text('Select All'),
                  trailing: Checkbox(
                    value: allchekpro.selectAll,
                    onChanged: (val) {
                      allchekpro.selectAllCheckbox(val!);
                      allchekpro.addAllvalue(val);
                    },
                  ),
                );
              },
            ),
            Divider(),
            Expanded(child: Consumer<TodoProvider>(
              builder: (context, valuePro, child) {
                print("build");
                return ListView.builder(
                  itemCount: valuePro.listData.length,
                  itemBuilder: (context, index) {
                    getAllModel = valuePro.listData;
                    TodoModel task = valuePro.listData[index];
                    return Card(
                      elevation: 3,
                      child: CheckboxListTile(
                        title: Text("Title ${task.id.toString()}"),
                        value: task.completed,
                        onChanged: (val) {
                          valuePro.checkBoxState(index, val!);
                          valuePro.addData(index);
                          // updateSelectedItems();
                          // print(selectedIndexes);
                        },
                      ),
                    );
                  },
                );
              },
            )),
          ],
        ),
      ),
    );
  }
}
