import 'package:flutter_demo/ui/core/routes/router.dart';
import 'package:injectable/injectable.dart';

@module
abstract class UiInjectableModule {
  @lazySingleton
  AppRouter get appRouter => AppRouter();
}
