import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/widgets/responsive_text.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_state.dart';

class CustomPersonalTitleWidget extends StatelessWidget {
  const CustomPersonalTitleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ThemeCubit, ThemeState>(
      builder: (context, state) {
        return Container(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuery.of(context).size.width * 0.01,
            vertical: MediaQuery.of(context).size.height * 0.005,
          ),
          decoration: BoxDecoration(
            border: Border.all(
              width: 0.5,
              color: Theme.of(context).primaryColor,
            ),
            borderRadius: BorderRadius.circular(5),
            color:
                BlocProvider.of<ThemeCubit>(context).isDark
                    ? const Color(0xff272522)
                    : AppColors.lightBackground,
          ),
          child: ResponsiveText(
            text: AppStrings.personalTitle,
            baseFontSize: 14,
            style: Theme.of(context).textTheme.labelMedium,
          ),
        );
      },
    );
  }
}
