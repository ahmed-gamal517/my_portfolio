import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:my_portofolio/core/constants/app_colors.dart';
import 'package:my_portofolio/core/constants/app_constants.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/functions/open_link.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_cubit.dart';
import 'package:my_portofolio/features/home/presentation/view_model/theme_cubit/theme_state.dart';
import 'package:my_portofolio/features/home/presentation/widgets/custom_container.dart';

import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_personal_info_conatiner.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_personal_name_widget.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_personal_title_widget.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_profile_image_widget.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_profile_info_button.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_social_media_links_widget.dart';

class ProfileInfoSectionBody extends StatelessWidget {
  const ProfileInfoSectionBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      alignment: Alignment.topCenter,
      children: [
        CustomContainer(height: MediaQuery.of(context).size.height * 0.7),
        Positioned(
          top: MediaQuery.of(context).size.height * 0.07 * -1,
          child: Column(
            children: [
              const CustomProfileImageWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const CustomPersonalNameWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const CustomPersonalTitleWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              const CustomSocialMediaLinksWidget(),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              BlocBuilder<ThemeCubit, ThemeState>(
                builder: (context, state) {
                  return CustomPersonalInfoContainer(
                    containerColor:
                        BlocProvider.of<ThemeCubit>(context).isDark
                            ? AppColors.primarydarkModeColor
                            : AppColors.lightContainerColor,
                  );
                },
              ),
              SizedBox(height: MediaQuery.of(context).size.height * 0.01),
              CustomProfileInfoButton(
                btnText: AppStrings.btnText,
                onPressed: () => openLink(cvLink),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
