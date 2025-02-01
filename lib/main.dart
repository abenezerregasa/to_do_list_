import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}




class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TodoHome(),
    );
  }
}




class TodoHome extends StatefulWidget {
  const TodoHome({super.key});

  @override
  State<TodoHome> createState() => _TodoHomeState();
}

class _TodoHomeState extends State<TodoHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('To-Do List'),
        centerTitle: true,

      ),

      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.all(8.0),

            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Enter a task",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))



                    ),
                  ),

              
                   ),
                   SizedBox(width: 10,),
                   ElevatedButton(
                    onPressed:  () {}, 
                    child: Text("Add"),
                    
                    )
       
              ],
            ),
            
            
            ),


            
        ],
      ),

    );
  }
}