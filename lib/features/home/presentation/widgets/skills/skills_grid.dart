import 'package:flutter/material.dart';
import 'package:my_portofolio/features/home/data/models/skill_card_item.dart';
import 'package:my_portofolio/features/home/presentation/widgets/skills/skill_item_tile.dart';

class SkillsGrid extends StatelessWidget {
  final List<SkillCardItem> items;
  final bool isDark;

  const SkillsGrid({super.key, required this.items, required this.isDark});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemCount: items.length,
      gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: 280,
        crossAxisSpacing: 14,
        mainAxisSpacing: 14,
        mainAxisExtent: 70,
      ),
      itemBuilder: (context, index) =>
          SkillItemTile(item: items[index], isDark: isDark),
    );
  }
}

