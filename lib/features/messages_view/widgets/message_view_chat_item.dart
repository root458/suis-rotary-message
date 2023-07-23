import 'package:flutter/material.dart';

class MessageViewChatItem extends StatelessWidget {
  const MessageViewChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        radius: 30,
        backgroundColor: Theme.of(context).colorScheme.primary,
        child: Text(
          'H',
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.primaryContainer,
                fontSize: 25,
              ),
        ),
      ),
      title: Text(
        'Hassan',
        style: Theme.of(context).textTheme.titleLarge,
      ),
      subtitle: Text(
        'Hello',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
      trailing: Text(
        '12:00',
        style: Theme.of(context).textTheme.bodyLarge,
      ),
    );
  }
}
