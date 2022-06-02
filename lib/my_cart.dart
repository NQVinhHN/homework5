import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'icon_cart.dart';
import 'my_card_list.dart';

class MyCart extends StatelessWidget {
  const MyCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.red,
        title: Row(
          children: const [
            Text(
              "My Cart",
            ),
            Spacer(),
            IconCart(),
          ],
        ),
      ),
      body: const MyCardList(),
    );
  }
}
