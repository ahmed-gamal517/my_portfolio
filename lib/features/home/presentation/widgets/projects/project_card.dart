import 'package:flutter/material.dart';
import 'package:my_portofolio/core/widgets/glass_container.dart';
import 'package:my_portofolio/features/home/data/models/project_item_data.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects/project_card_content.dart';
import 'package:my_portofolio/features/home/presentation/widgets/projects/project_card_image.dart';

class ProjectCard extends StatefulWidget {
  final ProjectItemData project;
  final bool isDark;
  final double imageHeight;

  const ProjectCard({
    super.key,
    required this.project,
    required this.isDark,
    this.imageHeight = 200,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GlassContainer(
        borderRadius: 20,
        isHoverable: true,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ProjectCardImage(
              imagePath: widget.project.imagePath,
              category: widget.project.category,
              isDark: widget.isDark,
              isHovered: _isHovered,
              height: widget.imageHeight,
            ),
            ProjectCardContent(
              project: widget.project,
              isDark: widget.isDark,
            ),
          ],
        ),
      ),
    );
  }
}

