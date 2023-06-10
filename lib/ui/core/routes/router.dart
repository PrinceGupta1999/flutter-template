import 'package:auto_route/auto_route.dart';
import 'package:flutter_demo/ui/core/pages/home.dart';

part 'router.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(initial: true, path: '/', page: HomeRoute.page),
      ];
}
