import 'package:flutter/material.dart';
import 'package:leveor_test/theme/colors/colors.dart';
import 'package:leveor_test/theme/colors/styles.dart';

class DialogCardWidget extends StatefulWidget {
  const DialogCardWidget({super.key});

  @override
  State<DialogCardWidget> createState() => _DialogCardWidgetState();
}

class _DialogCardWidgetState extends State<DialogCardWidget> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      title: Text('Choose Option'),
      content: Container(
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height / 6,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioListTile(
              title: Text('Option 1'),
              value: 1,
              groupValue: null,
              onChanged: (value) {
                // Handle radio button selection
              },
            ),
            RadioListTile(
              title: Text('Option 2'),
              value: 2,
              groupValue: null, // Provide appropriate group value
              onChanged: (value) {
                // Handle radio button selection
              },
            ),
          ],
        ),
      ),
      actions: [
        SizedBox(
          height: 44,
          width: 87,
          child: TextButton(
            style: AppStyles.buttonStyle.copyWith(
                backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
                foregroundColor: MaterialStateProperty.all<Color>(AppColors.buttonColor)),
            onPressed: () {
              // Handle action button 1 press
            },
            child: Text('Cancel'),
          ),
        ),
        SizedBox(
          height: 44,
          width: 83,
          child: ElevatedButton(
            onPressed: () {},
            style: AppStyles.buttonStyle,
            child: const Text('Ok'),
          ),
        ),
      ],
    );
  }
}
