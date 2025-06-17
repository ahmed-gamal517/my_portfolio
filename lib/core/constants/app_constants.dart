import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/features/home/data/models/experience_model.dart';
import 'package:my_portofolio/features/home/data/models/page_info_model.dart';
import 'package:my_portofolio/features/home/data/models/personal_info_model.dart';
import 'package:my_portofolio/features/home/data/models/projects_model.dart';
import 'package:my_portofolio/features/home/data/models/skills_model.dart';
import 'package:my_portofolio/features/home/data/models/social_media_model.dart';

List<SocialMediaModel> socialMediaList = [
  SocialMediaModel(
    logoPath: AppAssets.linkedInIcon,
    link: 'https://www.linkedin.com/in/ahmedgamal517/',
    borderColor: const Color(0xff3662e3),
  ),
  SocialMediaModel(
    logoPath: AppAssets.gitHubIcon,
    link: 'https://github.com/ahmed-gamal517',
    borderColor: Colors.black,
  ),
  SocialMediaModel(
    logoPath: AppAssets.whatsAppIcon,
    link: 'https://wa.me/+201018468569',
    borderColor: Colors.green,
  ),
];

List<PersonalInfoModel> personalInfoList = [
  PersonalInfoModel(logoPath: AppAssets.phoneIcon, text: '+20 1018468569'),
  PersonalInfoModel(
    logoPath: AppAssets.mailIcon,
    text: 'ahmedgamal5179@gmail.com',
  ),
  PersonalInfoModel(logoPath: AppAssets.gpsIcon, text: 'Cairo, Egypt'),
  PersonalInfoModel(logoPath: AppAssets.calenderIcon, text: '1, Jan. 2001'),
];

List<PageInfoModel> pageInfoList = [
  PageInfoModel(title: 'About', logoPath: AppAssets.aboutIcon),
  PageInfoModel(title: 'Experience', logoPath: AppAssets.expericeIcon),
  PageInfoModel(title: 'Projects', logoPath: AppAssets.projectsIcon),
  PageInfoModel(title: 'Skills', logoPath: AppAssets.skillsIcon),
  PageInfoModel(title: 'Contact', logoPath: AppAssets.contactIcon),
];
List<ExperienceModel> experienceList = [
  ExperienceModel(
    company: 'MTI University',
    role: 'Teaching Assisstant',
    period: 'Dec 2024 - Present',
    imagePath: AppAssets.universityImage,
  ),
  ExperienceModel(
    company: 'Cellula Technologies',
    role: 'Flutter Developer Intern',
    period: 'Feb 2025 - Mar 2025',
    imagePath: AppAssets.cellulaTechnologiesLogo,
  ),
];

List<ProjectsModel> projectsList = [
  ProjectsModel(
    title: 'QuickMart E-Commerce App',
    linkText: 'GitHub',
    imagePath: 'assets/images/quickmart_project.jpg',
    link: 'https://github.com/ahmed-gamal517/Afwra-QuickMart-Ecommerce-App',
  ),
  ProjectsModel(
    title: 'Out Or Not Ai Weather App',
    linkText: 'GitHub',
    imagePath: 'assets/images/out_or_not_project.png',
    link: 'https://github.com/ahmed-gamal517/weather-ai-app',
  ),
  ProjectsModel(
    title: 'Feastly Ai Food Recommendation App',
    linkText: 'GitHub',
    imagePath: 'assets/images/feastly_project.png',
    link: 'https://github.com/Galal-20/feastly',
  ),
  ProjectsModel(
    title: 'Cattosa Animal Sound Identification App',
    linkText: 'GitHub',
    imagePath: 'assets/images/cattoosa_project.png',
    link: 'https://github.com/ahmed-gamal517/cattoosa',
  ),
];

List<SkillsModel> skills = [
  SkillsModel(name: 'Dart', iconPath: AppAssets.dartIcon),
  SkillsModel(name: 'Flutter', iconPath: AppAssets.flutterIcon),
  SkillsModel(
    name: 'Clean Architecture',
    iconPath: AppAssets.cleanArchitectureLogo,
  ),
  SkillsModel(name: 'Api Integration', iconPath: AppAssets.apiIntegerationLogo),
  SkillsModel(name: 'Firebase', iconPath: AppAssets.firebaseIcon),
  SkillsModel(name: 'Git', iconPath: AppAssets.gitIcon),
  SkillsModel(name: 'Unit Testing', iconPath: AppAssets.testingLogo),
];

List<SkillsModel> toolsAndSoftware = [
  SkillsModel(name: 'VS Code', iconPath: AppAssets.visualStudioCodeLogo),
  SkillsModel(name: 'Android Studio', iconPath: AppAssets.androidStudioLogo),
  SkillsModel(name: 'GitHub', iconPath: AppAssets.gitHubIcon),

  SkillsModel(name: 'Postman', iconPath: AppAssets.postmanLogo),
  SkillsModel(name: 'Figma', iconPath: AppAssets.figmaIcon),
];

const String cvLink =
    'https://drive.google.com/file/d/19olVAPUE7dQ1cue18kSUeJlkRnlDauJj/view?usp=sharing';
