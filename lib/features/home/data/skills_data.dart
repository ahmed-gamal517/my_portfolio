import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/features/home/data/models/skill_card_item.dart';

const List<SkillCardItem> coreSkills = [
  SkillCardItem(
    name: 'Flutter',
    iconPath: AppAssets.flutterIcon,
    level: 'Advanced',
    category: 'Framework',
  ),
  SkillCardItem(
    name: 'Dart',
    iconPath: AppAssets.dartIcon,
    level: 'Advanced',
    category: 'Language',
  ),
];

const List<SkillCardItem> architectureSkills = [
  SkillCardItem(
    name: 'Clean Architecture',
    iconPath: AppAssets.cleanArchitectureLogo,
    level: 'Expert',
    category: 'Architecture',
  ),
  SkillCardItem(
    name: 'BLoC & Cubit',
    iconPath: AppAssets.flutterIcon,
    level: 'Advanced',
    category: 'State Mgmt',
  ),
  SkillCardItem(
    name: 'API Integration',
    iconPath: AppAssets.apiIntegerationLogo,
    level: 'Advanced',
    category: 'Networking',
  ),
  SkillCardItem(
    name: 'Unit Testing',
    iconPath: AppAssets.testingLogo,
    level: 'Proficient',
    category: 'Quality',
  ),
];

const List<SkillCardItem> backendSkills = [
  SkillCardItem(
    name: 'Firebase',
    iconPath: AppAssets.firebaseIcon,
    level: 'Advanced',
    category: 'Backend / BaaS',
  ),
];

const List<SkillCardItem> toolingSkills = [
  SkillCardItem(
    name: 'Git',
    iconPath: AppAssets.gitIcon,
    level: 'Proficient',
    category: 'VCS',
  ),
  SkillCardItem(
    name: 'GitHub',
    iconPath: AppAssets.gitHubIcon,
    level: 'Advanced',
    category: 'Collaboration',
  ),
  SkillCardItem(
    name: 'Android Studio',
    iconPath: AppAssets.androidStudioLogo,
    level: 'Advanced',
    category: 'IDE',
  ),
  SkillCardItem(
    name: 'VS Code',
    iconPath: AppAssets.visualStudioCodeLogo,
    level: 'Advanced',
    category: 'Editor',
  ),
  SkillCardItem(
    name: 'Postman',
    iconPath: AppAssets.postmanLogo,
    level: 'Proficient',
    category: 'API Testing',
  ),
  SkillCardItem(
    name: 'Figma',
    iconPath: AppAssets.figmaIcon,
    level: 'Proficient',
    category: 'UI/UX Design',
  ),
];
