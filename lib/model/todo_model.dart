import 'package:hive_flutter/hive_flutter.dart';
part 'todo_model.g.dart';

@HiveType(typeId: 1)
class TodoItems extends HiveObject {
  @HiveField(1)
  String data;
  TodoItems({required this.data});

}
