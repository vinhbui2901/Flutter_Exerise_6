// ignore_for_file: unnecessary_string_interpolations

import 'package:flutter/material.dart';
import '../model/product_data.dart';
import '../product_detail/product_detail_screen.dart';

class Item extends StatelessWidget {
  const Item({
    Key? key,
    required this.product,
    required this.press,
    required this.index,
  }) : super(key: key);
  final Product product;
  final GestureTapCallback press;
  final int index;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) => Product_Detail(
                      product: Product.products[index],
                    )));
      },
      child: Card(
        // padding: const EdgeInsets.only(right: 5, left: 5),
        color: Colors.white,
        child: Stack(children: [
          Column(
            children: [
              Image.network('${product.image}'),
              const SizedBox(height: 5),
              Flexible(
                child: Text(
                  '${product.name}',
                  overflow: TextOverflow.ellipsis,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'price:',
                    style: TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  const SizedBox(width: 5),
                  Text(
                    '${product.price}',
                    style: const TextStyle(
                      fontSize: 18,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.shopping_cart,
                      color: Colors.red,
                    ),
                    iconSize: 20,
                  ),
                ],
              ),
            ],
          ),
        ]),
      ),
    );
  }
}
