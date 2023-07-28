class ChecklistItem {
  final String title;
  final String description;
  bool isChecked;
  String imageUrl;

  ChecklistItem({
    required this.title,
    required this.description,
    this.isChecked = false,
    this.imageUrl = '',
  });
}