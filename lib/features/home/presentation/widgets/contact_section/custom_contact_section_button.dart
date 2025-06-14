import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_strings.dart';
import 'package:my_portofolio/core/utils/size_config/size_config.dart';
import 'package:my_portofolio/features/home/presentation/widgets/profile_info_section/custom_profile_info_button.dart';

class CustomContactSectionButton extends StatelessWidget {
  const CustomContactSectionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            width:
                SizeConfig.width < 600
                    ? MediaQuery.of(context).size.width * 0.4
                    : MediaQuery.of(context).size.width * 0.2,
            child: CustomProfileInfoButton(
              onPressed: () {},
              btnText: AppStrings.contactMe,
            ),
          ),
        ],
      ),
    );
  }
}
