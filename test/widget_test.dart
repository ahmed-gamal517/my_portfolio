import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:my_portofolio/core/widgets/badge_chip.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';
import 'package:my_portofolio/core/widgets/gradient_button.dart';
import 'package:my_portofolio/core/widgets/section_header.dart';
import 'package:my_portofolio/features/home/data/models/project_item_data.dart';
import 'package:my_portofolio/features/home/presentation/widgets/contact/contact_footer.dart';
import 'package:my_portofolio/features/home/presentation/widgets/hero/hero_metrics_row.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects/project_card.dart';

void main() {
  testWidgets('Design System widgets render correctly',
      (WidgetTester tester) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Column(
            children: [
              const SectionHeader(
                title: 'Featured Projects',
                subtitle: 'Test subtitle',
              ),
              const BadgeChip(label: 'Flutter & Dart'),
              const GlassContainer(
                child: Text('Glass Content'),
              ),
              GradientButton(
                text: 'Click Me',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.text('Featured Projects'), findsOneWidget);
    expect(find.text('Test subtitle'), findsOneWidget);
    expect(find.text('Flutter & Dart'), findsOneWidget);
    expect(find.text('Glass Content'), findsOneWidget);
    expect(find.text('Click Me'), findsOneWidget);
  });

  testWidgets('HeroMetricsRow renders cleanly on small mobile viewport',
      (WidgetTester tester) async {
    tester.view.physicalSize = const Size(360, 640);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: Center(
            child: SizedBox(
              width: 320,
              child: HeroMetricsRow(isDark: true),
            ),
          ),
        ),
      ),
    );

    expect(find.text('2+'), findsOneWidget);
    expect(find.text('4+'), findsOneWidget);
    expect(find.text('CS Grad'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });

  testWidgets('ContactFooter renders without overflow on mobile viewport',
      (WidgetTester tester) async {
    tester.view.physicalSize = const Size(360, 640);
    tester.view.devicePixelRatio = 1.0;
    addTearDown(tester.view.resetPhysicalSize);

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ContactFooter(
            isDark: true,
            onBackToTop: () {},
          ),
        ),
      ),
    );

    expect(find.text('Ahmed Gamal'), findsOneWidget);
    expect(find.text('Engineered with Flutter Web'), findsOneWidget);
    expect(find.textContaining('2025-2026'), findsNothing);
    expect(tester.takeException(), isNull);
  });

  testWidgets('ProjectCard renders safely in unbounded height ListView without flex crash',
      (WidgetTester tester) async {
    const testProject = ProjectItemData(
      title: 'Test Project',
      category: 'Mobile App',
      description: 'A test Flutter project with comprehensive features and clean architecture.',
      tags: ['Flutter', 'Dart', 'BLoC'],
      githubUrl: 'https://github.com/example/test',
      imagePath: 'assets/images/placeholder.png',
    );

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: ListView(
            children: const [
              ProjectCard(
                project: testProject,
                isDark: true,
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.text('Test Project'), findsOneWidget);
    expect(find.text('Mobile App'), findsOneWidget);
    expect(find.text('View Code on GitHub'), findsOneWidget);
    expect(tester.takeException(), isNull);
  });
}


