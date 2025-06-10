import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/animations/slide_in.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_home_screen_app_bar.dart';
import 'package:my_portofolio/features/home/presentation/widgets/desktop_home_screen/home_screen_desktop_view_body.dart';

class HomeScreenDesktopView extends StatelessWidget {
  const HomeScreenDesktopView({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig.init(context);
    return BlocProvider(
      create: (context) => AppCubit(),
      child: SingleChildScrollView(
        physics: const NeverScrollableScrollPhysics(),
        child: Column(
          children: [
            const SlideInWidget(
              direction: SlideDirection.top,
              child: CustomHomeScreenAppBar(),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.04),
            const HomeScreenDesktopViewBody(),
          ],
        ),
      ),
    );
  }
}
