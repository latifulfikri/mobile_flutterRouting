class TodoModel {
  String data;
  bool done;

  TodoModel({
    required this.data,
    required this.done
  });

  void check() {
    this.done = !this.done;
  }
}

List<TodoModel> todos = [];