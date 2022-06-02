import 'package:flutter/cupertino.dart';

class ItemImage extends StatelessWidget {
  const ItemImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      height: 135,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
        child: Image(
          image: NetworkImage(
              "https://www.gardendesign.com/pictures/images/675x529Max/site_3/helianthus-yellow-flower-pixabay_11863.jpg"),
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
