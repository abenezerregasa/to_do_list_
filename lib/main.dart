import 'package:flutter/material.dart';

void main() {
  runApp(TodoApp());
}




class TodoApp extends StatelessWidget {
  const TodoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
  final TextEditingController _controller = TextEditingController();
  final List<String> _tasks = [];

  void _addTask() {
    String task = _controller.text.trim();
    if(task.isNotEmpty){
      setState(() {
        _tasks.add(task);
        _controller.clear();
      });
    }


  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
      
        title: Text(
          'To Do List', 
          style: TextStyle(
            color: Colors.white,
          
          ),
          
          ),
          elevation: 0,
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
                    controller: _controller,
                    decoration: InputDecoration(
                      hintText: "Enter a task",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4))



                    ),
                  ),

              
                   ),
                   SizedBox(width: 10,),
                   ElevatedButton(
                    onPressed: _addTask,
                    child: Text("Add"),
                    
                    )
       
              ],
            ),
            
            
            ),

            Expanded(
              child: ListView.builder(
                itemCount: _tasks.length ,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(_tasks[index]),

                  );
                },

              ),
              
              )



        ],
      ),

    );
  }
}