import 'package:flutter/material.dart';
import 'package:leveor_test/theme/colors/colors.dart';
import 'package:leveor_test/theme/colors/styles.dart';
import 'package:leveor_test/widgets/radio_tile_widget.dart';

class DialogCardWidget extends StatefulWidget {
  const DialogCardWidget({super.key});

  @override
  State<DialogCardWidget> createState() => _DialogCardWidgetState();
}

class _DialogCardWidgetState extends State<DialogCardWidget> {
  int selectedValue = 0;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      insetPadding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
      title: Text(
        'Select Transport Type',
        style: AppStyles.bodyLarge,
      ),
      content: SizedBox(
        width: MediaQuery.of(context).size.width / 1.3,
        height: MediaQuery.of(context).size.height / 6.9,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RadioTileWidget(
              tileName: 'Pickup by Geocycle team',
              value: 1,
              selectedValue: selectedValue,
              onChanged: (value) {
                selectedValue = value!;
                setState(() {});
              },
            ),
            RadioTileWidget(
              tileName: 'Send by own vehicle',
              value: 2,
              selectedValue: selectedValue,
              onChanged: (value) {
                selectedValue = value!;
                setState(() {});
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
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: AppStyles.bodySmallForButton1,
            ),
          ),
        ),
        SizedBox(
          height: 44,
          width: 83,
          child: ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            style: AppStyles.buttonStyle,
            child: Text(
              'Ok',
              style: AppStyles.bodySmallForButton2,
            ),
          ),
        ),
      ],
    );
  }
}
