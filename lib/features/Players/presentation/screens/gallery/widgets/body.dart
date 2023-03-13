part of '../gallery_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      primary: false,
      crossAxisSpacing: 0,
      mainAxisSpacing: 0,
      crossAxisCount: 2,
      children: <Widget>[
        Image.asset('assets/images/image.png', fit: BoxFit.fill),
        Image.asset('assets/images/imagetwo.png', fit: BoxFit.fill),
        Image.asset('assets/images/imagethree.png', fit: BoxFit.fill),
        Image.asset('assets/images/imagefour.png', fit: BoxFit.fill),
        Image.asset('assets/images/imagefive.png', fit: BoxFit.fill),
        Image.asset('assets/images/imagesix.png', fit: BoxFit.fill),
        Image.asset('assets/images/imageseven.png', fit: BoxFit.fill),
      ],
    );
  }
}
