class TimelineEntry {
  final String title;
  final String organization;
  final String period;
  final String location;
  final String? imagePath;
  final List<String> bullets;
  final List<String> tags;
  final bool isCurrent;

  const TimelineEntry({
    required this.title,
    required this.organization,
    required this.period,
    required this.location,
    required this.imagePath,
    required this.bullets,
    required this.tags,
    this.isCurrent = false,
  });
}
