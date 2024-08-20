import 'package:go_router/go_router.dart';
import 'package:port/src/screens/HomePages/homepage.dart';
import 'package:port/src/screens/Projects/projects.dart';

GoRouter route = GoRouter(initialLocation: '/Home', routes: [
  GoRoute(
      path: '/Home',
      name: Routes.splash.name,
      builder: (context, state) => const Homepage()),
  GoRoute(
      path: '/projects',
      name: Routes.projects.name,
      builder: (context, state) => const Projects())
]);

enum Routes { splash, home, projects }
