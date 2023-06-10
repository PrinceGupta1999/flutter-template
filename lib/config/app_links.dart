// import 'package:app_links/app_links.dart';
// import 'package:flutter_demo/config/injection.dart';
// import 'package:flutter_demo/ui/core/routes/router.dart';

// Future<void> setupAppLink() async {
//   final appLinks = AppLinks();
//   final appRouter = getIt<AppRouter>();

//   // Get the initial / first link.
//   // This is useful when app was terminated (i.e. not started)
//   final uri = await appLinks.getInitialAppLink();
//   if (uri != null && uri.hasFragment) {
//     await appRouter.navigateNamed(uri.fragment);
//   }
//   appLinks.uriLinkStream.listen((uri) {
//     if (uri.hasFragment) {
//       appRouter.navigateNamed(uri.fragment);
//     }
//   });
// }
