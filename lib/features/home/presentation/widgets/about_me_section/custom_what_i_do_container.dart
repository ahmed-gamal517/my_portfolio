import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/custom_what_i_do_container_body.dart';
import 'package:my_portofolio/features/home/presentation/widgets/about_me_section/custom_what_i_do_image_widget.dart';

class CustomWhatIDoContainer extends StatelessWidget {
  const CustomWhatIDoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.zero,
      height: MediaQuery.of(context).size.height * 0.18,
      width: MediaQuery.of(context).size.height * 0.45,
      decoration: BoxDecoration(
        border: Border.all(color: Theme.of(context).primaryColor, width: 2),
        color:
            BlocProvider.of<ThemeCubit>(context).isDark
                ? AppColors.primarydarkModeColor
                : const Color(0xffFDF4F4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        spacing: MediaQuery.of(context).size.width * 0.005,
        children: [
          const CustomWhatIDoImageWidget(),
          const Expanded(child: CustomWhatIDoContainerBody()),
        ],
      ),
    );
  }
}
