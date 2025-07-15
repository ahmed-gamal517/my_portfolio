import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/router/app_router.dart';
import 'package:my_portofolio/core/utils/bloc_observer/bloc_observer.dart';
import 'package:my_portofolio/core/utils/themes/app_themes.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_state.dart';
import 'package:web/web.dart' as web;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Future.delayed(const Duration(milliseconds: 100));
  if (kIsWeb) {
    final splash = web.document.getElementById('splash');
    splash?.remove();
  }

  Bloc.observer = MyBlocObserver();
  runApp(BlocProvider(create: (context) => ThemeCubit(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return MaterialApp.router(
          title: AppStrings.appName,
          routerConfig: AppRoutes.router,
          debugShowCheckedModeBanner: false,
          theme:
              BlocProvider.of<ThemeCubit>(context).isDark
                  ? AppThemes.darkTheme
                  : AppThemes.lightTheme,
        );
      },
    );
  }
}
