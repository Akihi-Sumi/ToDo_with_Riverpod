import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:todo_riverpod/model/todo.dart';
import 'package:todo_riverpod/provider/date_time_provider.dart';
import 'package:todo_riverpod/provider/radio_provider.dart';
import 'package:todo_riverpod/provider/service_provider.dart';
import 'package:todo_riverpod/utils/constants/app_style.dart';
import 'package:todo_riverpod/widgets/date_time_widget.dart';
import 'package:todo_riverpod/widgets/radio_widget.dart';
import 'package:todo_riverpod/widgets/text_field_widget.dart';

class AddTaskModal extends ConsumerStatefulWidget {
  const AddTaskModal({
    super.key,
  });

  @override
  AddTaskModalState createState() => AddTaskModalState();
}

class AddTaskModalState extends ConsumerState<AddTaskModal> {
  final titleContoller = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final date = ref.watch(dateProvider);

    return Container(
      padding: const EdgeInsets.all(30),
      height: MediaQuery.of(context).size.height * 0.7,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            child: Text(
              "New Task ToDo",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
          ),
          Divider(thickness: 1.5, color: Colors.grey.shade200),
          const Gap(12),
          const Text("Task Title", style: AppStyle.headingOne),
          const Gap(6),
          TextFiledWidget(
            hintText: "Add Task name",
            maxLine: 1,
            controller: titleContoller,
          ),
          const Gap(12),
          const Text("Derscription", style: AppStyle.headingOne),
          const Gap(6),
          TextFiledWidget(
            hintText: "Add Description",
            maxLine: 5,
            controller: descriptionController,
          ),
          const Gap(12),
          const Text("Category", style: AppStyle.headingOne),
          Row(
            children: [
              Expanded(
                child: RadioWidget(
                  radioTitle: "Learn",
                  categoryColor: Colors.green,
                  value: 1,
                  onChanged: () {
                    ref.read(radioProvider.notifier).update((state) => 1);
                  },
                ),
              ),
              Expanded(
                child: RadioWidget(
                  radioTitle: "Working",
                  categoryColor: Colors.blue.shade700,
                  value: 2,
                  onChanged: () {
                    ref.read(radioProvider.notifier).update((state) => 2);
                  },
                ),
              ),
              Expanded(
                child: RadioWidget(
                  radioTitle: "General",
                  categoryColor: Colors.red.shade700,
                  value: 3,
                  onChanged: () {
                    ref.read(radioProvider.notifier).update((state) => 3);
                  },
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DateTimeWidget(
                titleText: "Date",
                valueText: date,
                icon: CupertinoIcons.calendar,
                onTap: () async {
                  final getValue = await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2023),
                    lastDate: DateTime(2030),
                  );

                  if (getValue != null) {
                    final format = DateFormat('yyyy-MM-dd');

                    ref
                        .read(dateProvider.notifier)
                        .update((state) => format.format(getValue));
                  }
                },
              ),
              const Gap(22),
              DateTimeWidget(
                titleText: "Time",
                valueText: ref.watch(timeProvider),
                icon: CupertinoIcons.clock,
                onTap: () async {
                  final getTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );

                  if (getTime != null) {
                    ref
                        .read(timeProvider.notifier)
                        .update((state) => getTime.format(context));
                  }
                },
              ),
            ],
          ),
          const Gap(12),
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: Colors.blue.shade800,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: BorderSide(color: Colors.blue.shade800),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    "Cancel",
                  ),
                ),
              ),
              const Gap(12),
              Expanded(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue.shade800,
                    foregroundColor: Colors.white,
                    elevation: 0,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 14),
                  ),
                  onPressed: () {
                    final getRadioValue = ref.read(radioProvider);
                    String category = "";

                    switch (getRadioValue) {
                      case 1:
                        category = "Learning";
                        break;
                      case 2:
                        category = "Working";
                        break;
                      case 3:
                        category = "General";
                        break;
                    }

                    ref.read(serviceProvider).createTask(
                          Todo(
                            taskTitle: titleContoller.text,
                            description: descriptionController.text,
                            category: category,
                            taskDate: ref.read(dateProvider),
                            taskTime: ref.read(timeProvider),
                          ),
                        );

                    titleContoller.clear();
                    descriptionController.clear();
                    ref.read(radioProvider.notifier).update((state) => 0);
                    Navigator.of(context).pop();
                  },
                  child: const Text("Create"),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
