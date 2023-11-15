import 'package:go_router/go_router.dart';
import 'package:proyecto_base/app/presentation/views/app_theme/app_theme_view.dart';

import 'package:proyecto_base/app/presentation/views/views_links.dart';

final appRouter = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        name: HomeView.name,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/app_theme',
        name: AppThemeView.name,
        builder: (context, state) => const AppThemeView(),
      ),
    ]
);