part of '../teams_screen.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return
        
        Expanded(
      child: Container(
        height: 650,
        color: Colors.green[100],
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