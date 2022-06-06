// ignore_for_file: avoid_unnecessary_containers, camel_case_types, unnecessary_string_interpolations

import 'package:flutter/material.dart';
import 'package:flutter_exercise_6/home/item.dart';
import '../model/product_data.dart';
import '../product_detail/product_detail_screen.dart';

class Product_Item extends StatefulWidget {
  const Product_Item({
    Key? key,
  }) : super(key: key);

  @override
  State<Product_Item> createState() => _Product_ItemState();
}

class _Product_ItemState extends State<Product_Item> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            color: const Color(0xffdcdcdc),
          ),
          Container(
            child: GridView.builder(
              itemCount: Product.products.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.92,
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (BuildContext context, int index) => Item(
                  product: Product.products[index],
                  index: index,
                  press: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => Product_Detail(
                                  product: Product.products[index],
                                )));
                  }),
            ),
          ),
        ],
      ),
    );
  }
}
