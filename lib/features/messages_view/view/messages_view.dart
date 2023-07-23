import 'package:flutter/material.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'Messages',
          style: Theme.of(context).textTheme.displayLarge,
        ),
      ),
    );
  }
}
