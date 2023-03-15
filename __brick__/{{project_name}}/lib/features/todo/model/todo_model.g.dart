// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class TodoModelAdapter extends TypeAdapter<_$_TodoModel> {
  @override
  final int typeId = 0;

  @override
  _$_TodoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$_TodoModel(
      name: fields[0] as String,
      description: fields[1] as String?,
      time: fields[2] as DateTime?,
      isComplete: fields[3] as bool?,
      checkList: (fields[4] as Map?)?.cast<String, bool>(),
    );
  }

  @override
  void write(BinaryWriter writer, _$_TodoModel obj) {
    writer
      ..writeByte(5)
      ..writeByte(0)
      ..write(obj.name)
      ..writeByte(1)
      ..write(obj.description)
      ..writeByte(2)
      ..write(obj.time)
      ..writeByte(3)
      ..write(obj.isComplete)
      ..writeByte(4)
      ..write(obj.checkList);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TodoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_TodoModel _$$_TodoModelFromJson(Map<String, dynamic> json) => _$_TodoModel(
      name: json['name'] as String,
      description: json['description'] as String?,
      time:
          json['time'] == null ? null : DateTime.parse(json['time'] as String),
      isComplete: json['isComplete'] as bool?,
      checkList: (json['checkList'] as Map<String, dynamic>?)?.map(
        (k, e) => MapEntry(k, e as bool),
      ),
    );

Map<String, dynamic> _$$_TodoModelToJson(_$_TodoModel instance) =>
    <String, dynamic>{
      'name': instance.name,
      'description': instance.description,
      'time': instance.time?.toIso8601String(),
      'isComplete': instance.isComplete,
      'checkList': instance.checkList,
    };
