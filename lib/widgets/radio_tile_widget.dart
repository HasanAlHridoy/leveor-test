import 'package:flutter/material.dart';
import 'package:leveor_test/theme/colors/colors.dart';
import 'package:leveor_test/theme/colors/styles.dart';

class RadioTileWidget extends StatelessWidget {
  final String tileName;
  final int value;
  final int selectedValue;
  final Function(int? value) onChanged;

  const RadioTileWidget({
    super.key,
    required this.onChanged,
    required this.tileName,
    required this.selectedValue,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RadioListTile(
      title: Text(
        tileName,
        style: AppStyles.bodySmall,
      ),
      activeColor: AppColors.buttonColor,
      contentPadding: EdgeInsets.zero,
      value: value,
      groupValue: selectedValue,
      onChanged: onChanged,
    );
  }
}
