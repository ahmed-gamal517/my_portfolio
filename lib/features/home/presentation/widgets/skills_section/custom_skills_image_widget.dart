import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:my_portofolio/features/home/data/models/skills_model.dart';

class CustomSkillsImageWidget extends StatelessWidget {
  const CustomSkillsImageWidget({super.key, required this.skill});

  final SkillsModel skill;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.10,
      width: MediaQuery.of(context).size.height * 0.10,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          const BoxShadow(
            color: Color(0xffB7A261),
            spreadRadius: 1,
            blurRadius: 3,
          ),
        ],
        color: Colors.white,
      ),
      child: Center(
        child: SvgPicture.asset(
          skill.iconPath,
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height * 0.05,
          width: MediaQuery.of(context).size.height * 0.05,
        ),
      ),
    );
  }
}
