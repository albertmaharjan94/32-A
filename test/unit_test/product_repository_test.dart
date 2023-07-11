
import 'package:fake_cloud_firestore/fake_cloud_firestore.dart';
import 'package:flutter_project/models/ProductModel.dart';
import 'package:flutter_project/repositories/ProductRepository.dart';
import 'package:flutter_project/services/FirebaseService.dart';
import 'package:flutter_test/flutter_test.dart';

Future<void> main() async {
  FirebaseService.db = FakeFirebaseFirestore();

  final ProductRepository productRepository = ProductRepository();

  test("Test to create product", () async {
    final response = await productRepository.createProduct(ProductModel(
      name: "Test product",
      price: 123.213
    ));
    final data = await response.get();
    final actual = data.data().name.toString();
    final expected = "Test product";
    expect(actual, expected);
  });

  test("Test to get one product", () async {
    final response = await productRepository.getOneProduct("test");
    final actual = response;
    final expected = null;
    expect(actual, expected);
  });

}