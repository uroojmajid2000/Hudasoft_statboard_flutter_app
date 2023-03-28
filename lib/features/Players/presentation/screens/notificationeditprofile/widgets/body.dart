part of '../notificationeditprofile_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14),
            child: Column(children: [
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Enable Notifications",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyDropdown(
                items: ['Football', 'Basketball'],
                selected: 'Football',
                onChange: (String? value) {
                  print('Selected: $value');
                },
              ),
              const SizedBox(height: 13),
              Button(
                  child: Text('SAVE'),
                  onPressed: () {
                    Navigate.to(context, EditProfileScreen.id);
                  })
            ]),
          ),
        ));
  }
}
