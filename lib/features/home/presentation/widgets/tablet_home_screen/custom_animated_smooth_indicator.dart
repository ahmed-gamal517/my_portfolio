import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class CustomAnimatedSmoothIndicator extends StatelessWidget {
  const CustomAnimatedSmoothIndicator({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppCubit, AppState>(
      builder: (context, state) {
        return CustomContainer(
          padding: const EdgeInsets.all(5),
          child: AnimatedSmoothIndicator(
            activeIndex: BlocProvider.of<AppCubit>(context).currPage,
            count: 5,
            axisDirection: Axis.vertical,
            onDotClicked:
                (index) => BlocProvider.of<AppCubit>(context).changePage(index),
            effect: WormEffect(
              dotHeight: MediaQuery.of(context).size.height * 0.02,
              dotWidth: MediaQuery.of(context).size.height * 0.02,
              activeDotColor: Theme.of(context).primaryColor,
            ),
          ),
        );
      },
    );
  }
}
