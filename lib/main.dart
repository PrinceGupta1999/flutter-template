import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_demo/config/injection.dart';
import 'package:flutter_demo/ui/app.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  await SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(const ProviderApp());
  // await setupAppLink();
}

class ProviderApp extends StatelessWidget {
  const ProviderApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ProviderScope(child: App());
  }
}
