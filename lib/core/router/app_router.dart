import 'package:go_router/go_router.dart';
import 'package:my_portofolio/features/home/presentation/views/home_screen_view.dart';
import 'package:my_portofolio/features/splash/presentation/views/splash_screen_view.dart';

abstract class AppRoutes {
  static const kSplashScreen = '/';
  static const kHomeScreen = '/home';

  static final router = GoRouter(
    initialLocation: AppRoutes.kHomeScreen,
    routes: [
      GoRoute(
        path: kSplashScreen,
        builder: (context, state) => const SplashScreenView(),
      ),
      GoRoute(
        path: kHomeScreen,
        builder: (context, state) => const HomeScreenView(),
      ),

      // GoRoute(
      //   path: kDetailsView,
      //   builder: (context, state) => BlocProvider(
      //     create: (context) => SimilarBooksCubit(getIt.get<HomeRepoImpl>())
      //       ..fetchSimilarBooks(
      //           category: (state.extra as BookModel).volumeInfo.categories![0]),
      //     child: BookDetailsView(
      //       book: state.extra as BookModel,
      //     ),
      //   ),
      // ),
      // GoRoute(
      //   path: kSearchView,
      //   builder: (context, state) => const SearchView(),
      // ),
    ],
  );
}
