import 'package:go_router/go_router.dart';
import 'package:my_portofolio/features/home/presentation/views/home_screen_view.dart';

abstract class AppRoutes {
  static const kHomeScreen = '/';

  static final router = GoRouter(
    initialLocation: kHomeScreen,
    routes: [
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreenView(),
      ),
    ],
  );
}
