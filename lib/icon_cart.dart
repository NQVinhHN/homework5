import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconCart extends StatelessWidget {
  const IconCart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.shopping_cart),
      onPressed: () {
        showModalBottomSheet<void>(
          context: context,
          builder: (BuildContext context) {
            return Container(
              alignment: Alignment.center,
              padding: const EdgeInsets.all(10),
              height: 85,
              color: Colors.grey.shade500,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: const [
                      Text(
                        'Checkout Price:',
                        style: TextStyle(fontSize: 14),
                      ),
                      Spacer(),
                      Text(
                        'Rs. 5000',
                        style: TextStyle(
                            fontSize: 14, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  SizedBox(
                    // color: Colors.red,
                    width: MediaQuery.of(context).size.width,
                    child: ElevatedButton(
                      child: const Text('Checkout'),
                      onPressed: () => Navigator.pop(context),
                      style: ElevatedButton.styleFrom(
                          primary: Colors.red,
                          textStyle: const TextStyle(
                              fontSize: 25, fontWeight: FontWeight.bold)),
                    ),
                  ),
                ],
              ),
            );
          },
        );
      },
    );
  }
}
