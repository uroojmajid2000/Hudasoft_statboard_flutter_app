part of '../teamsprofile_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _eventsSelected = true;
  bool _gallerySelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Stack(
              children: [
                SizedBox(
                  height: 300, // specify height
                  width: double.infinity, // take up all available width
                  child: Image.asset(
                    'assets/images/cover.png',
                    fit: BoxFit.cover,
                  ),
                ),
                Positioned(
                  left: 150,
                  top: 230,
                  child: CircleAvatar(
                    backgroundImage: AssetImage(
                      'assets/images/avatarimage.png',
                    ),
                    radius: 50,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              "Elijah Oliver",
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w700,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              "elijah_551",
              style: TextStyle(
                color: Colors.black,
                fontSize: 14,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      MyText.labelText("15"),
                      SizedBox(
                        height: 2,
                      ),
                      MyText.simplegreyText(
                        "Followers",
                      )
                    ],
                  ),
                  Column(
                    children: [
                      MyText.labelText('25'),
                      SizedBox(
                        height: 2,
                      ),
                      MyText.simplegreyText(
                        "Following",
                      )
                    ],
                  ),
                  Column(
                    children: [
                      MyText.labelText('50'),
                      SizedBox(
                        height: 2,
                      ),
                      MyText.simplegreyText(
                        "Matches Played",
                      )
                    ],
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Button(child: Text('Follow'), onPressed: () {}),
            ),
            SizedBox(
              height: 8,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Filters(
                    text: 'Events',
                    isSelected: _eventsSelected,
                    onChanged: (value) {
                      setState(() {
                        _eventsSelected = value;
                        _gallerySelected = false;
                      });
                    },
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Filters(
                    text: 'Gallery',
                    isSelected: _gallerySelected,
                    onChanged: (value) {
                      setState(() {
                        _gallerySelected = value;
                        _eventsSelected = false;
                      });
                    },
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 20,
            ),
            if (_eventsSelected)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: double.infinity, child: RecentMatches()),
                    ]),
              ),
            if (_gallerySelected)
              Column(
                children: [],
              ),
          ])),
    );
  }
}
