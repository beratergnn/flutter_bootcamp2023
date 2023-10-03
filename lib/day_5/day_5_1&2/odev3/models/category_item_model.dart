class CategoryItemModel {
  final String title;
  final String imagePath;

  CategoryItemModel({required this.imagePath, required this.title});

  static List<CategoryItemModel> getItems() {
    List<CategoryItemModel> categoryItems = [];

    categoryItems.add(CategoryItemModel(
      title: 'Mountain',
      imagePath: 'assets/ic_mountain.png',
    ));
    categoryItems.add(CategoryItemModel(
      title: 'Waterfall',
      imagePath: 'assets/ic_waterfall.png',
    ));
    categoryItems.add(CategoryItemModel(
      title: 'River',
      imagePath: 'assets/ic_river.png',
    ));
    categoryItems.add(CategoryItemModel(
      title: 'Forest',
      imagePath: 'assets/ic_forest.png',
    ));

    return categoryItems;
  }
}
