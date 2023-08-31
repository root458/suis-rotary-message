part of '_index.dart';

class SuisMessageRouter {
  static GoRouter get router => _router;

  static const String decision = '/';
  static const String unlockView = '/unlockView';
  static const String messagesView = '/messagesView';
  static const String chatView = '/chatView';

  static final _router = GoRouter(
    initialLocation: decision,
    routes: [
      GoRoute(
        path: decision,
        name: decision,
        builder: (context, state) => const Decision(),
      ),
      GoRoute(
        path: unlockView,
        name: unlockView,
        builder: (context, state) => const UnlockPage(),
      ),
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
