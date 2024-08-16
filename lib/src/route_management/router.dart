import 'package:go_router/go_router.dart';
import 'package:port/src/screens/HomePages/homepage.dart';

GoRouter route = GoRouter(initialLocation: '/Home', routes: [
  GoRoute(
      path: '/Home',
      name: Routes.splash.name,
      builder: (context, state) => const Homepage())
]);

enum Routes {
  splash,
  home,
}
