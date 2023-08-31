import 'package:flutter/material.dart';

class Decision extends StatelessWidget {
  const Decision({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Text(
          'Decision Page',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
