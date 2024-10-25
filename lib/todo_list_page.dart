import 'package:flutter/material.dart';

class ToDoListPage extends StatefulWidget {
  @override
  _ToDoListPageState createState() => _ToDoListPageState();
}

class _ToDoListPageState extends State<ToDoListPage> {
  List<String> taskList = ["Mobil çalış", "Ders çalış", "Proje konusu belirle"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan[50],
      appBar: AppBar(
        title: Text('Görev Listesi'),
        backgroundColor: Colors.teal,
      ),
      body: ListView.builder(
        itemCount: taskList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 5, horizontal: 15),
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
            elevation: 4,
            child: ListTile(
              title: Text(
                taskList[index],
                style: TextStyle(fontSize: 18, color: Colors.black87),
              ),
              trailing: IconButton(
                icon: Icon(Icons.delete, color: Colors.redAccent),
                onPressed: () {
                  setState(() {
                    taskList.removeAt(index);
                  });
                },
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _addTaskDialog,
        backgroundColor: Colors.teal,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(8.0),
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text("Öğrenci Sayfasına Dön"),
        ),
      ),
    );
  }

  void _addTaskDialog() {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        TextEditingController taskController = TextEditingController();
        return AlertDialog(
          title: Text("Yeni Görev Ekle"),
          content: TextField(
            controller: taskController,
            decoration: InputDecoration(
              hintText: "Görev adı",
              border: OutlineInputBorder(),
            ),
          ),
          actions: [
            TextButton(
              child: Text("Ekle"),
              onPressed: () {
                setState(() {
                  taskList.add(taskController.text);
                });
                Navigator.of(context).pop();
              },
            ),
          ],
        );
      },
    );
  }
}
