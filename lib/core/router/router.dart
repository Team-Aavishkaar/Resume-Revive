import 'package:go_router/go_router.dart';
import 'package:resume_revive/features/auth/presentation/auth_screen.dart';

final GoRouter router = GoRouter(
  initialLocation: '/home',
  routes: [
    GoRoute(
      path: '/home',
      builder: (context, state) => const AuthScreen(),
    ),
    // GoRoute(
    //   path: '/search',
    //   builder: (context, state) => const SearchPage(),
    // ),
    // GoRoute(
    //   path: '/profile',
    //   builder: (context, state) => const ProfilePage(),
    // ),
  ],
);