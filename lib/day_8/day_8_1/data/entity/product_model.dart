class ProductModel {
  final int productId;
  final String productName;
  final String productImagePath;
  final int productPrice;

  ProductModel(
      {required this.productId,
      required this.productName,
      required this.productImagePath,
      required this.productPrice});

  static List<ProductModel> getProducts() {
    List<ProductModel> productList = [];

    productList.add(
      ProductModel(
          productId: 1,
          productName: 'Macbook Pro 14',
          productImagePath: 'assets/day8/ic_macbook.jpg',
          productPrice: 43000),
    );
    productList.add(
      ProductModel(
          productId: 2,
          productName: 'Rayban Club Master',
          productImagePath: 'assets/day8/ic_sunglasses.png',
          productPrice: 2500),
    );
    productList.add(
      ProductModel(
          productId: 3,
          productName: 'Sony ZX Series',
          productImagePath: 'assets/day8/ic_headset.png',
          productPrice: 6899),
    );
    productList.add(
      ProductModel(
          productId: 4,
          productName: 'Gio Armani',
          productImagePath: 'assets/day8/ic_perfume.jpg',
          productPrice: 2000),
    );
    productList.add(
      ProductModel(
          productId: 5,
          productName: 'Dyson V15',
          productImagePath: 'assets/day8/ic_vacuum-cleaner.jpg',
          productPrice: 43000),
    );
    productList.add(
      ProductModel(
          productId: 6,
          productName: 'Iphone 14',
          productImagePath: 'assets/day8/ic_phone.jpg',
          productPrice: 32000),
    );
    return productList;
  }
}
