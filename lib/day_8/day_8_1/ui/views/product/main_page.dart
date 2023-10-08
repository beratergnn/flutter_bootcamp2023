import 'package:flutter/material.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/data/entity/product_model.dart';
import 'package:flutter_bootcamp2023/day_8/day_8_1/ui/views/product/detail_page.dart';

class Day8_1MainPage extends StatefulWidget {
  const Day8_1MainPage({super.key});

  @override
  State<Day8_1MainPage> createState() => _Day8_1MainPageState();
}

class _Day8_1MainPageState extends State<Day8_1MainPage> {
  List<ProductModel> productList = [];

  Future<List<ProductModel>> uploadProducts() async {
    productList = ProductModel.getProducts();
    return productList;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Main Page'),
      ),
      body: FutureBuilder<List<ProductModel>>(
          future: uploadProducts(),
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              var list = snapshot.data;

              return ListView.builder(
                itemCount: list!.length,
                itemBuilder: (context, index) {
                  var product = list[index];

                  return GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  Day8_1DetailPage(product: product)));
                    },
                    child: Card(
                      child: Padding(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(20),
                              child: Image.asset(
                                product.productImagePath,
                                height: 150,
                                width: 150,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  product.productName,
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  '${product.productPrice.toString()} ₺',
                                  style: TextStyle(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16,
                                  ),
                                ),
                                ElevatedButton(
                                    onPressed: () {}, child: Text('Sepet EKLE'))
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              );
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
