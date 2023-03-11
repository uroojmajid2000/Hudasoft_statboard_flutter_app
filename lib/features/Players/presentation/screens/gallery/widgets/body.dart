part of '../gallery_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return
        // Container(color: Colors.blue,
        // child: Text('gallery_screen'));
        Expanded(
      child: Container(
        height: 650,
        color: Colors.red[100],
        child: Column(
          children: [
            Center(
                child: Text(
              'Teams',
              style:
                  TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            )),
          ],
        ),
      ),
    );
  }
}
