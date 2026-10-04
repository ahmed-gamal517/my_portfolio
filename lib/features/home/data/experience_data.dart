import 'package:my_portofolio/core/constants/app_assets.dart';
import 'package:my_portofolio/features/home/data/models/timeline_entry.dart';

const List<TimelineEntry> workExperience = [
  TimelineEntry(
    title: 'Teaching Assistant',
    organization: 'MTI University',
    period: 'Dec 2024 - Present',
    location: 'Cairo, Egypt',
    imagePath: AppAssets.universityImage,
    bullets: [
      'Mentoring undergraduate CS students in algorithms, data structures, and OOP principles.',
      'Supervising programming labs, evaluating code quality, and conducting technical reviews.',
      'Reinforcing fundamental computer science theory with modern practical programming practices.',
    ],
    tags: ['Mentorship', 'Algorithms', 'OOP', 'Code Quality'],
    isCurrent: true,
  ),
  TimelineEntry(
    title: 'Flutter Developer Intern',
    organization: 'Cellula Technologies',
    period: 'Feb 2025 - Mar 2025',
    location: 'Cairo, Egypt',
    imagePath: AppAssets.cellulaTechnologiesLogo,
    bullets: [
      'Collaborated with senior engineers on cross-platform Flutter mobile applications.',
      'Implemented responsive UI screens from Figma specs and integrated RESTful APIs.',
      'Applied BLoC state management and Clean Architecture guidelines in sprint cycles.',
    ],
    tags: ['Flutter', 'REST APIs', 'BLoC', 'Figma'],
  ),
];

const List<TimelineEntry> education = [
  TimelineEntry(
    title: "Bachelor's in Computer Science",
    organization: 'Modern University for Technology & Information (MTI)',
    period: '2019 - 2023',
    location: 'Cairo, Egypt',
    imagePath: AppAssets.universityImage,
    bullets: [
      'Graduated with honors in Computer Science.',
      'Curriculum emphasis on Software Architecture, Operating Systems, Database Systems, and Mobile Computing.',
      'Graduation project focused on real-world software solutions and mobile engineering.',
    ],
    tags: ['Computer Science', 'Data Structures', 'Software Eng', 'Databases'],
  ),
  TimelineEntry(
    title: 'Military Service Completion',
    organization: 'Egyptian Armed Forces',
    period: 'Dec 2023 - Dec 2024',
    location: 'Egypt',
    imagePath: null,
    bullets: [
      'Completed one year of mandatory national military service with distinction.',
      'Demonstrated disciplined teamwork, time management, problem-solving, and adaptability under pressure.',
    ],
    tags: ['Leadership', 'Discipline', 'Resilience'],
  ),
];
