import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/core/widgets/adaptive_layout.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_state.dart';
import 'package:my_portofolio/features/home/presentation/widgets/desktop_home_screen/home_screen_desktop_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/mobile_home_screen/home_screen_mobile_view.dart';
import 'package:my_portofolio/features/home/presentation/widgets/tablet_home_screen/home_screen_tablet_view.dart';

class HomeScreenViewBody extends StatefulWidget {
  const HomeScreenViewBody({super.key});

  @override
  State<HomeScreenViewBody> createState() => _HomeScreenViewBodyState();
}

class _HomeScreenViewBodyState extends State<HomeScreenViewBody> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    precacheImage(const AssetImage(AppAssets.lightBackground), context);
    precacheImage(const AssetImage(AppAssets.darkBackground), context);
  }

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        final isDark = context.read<ThemeCubit>().isDark;
        return DecoratedBox(
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                isDark ? AppAssets.darkBackground : AppAssets.lightBackground,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Scaffold(
            backgroundColor: Colors.transparent,
            body: AdaptiveLayout(
              mobileLayout: (_) => const HomeScreenMobileView(),
              tabletLayout: (_) => const HomeScreenTabletView(),
              desktopLayout: (_) => const HomeScreenDesktopView(),
            ),
          ),
        );
      },
    );
  }
}
