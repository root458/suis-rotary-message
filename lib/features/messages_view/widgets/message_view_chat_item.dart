import 'package:flutter/material.dart';

class MessageViewChatItem extends StatelessWidget {
  const MessageViewChatItem({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {},
      leading: Transform.translate(
        offset: const Offset(0, -15),
        child: CircleAvatar(
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
      ),
      title: Text(
        'Hassan',
        style: Theme.of(context).textTheme.titleLarge,
        overflow: TextOverflow.ellipsis,
      ),
      subtitle: Text(
        '''Hello there! How are you? I am going to the mall. Do you want to come with me?''',
        style: Theme.of(context).textTheme.bodyLarge,
        overflow: TextOverflow.ellipsis,
        maxLines: 3,
      ),
      trailing: Transform.translate(
        offset: const Offset(10, -35),
        child: Text(
          '12:00',
          style: Theme.of(context).textTheme.bodyLarge,
        ),
      ),
    );
  }
}
