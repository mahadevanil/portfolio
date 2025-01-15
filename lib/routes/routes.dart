import 'package:go_router/go_router.dart';

import '../constants/route_constants.dart';
import '../screens/landing/landing.screen.dart';

final router = GoRouter(
  routes: [
    //*-------(landing screen)
    GoRoute(
      path: RouteConstants.path.initial,
      builder: (context, state) => const LandingScreen(),
    ),
  ],
);
