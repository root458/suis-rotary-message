part of '_index.dart';

class SuisMessageRouter {
  static GoRouter get router => _router;

  static const String homeRoute = '/';

  static final _router = GoRouter(
    initialLocation: homeRoute,
    routes: [
      GoRoute(
        path: homeRoute,
        name: homeRoute,
        builder: (context, state) => const CounterPage(),
      ),
    ],
  );
}
