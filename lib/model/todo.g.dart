// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoImpl _$$TodoImplFromJson(Map<String, dynamic> json) => _$TodoImpl(
      todoId: json['todoId'] as String? ?? "",
      taskTitle: json['taskTitle'] as String? ?? "",
      description: json['description'] as String? ?? "",
      category: json['category'] as String? ?? "",
      taskDate: json['taskDate'] as String? ?? "",
      taskTime: json['taskTime'] as String? ?? "",
      isDone: json['isDone'] as bool? ?? false,
    );

Map<String, dynamic> _$$TodoImplToJson(_$TodoImpl instance) =>
    <String, dynamic>{
      'todoId': instance.todoId,
      'taskTitle': instance.taskTitle,
      'description': instance.description,
      'category': instance.category,
      'taskDate': instance.taskDate,
      'taskTime': instance.taskTime,
      'isDone': instance.isDone,
    };
