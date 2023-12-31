import 'package:go_router/go_router.dart';
import 'package:proyecto_base/app/presentation/views/views_links.dart';

final appRouter = GoRouter(
  initialLocation: '/register',
    routes: [
      GoRoute(
        path: '/',
        name: HomeView.name,
        builder: (context, state) => const HomeView(),
      ),
      GoRoute(
        path: '/login',
        name: LoginView.name,
        builder: (context, state) => LoginView(),
      ),
      GoRoute(
        path: '/register',
        name: RegisterView.name,
        builder: (context, state) => RegisterView(),
      ),
    ]
);