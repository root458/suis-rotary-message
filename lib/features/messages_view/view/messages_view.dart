import 'package:flutter/material.dart';
import 'package:suis_message/features/messages_view/widgets/_index.dart';

class MessagesView extends StatelessWidget {
  const MessagesView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          MessageViewAppBar(width: width),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              (context, index) => const MessageViewChatItem(),
              childCount: 10,
            ),
          ),
        ],
      ),
    );
  }
}
