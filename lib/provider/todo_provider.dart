import 'package:flutter/material.dart';
import 'package:widget_utils/model/todo_model.dart';
import 'package:widget_utils/repository/repo.dart';

class TodoProvider extends ChangeNotifier {
  List<int> _selectedItem = [];
  List<int> get selectedItem => _selectedItem;
  bool selectAll = false;

  List<TodoModel> _listData = [];
  List<TodoModel> get listData => _listData;

  void selectAllCheckbox(bool newValue) {
    selectAll = newValue;
    for (var item in _listData) {
      item.completed = newValue;
      notifyListeners();
    }
  }

  void addAllvalue(bool val) {
    _selectedItem.clear();
    for (var item in _listData) {
      if (item.completed == false) {
        _selectedItem.remove(item.id);
      } else {
        _selectedItem.add(item.id!);
      }
    }
    print(_selectedItem);
  }

  void getDataPro() {
    Repository().getData().then((value) {
      _listData = value;
      notifyListeners();
    });
  }

  void checkBoxState(int index, bool val) {
    _listData[index].completed = val;
    selectAll = _listData.every((item) => item.completed!);
    notifyListeners();
  }

  void addData(int index) {
    if (_listData[index].completed == false) {
      _selectedItem.remove(_listData[index].id);
    } else {
      _selectedItem.add(_listData[index].id!);
    }
    print(_selectedItem);
    notifyListeners();
  }
}
