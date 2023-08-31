part of '_index.dart';

class SuisMessageRouter {
  static GoRouter get router => _router;

  static const String decision = '/decision';
  static const String messagesView = '/messagesView';
  static const String chatView = '/chatView';

  static final _router = GoRouter(
    initialLocation: messagesView,
    routes: [
      GoRoute(
        path: messagesView,
        name: messagesView,
        builder: (context, state) => const MessagesView(),
      ),
      GoRoute(
        path: chatView,
        name: chatView,
        builder: (context, state) => const ChatView(),
      ),
    ],
  );
}
