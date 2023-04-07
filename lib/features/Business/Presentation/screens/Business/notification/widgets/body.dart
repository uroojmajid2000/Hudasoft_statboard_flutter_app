
part of '../notification_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 8,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Row(
            children: [
              Filters(
                text: 'All',
                isSelected: true,
                onChanged: (value) {
                  setState(() {});
                },
              ),
              SizedBox(
                width: 15,
              ),
              Filters(
                text: 'Follow Requests',
                isSelected: false,
                onChanged: (value) {},
              ),
            ],
          ),
        ),
        SizedBox(
          height: 25,
        ),
        Expanded(
          child: GridView.count(
            crossAxisCount: 1,
            childAspectRatio: 3 / 1,
            // padding: const EdgeInsets.all(10),
            // mainAxisSpacing: 10,
            // crossAxisSpacing: 10,
            children: [
              NotificationContainer(),
              NotificationEventContainer(),
              NotificationContainer(),
            ],
          ),
        ),
      ],
    );
  }
}
