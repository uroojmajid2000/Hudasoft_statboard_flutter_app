part of '../permissions_screen.dart';

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
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Who can view my profile",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyDropdown(
                items: ['Everyone', 'My Contacts'],
                selected: 'Everyone',
                onChange: (String? value) {
                  print('Selected: $value');
                },
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Last seen",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyDropdown(
                items: ['Followers', 'All'],
                selected: 'Followers',
                onChange: (String? value) {
                  print('Selected: $value');
                },
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Currently playing status",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyDropdown(
                items: ['None', 'Playing'],
                selected: 'None',
                onChange: (String? value) {
                  print('Selected: $value');
                },
              ),
              const SizedBox(height: 18),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  MyText.labelText(
                    "Last played",
                  ),
                ],
              ),
              const SizedBox(height: 13),
              MyDropdown(
                items: ['Followers', 'others'],
                selected: 'Followers',
                onChange: (String? value) {
                  print('Selected: $value');
                },
              ),
              const SizedBox(height: 180),
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
