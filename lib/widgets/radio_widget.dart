import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:todo_riverpod/provider/radio_provider.dart';

class RadioWidget extends ConsumerWidget {
  const RadioWidget({
    super.key,
    required this.radioTitle,
    required this.categoryColor,
    required this.value,
    required this.onChanged,
  });

  final String radioTitle;
  final Color categoryColor;
  final int value;
  final VoidCallback onChanged;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final radio = ref.watch(radioProvider);

    return Material(
      child: Theme(
        data: ThemeData(unselectedWidgetColor: categoryColor),
        child: RadioListTile(
          contentPadding: EdgeInsets.zero,
          activeColor: categoryColor,
          title: Transform.translate(
            offset: const Offset(-22, 0),
            child: Text(
              radioTitle,
              style: TextStyle(
                color: categoryColor,
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          value: value,
          groupValue: radio,
          onChanged: (value) => onChanged(),
        ),
      ),
    );
  }
}
