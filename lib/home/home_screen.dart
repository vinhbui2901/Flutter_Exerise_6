import 'package:flutter/material.dart';
import 'product_item.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: const Product_Item(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
        title: const Text('Home'),
        backgroundColor: Colors.red,
        actions: <Widget>[
          Stack(
            children: [
              Align(
                alignment: Alignment.centerRight,
                child: IconButton(
                  onPressed: () {},
                  // onPressed: () => Navigator.of(context).push(
                  //     MaterialPageRoute(builder: (context) => const MyCart())),
                  icon: const Icon(Icons.shopping_cart),
                ),
              ),
              const Align(
                alignment: Alignment.topRight,
                child: CircleAvatar(
                    backgroundColor: Colors.white, radius: 9, child: Text('0')),
              ),
            ],
          ),
        ]);
  }
}
