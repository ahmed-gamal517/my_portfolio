class ProjectItemData {
  final String title;
  final String description;
  final String imagePath;
  final String githubUrl;
  final List<String> tags;
  final String category;

  const ProjectItemData({
    required this.title,
    required this.description,
    required this.imagePath,
    required this.githubUrl,
    required this.tags,
    required this.category,
  });
}
