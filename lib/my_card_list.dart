import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'item_images.dart';

class MyCardList extends StatefulWidget {
  const MyCardList({Key? key}) : super(key: key);

  @override
  State<MyCardList> createState() => _MyCardListState();
}

class _MyCardListState extends State<MyCardList> {
  final List<int> item = <int>[1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  final List<int> price = <int>[200, 100, 50, 20, 30, 60, 11, 22, 9, 33];
  final List<int> subtotal = <int>[20, 30, 60, 11, 22, 9, 33, 200, 100, 50];
  var a = 0;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(15),
      itemCount: item.length,
      itemBuilder: (BuildContext context, int index) {
        return Container(
          height: 135,
          decoration: const BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.all(
              Radius.circular(20.0),
            ),
          ),
          child: Row(
            children: <Widget>[
              const Expanded(
                flex: 2,
                child: ItemImage(),
              ),
              Expanded(
                flex: 2,
                child: Container(
                  height: 135,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              "Item ${item[index]}",
                              style:
                                  const TextStyle(fontWeight: FontWeight.bold),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            const Icon(
                              Icons.delete,
                              color: Colors.red,
                            ),
                          ],
                        ),
                        const Divider(
                          color: Colors.transparent,
                        ),
                        RichText(
                          text: TextSpan(
                            text: 'Price: \$${price[index]}\n',
                            style: const TextStyle(color: Colors.black),
                            children: <TextSpan>[
                              TextSpan(
                                text: 'Sub Total: ',
                                style: const TextStyle(color: Colors.black),
                                children: <TextSpan>[
                                  TextSpan(
                                    text: "\$${subtotal[index]}",
                                    style:
                                        const TextStyle(color: Colors.orange),
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        const Divider(
                          color: Colors.transparent,
                          height: 22,
                        ),
                        Row(
                          children: const [
                            Text(
                              "Ships Free",
                              style: TextStyle(color: Colors.orange),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Expanded(
                flex: 2,
                child: Padding(
                  padding: const EdgeInsets.only(right: 5, bottom: 5),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          a != 0
                              ? IconButton(
                                  icon: const Icon(Icons.remove),
                                  color: Colors.red,
                                  onPressed: () => setState(() => a--),
                                )
                              : Container(),
                          Container(
                              height: 35,
                              width: 25,
                              alignment: Alignment.center,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                border: Border.all(
                                    color: Colors.grey.shade200, width: 0.1),
                                borderRadius: const BorderRadius.only(
                                    topLeft: Radius.circular(5),
                                    topRight: Radius.circular(5),
                                    bottomLeft: Radius.circular(5),
                                    bottomRight: Radius.circular(5)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.2),
                                    blurRadius: 0.1,
                                    offset: const Offset(1, 1),
                                  ),
                                ],
                              ),
                              child: Text(a.toString())),
                          IconButton(
                              color: Colors.green,
                              icon: const Icon(Icons.add),
                              onPressed: () => setState(() => a++)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      },
      separatorBuilder: (BuildContext context, int index) => const Divider(
        color: Colors.transparent,
      ),
    );
  }
}
