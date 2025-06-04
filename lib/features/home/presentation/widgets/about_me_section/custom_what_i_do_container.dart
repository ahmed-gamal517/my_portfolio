import 'package:flutter/material.dart';
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
        color: Color(0xffFDF4F4),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Row(
        spacing: MediaQuery.of(context).size.width * 0.01,
        children: [
          CustomWhatIDoImageWidget(),
          Expanded(child: CustomWhatIDoContainerBody()),
        ],
      ),
    );
  }
}
