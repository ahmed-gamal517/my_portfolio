import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/tablet_home_screen/home_screen_tablet_view_body.dart';

class HomeScreenTabletView extends StatelessWidget {
  const HomeScreenTabletView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AppCubit(),
      child: const HomeScreenTabletViewBody(),
    );
  }
}
