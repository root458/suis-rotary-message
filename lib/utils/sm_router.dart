part of '_index.dart';

class SuisMessageRouter {
  static GoRouter get router => _router;

  static const String messagesView = '/';

  static final _router = GoRouter(
    initialLocation: messagesView,
    routes: [
      GoRoute(
        path: messagesView,
        name: messagesView,
        builder: (context, state) => const MessagesView(),
      ),
    ],
  );
}
