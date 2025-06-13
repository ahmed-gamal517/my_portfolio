import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/features/home/presentation/view_model/app_cubit/app_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';

class PageInfoCustomContainer extends StatelessWidget {
  const PageInfoCustomContainer({
    super.key,
    required this.pageIndex,
    this.isPressed = false,
  });
  final bool isPressed;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        bottom: MediaQuery.of(context).size.height * 0.01,
      ),
      child: InkWell(
        onTap: () => BlocProvider.of<AppCubit>(context).changePage(pageIndex),
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          height: MediaQuery.of(context).size.height * 0.10,
          width: MediaQuery.of(context).size.height * 0.10,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: getContainerColor(context, isPressed),
          ),
          padding: EdgeInsets.all(MediaQuery.of(context).size.height * 0.002),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                pageInfoList[pageIndex].logoPath,
                fit: BoxFit.scaleDown,
                colorFilter: ColorFilter.mode(
                  isPressed
                      ? Colors.white
                      : BlocProvider.of<ThemeCubit>(context).isDark
                      ? Colors.white
                      : Colors.black,
                  BlendMode.srcIn,
                ),
                height: MediaQuery.of(context).size.height * 0.05,
                width: MediaQuery.of(context).size.height * 0.05,
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.005),
              AutoSizeText(
                pageInfoList[pageIndex].title,
                maxFontSize: 14,
                minFontSize: 6,
                overflow: TextOverflow.clip,
                maxLines: 1,
                style: Theme.of(context).textTheme.labelSmall!.copyWith(
                  color:
                      isPressed
                          ? Colors.white
                          : BlocProvider.of<ThemeCubit>(context).isDark
                          ? Colors.white
                          : Colors.black,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color getContainerColor(BuildContext context, bool isPressed) {
    if (BlocProvider.of<ThemeCubit>(context).isDark) {
      if (isPressed) {
        return AppColors.primarydarkModeColor;
      } else {
        return AppColors.darkBackground;
      }
    } else {
      if (isPressed) {
        return AppColors.primarylightModeColor;
      } else {
        return Theme.of(context).scaffoldBackgroundColor;
      }
    }
  }
}
