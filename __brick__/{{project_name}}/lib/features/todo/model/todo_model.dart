import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive/hive.dart';

part 'todo_model.g.dart';
part 'todo_model.freezed.dart';

@freezed
abstract class TodoModel with _$TodoModel {
  @HiveType(typeId: 0)
  factory TodoModel({
    @HiveField(0) required String name,
    @HiveField(1) String? description,
    @HiveField(2) DateTime? time,
    @HiveField(3) bool? isComplete,
    @HiveField(4) Map<String, bool>? checkList,
  }) = _TodoModel;

  factory TodoModel.fromJson(Map<String, dynamic> json) =>
      _$TodoModelFromJson(json);
}
