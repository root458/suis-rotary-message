import 'package:flutter/material.dart';
import 'package:suis_message/l10n/l10n.dart';
import 'package:suis_message/utils/_index.dart';

class SuisMessage extends StatelessWidget {
  const SuisMessage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        appBarTheme: const AppBarTheme(color: Color(0xFF13B9FF)),
        colorScheme: ColorScheme.fromSwatch(
          accentColor: const Color(0xFF13B9FF),
        ),
      ),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: SuisMessageRouter.router,
    );
  }
}
