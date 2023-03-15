import 'package:flutter/cupertino.dart';

class GalleryGrid extends StatelessWidget {
  const GalleryGrid({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height:
          MediaQuery.of(context).size.height * 0.8, // provide a fixed height
      child: GridView.count(
        primary: false,
        crossAxisSpacing: 0,
        mainAxisSpacing: 0,
        crossAxisCount: 2,
        children: <Widget>[
          Image.asset('assets/images/image.png', fit: BoxFit.cover),
          Image.asset('assets/images/imagetwo.png', fit: BoxFit.cover),
          Image.asset('assets/images/imagethree.png', fit: BoxFit.cover),
          Image.asset('assets/images/imagefour.png', fit: BoxFit.cover),
          Image.asset('assets/images/imagefive.png', fit: BoxFit.cover),
          Image.asset('assets/images/imagesix.png', fit: BoxFit.cover),
          Image.asset('assets/images/imageseven.png', fit: BoxFit.cover),
          Image.asset('assets/images/image.png', fit: BoxFit.cover),
        ],
      ),
    );
  }
}
