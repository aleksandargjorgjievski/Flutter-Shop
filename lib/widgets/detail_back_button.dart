import 'package:flutter/material.dart';

class DetailBackButton extends StatelessWidget {
  const DetailBackButton({super.key});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton.extended(
      onPressed: () => Navigator.pop(context),
      tooltip: 'Share',
      label: const Text("Back", style: TextStyle(
        color: Colors.black,
      )),
      backgroundColor: Colors.green,
      icon: const Icon(Icons.arrow_back_ios_new_rounded),
    );
  }
}
