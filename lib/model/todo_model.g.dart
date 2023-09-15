// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoItemsAdapter extends TypeAdapter<TodoItems> {
  @override
  final int typeId = 1;

  @override
  TodoItems read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return TodoItems(
      data: fields[1] as String,
    );
  }

  @override
  void write(BinaryWriter writer, TodoItems obj) {
    writer
      ..writeByte(1)
      ..writeByte(1)
      ..write(obj.data);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoItemsAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
