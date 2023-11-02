import 'dart:convert';
import 'package:http/http.dart';
import 'package:widget_utils/model/todo_model.dart';
import 'package:http/http.dart' as http;

class Repository {
  Future<List<TodoModel>> getData() async {
    Response response =
        await http.get(Uri.parse("https://jsonplaceholder.typicode.com/todos"));
    if (response.statusCode == 200) {
      List<dynamic> body = jsonDecode(response.body) as List;
      List<TodoModel> todoData =
          body.map<TodoModel>((json) => TodoModel.fromJson(json)).toList();
      print(body);
      return todoData;
    } else {
      throw "Some thing went wrong";
    }
  }
}
