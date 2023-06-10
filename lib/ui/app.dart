import 'package:flutter/material.dart';
import 'package:flutter_demo/config/injection.dart';
import 'package:flutter_demo/ui/core/l10n/generated/l10n.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import 'core/routes/router.dart';

class App extends ConsumerWidget {
  final _appRouter = getIt<AppRouter>();

  App({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      routerConfig: _appRouter.config(),
      debugShowCheckedModeBanner: false,
      localizationsDelegates: const [
        S.delegate,
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: S.delegate.supportedLocales,
      title: 'Flutter Demo',
    );
  }
}
