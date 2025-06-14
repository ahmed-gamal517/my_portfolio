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

class HomeScreenViewBody extends StatelessWidget {
  const HomeScreenViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BlocBuilder<ThemeCubit, ThemeState>(
        builder: (context, state) {
          return Container(
            decoration: BoxDecoration(
              color: Colors.transparent,
              image: DecorationImage(
                image:
                    BlocProvider.of<ThemeCubit>(context).isDark
                        ? const AssetImage(AppAssets.darkBackground)
                        : const AssetImage(AppAssets.lightBackground),

                fit: BoxFit.cover,
              ),
            ),
            child: AdaptiveLayout(
              mobileLayout: (context) => const HomeScreenMobileView(),
              tabletLayout: (context) => const HomeScreenTabletView(),
              desktopLayout: (context) => const HomeScreenDesktopView(),
            ),
          );
        },
      ),
    );
  }
}
