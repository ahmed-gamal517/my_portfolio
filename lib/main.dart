import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/router/app_router.dart';
import 'package:my_portofolio/core/utils/bloc_observer/bloc_observer.dart';
import 'package:my_portofolio/core/utils/themes/app_themes.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_state.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ThemeCubit(),
      child: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          final isDark = context.read<ThemeCubit>().isDark;
          return MaterialApp.router(
            title: AppStrings.appName,
            routerConfig: AppRoutes.router,
            debugShowCheckedModeBanner: false,
            theme: isDark ? AppThemes.darkTheme : AppThemes.lightTheme,
          );
        },
      ),
    );
  }
}
