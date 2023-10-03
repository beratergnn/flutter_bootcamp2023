class CategoryImageModel {
  final String imagePath;
  final String title;
  final String location;
  final String price;

  CategoryImageModel(
      {required this.imagePath,
      required this.title,
      required this.location,
      required this.price});

  static List<CategoryImageModel> getImages() {
    List<CategoryImageModel> categoryImage = [];

    categoryImage.add(
      CategoryImageModel(
          title: 'Rinjani Mountain',
          imagePath: 'assets/ic_cat_image1.png',
          location: 'Lombok, Indonesia',
          price: '\$48'),
    );
    categoryImage.add(
      CategoryImageModel(
          title: 'Bromo Mountain',
          imagePath: 'assets/ic_cat_image2.png',
          location: 'East Java, Indonesia',
          price: '\$52'),
    );

    return categoryImage;
  }
}
