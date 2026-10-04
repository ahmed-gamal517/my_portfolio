import 'package:my_portofolio/features/home/data/models/project_item_data.dart';

const List<ProjectItemData> projects = [
  ProjectItemData(
    title: 'QuickMart E-Commerce App',
    description:
        'A comprehensive cross-platform mobile shopping experience featuring Clean Architecture, BLoC state management, dynamic catalog filtering, cart state synchronization, and secure checkout flows.',
    imagePath: 'assets/images/quickmart_project.jpg',
    githubUrl: 'https://github.com/ahmed-gamal517/Afwra-QuickMart-Ecommerce-App',
    tags: ['Flutter', 'Clean Architecture', 'BLoC', 'REST API', 'Firebase'],
    category: 'E-Commerce & Retail',
  ),
  ProjectItemData(
    title: 'Out Or Not AI Weather App',
    description:
        'An intelligent weather forecasting application that leverages AI-driven meteorological models to analyze atmospheric data and deliver contextual outdoor activity recommendations.',
    imagePath: 'assets/images/out_or_not_project.png',
    githubUrl: 'https://github.com/ahmed-gamal517/weather-ai-app',
    tags: ['Flutter', 'AI Logic', 'OpenWeather API', 'MVVM', 'Geolocation'],
    category: 'AI & Utilities',
  ),
  ProjectItemData(
    title: 'Feastly AI Food Recommendation',
    description:
        'A personalized culinary assistant and recipe recommendation engine that suggests customized dishes based on user dietary preferences, pantry ingredients, and calorie goals.',
    imagePath: 'assets/images/feastly_project.png',
    githubUrl: 'https://github.com/Galal-20/feastly',
    tags: ['Flutter', 'Cubit', 'RESTful API', 'AI Algorithms', 'UI/UX'],
    category: 'Lifestyle & AI',
  ),
  ProjectItemData(
    title: 'Cattosa Animal Sound Identification',
    description:
        'An innovative mobile audio classification app utilizing on-device audio pattern matching and machine learning to recognize and analyze feline and domestic animal sounds.',
    imagePath: 'assets/images/cattoosa_project.png',
    githubUrl: 'https://github.com/ahmed-gamal517/cattoosa',
    tags: ['Flutter', 'Audio ML', 'Signal Processing', 'Clean Code'],
    category: 'Machine Learning',
  ),
];
