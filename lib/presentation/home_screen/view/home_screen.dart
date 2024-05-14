import 'package:flutter/material.dart';
import 'package:leveor_test/widgets/dialog_card_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (context) => const DialogCardWidget(),
            );
          },
          child: const Text('Open Dialog'),
        ),
      ),
    );
  }
}
