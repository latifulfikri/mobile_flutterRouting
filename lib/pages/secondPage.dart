import 'package:flutter/material.dart';
import 'package:route_flutter/model/TodoModel.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({super.key});

  @override
  State<SecondPage> createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {

  final todoField = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("To do list"),
        elevation: 0,
        backgroundColor: Theme.of(context).scaffoldBackgroundColor,
        titleTextStyle: TextStyle(
          color: Color.fromRGBO(120, 86, 214, 1),
          fontWeight: FontWeight.bold
        ),
        foregroundColor: Color.fromRGBO(120, 86, 214, 1),
      ),
      body: SafeArea(
        child: Column(
          children: [
            PageHeader(),
            Expanded(
              child: TodoListSection(),
            )
          ],
        )
      ),
    );
  }

  Widget PageHeader() {
    return Container(
      padding: EdgeInsets.only(top: 24,left: 24, right: 24),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextField(
                  controller: todoField,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(16),
                    ),
                    hintText: "New todo",
                    focusColor: Color.fromRGBO(120, 86, 214, 1),
                    hoverColor: Color.fromRGBO(120, 86, 214, 1),
                    focusedBorder: OutlineInputBorder(
                      borderSide: const BorderSide(color: Color.fromRGBO(120, 86, 214, 1),),
                      borderRadius: BorderRadius.circular(16)
                    ),
                  ),
                ),
              ),
              Padding(padding: EdgeInsets.only(right: 16)),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(16)
                  ),
                  padding: EdgeInsets.all(18),
                  backgroundColor: Color.fromRGBO(120, 86, 214, 1),
                  elevation: 0,
                  shadowColor: Colors.transparent,
                  textStyle: TextStyle(
                    fontWeight: FontWeight.bold
                  )
                ),
                onPressed: () {
                  if (todoField.text != '' && todoField.text != ' ') {
                    todos.add(TodoModel(data: todoField.text, done: false));
                    todoField.clear();
                    setState(() {
                      
                    });
                  }
                },
                child: Icon(Icons.add)
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget TodoListSection() {
    return Container(
      alignment: Alignment.topLeft,
      padding: EdgeInsets.all(24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextHeading("Todo List"),
          SizedBox(height: 16,),
          Expanded(
            child: ListView.builder(
              itemCount: todos.length,
              itemBuilder: (context, index) {
                return TodoItem(todos[index]);
              }),
          )
        ],
      ),
    );
  }

  Widget TextHeading(String text) {
    return Text(text,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 18,
      ),
    );
  }

  Widget TodoItem(TodoModel todo) {
    return new Row(
      children: [
        Expanded(
          child: Container(
            padding: EdgeInsets.all(4),
            margin: EdgeInsets.only(bottom: 16),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(16),
              border: Border.all(
                color: Colors.black12
              )
            ),
            child: Row(
              children: [
                Checkbox(
                  value: todo.done,
                  onChanged: (bool? value){
                    todo.check();
                    setState(() {
                      
                    });
                  }),
                Expanded(
                  child: Text(todo.data),
                ),
                Padding(padding: EdgeInsets.only(right: 4)),
                IconButton(
                  onPressed: (){
                    todos.remove(todo);
                    setState(() {
                      
                    });
                  },
                  icon: Icon(Icons.delete),
                  color: Colors.red,
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}