import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';

class CustomProfileInfoButton extends StatelessWidget {
  const CustomProfileInfoButton({super.key, this.onPressed});
  final void Function()? onPressed;
  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: onPressed,
      height: MediaQuery.of(context).size.height * 0.05,
      minWidth: MediaQuery.of(context).size.width * 0.15,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(color: Theme.of(context).primaryColor, width: 1),
      ),
      elevation: 0,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightElevation: 0,
      hoverElevation: 0,
      padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.025),
      color:
          BlocProvider.of<ThemeCubit>(context).isDark
              ? AppColors.primarydarkModeColor
              : AppColors.btnColor,
      child: AutoSizeText(
        AppStrings.btnText,
        maxFontSize: 14,
        minFontSize: 10,
        style: Theme.of(context).textTheme.headlineMedium,
      ),
    );
  }
}
