import 'package:flutter/material.dart';
import 'package:flutter_application_2/list%20views/listview%20scrolling/product.dart';
import 'package:flutter_application_2/list%20views/listview%20scrolling/product_Service.dart';

class LV4 extends StatelessWidget {
final products = ProductService().getProducts();
LV4({Key? key}) : super(key: key);
@override
Widget build(BuildContext context) {
return Scaffold(
appBar: AppBar(
title: const Text('Top Selling Products'),
),
body: SizedBox(
width: double.infinity,
height: 250.0,
child: ListView.builder(
itemCount: products.length,
itemBuilder: (context, index) {
return createProductItem(products[index]);
},
scrollDirection: Axis.horizontal,
padding: const EdgeInsets.all(8.0),
),
),
);
}
Widget createProductItem(Product product) {
return Padding(
padding: const EdgeInsets.all(8.0),
child: Card(
elevation: 6.0,
child: Container(
decoration: const BoxDecoration(
gradient: LinearGradient(
colors: [Colors.lightBlue, Colors.lightBlueAccent],
),
),
child: Column(
children: [
Text(
product.productName,
style: const TextStyle(fontWeight: FontWeight.bold),
),
Image(
image: NetworkImage(product.imageUrl),
width: 150,
height: 150,
),
Text('Rs. ${product.price}'),
],
),
),
),
);
}
}