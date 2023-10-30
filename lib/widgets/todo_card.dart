import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:todo_riverpod/provider/service_provider.dart';

class TodoCard extends ConsumerWidget {
  const TodoCard({
    super.key,
    required this.getIndex,
  });

  final int getIndex;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final todoData = ref.watch(fetchTodoProvider);

    return todoData.when(
      data: (todoData) {
        Color categoryColor = Colors.white;
        final getCategory = todoData[getIndex].category;

        switch (getCategory) {
          case 'Learning':
            categoryColor = Colors.green;
            break;
          case 'Working':
            categoryColor = Colors.blue.shade700;
            break;
          case 'General':
            categoryColor = Colors.red.shade700;
            break;
        }

        return Container(
          margin: const EdgeInsets.symmetric(vertical: 4),
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              Container(
                width: 20,
                decoration: BoxDecoration(
                  color: categoryColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(12),
                    bottomLeft: Radius.circular(12),
                  ),
                ),
              ),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ListTile(
                        contentPadding: EdgeInsets.zero,
                        leading: IconButton(
                          icon: const Icon(CupertinoIcons.delete),
                          onPressed: () {
                            ref
                                .read(serviceProvider)
                                .deleteTask(todoData[getIndex].todoId);
                          },
                        ),
                        title: Text(
                          todoData[getIndex].taskTitle,
                          maxLines: 1,
                          style: TextStyle(
                            decoration: todoData[getIndex].isDone
                                ? TextDecoration.lineThrough
                                : null,
                          ),
                        ),
                        subtitle: Text(
                          todoData[getIndex].description,
                          maxLines: 1,
                          style: TextStyle(
                            decoration: todoData[getIndex].isDone
                                ? TextDecoration.lineThrough
                                : null,
                          ),
                        ),
                        trailing: Transform.scale(
                          scale: 1.5,
                          child: Checkbox(
                            value: todoData[getIndex].isDone,
                            shape: const CircleBorder(),
                            onChanged: (value) {
                              ref
                                  .read(serviceProvider)
                                  .updateTask(todoData[getIndex].todoId, value);
                            },
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: const Offset(0, -12),
                        child: SizedBox(
                          child: Column(
                            children: [
                              Divider(
                                thickness: 1.5,
                                color: Colors.grey.shade300,
                              ),
                              Row(
                                children: [
                                  const Text("Limit"),
                                  const Gap(12),
                                  Text(todoData[getIndex].taskTime),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      error: (error, stackTrace) => Center(
        child: Text(stackTrace.toString()),
      ),
      loading: () => const Center(
        child: CircularProgressIndicator(),
      ),
    );

    //
  }
}
