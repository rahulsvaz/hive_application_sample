import 'package:flutter/material.dart';
import 'package:hive_application/model/todo_model.dart';
import 'package:hive_flutter/hive_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Hive.initFlutter();
  await Hive.openBox<TodoItems>('Notes');
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController todoController = TextEditingController();
  Box todobox = Hive.box<TodoItems>('Notes');
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          appBar: AppBar(),
          body: Column(
            children: [
              TextFormField(
                controller: todoController,
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    todobox.add(todoController.text.toString());
                    todoController.clear();
                  },
                  child: const Text('Add Todo')),
              const SizedBox(
                height: 20,
              ),
              Expanded(
                child: ListView.builder(
                    itemCount: todobox.length,
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(color: Colors.red),
                        child: Text(''),
                      );
                    }),
              )
            ],
          )),
    );
  }
}
