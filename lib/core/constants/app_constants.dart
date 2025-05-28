import 'package:flutter/material.dart';
import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/features/home/data/models/personal_info_model.dart';
import 'package:my_portofolio/features/home/data/models/social_media_model.dart';

List<SocialMediaModel> socialMediaList = [
  SocialMediaModel(
    logoPath: AppAssets.linkedInIcon,
    link: 'https://www.linkedin.com/in/ahmedgamal517/',
    borderColor: Color(0xff3662e3),
  ),
  SocialMediaModel(
    logoPath: AppAssets.gitHubIcon,
    link: 'https://github.com/ahmed-gamal517',
    borderColor: Colors.black,
  ),
];

List<PersonalInfoModel> personalInfoList = [
  PersonalInfoModel(logoPath: AppAssets.phoneIcon, text: '+20 01018468569'),
  PersonalInfoModel(
    logoPath: AppAssets.mailIcon,
    text: 'Ahmedgamal5179@gmail.com',
  ),
  PersonalInfoModel(logoPath: AppAssets.gpsIcon, text: 'Cairo, Egypt'),
  PersonalInfoModel(logoPath: AppAssets.calenderIcon, text: '1, Jan. 2001'),
];
