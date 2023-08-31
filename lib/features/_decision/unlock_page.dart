import 'package:flutter/material.dart';

class UnlockPage extends StatelessWidget {
  const UnlockPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Unlock Page'),
      ),
      body: Center(
        child: Text(
          'Unlock Page View',
          style: Theme.of(context).textTheme.titleLarge,
        ),
      ),
    );
  }
}
