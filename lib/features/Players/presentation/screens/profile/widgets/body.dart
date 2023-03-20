part of '../profile_screen.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _recentMatchesSelected = true;
  bool _playersSelected = false;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
          height: MediaQuery.of(context).size.height,
          child: Column(children: [
            Flexible(
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Image.asset(
                      'assets/images/cover.png',
                      alignment: Alignment.topCenter,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 220,
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 50,
                    ),
                  ),
                ],
              ),
            ),
            Column(children: [
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
              Row(
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
              SizedBox(
                height: 8,
              ),
              Button(child: Text('Edit Profile'), onPressed: () {}),
              SizedBox(
                height: 8,
              ),
              Row(
                children: [
                  Filters(
                    text: 'Recent Matches',
                    isSelected: _recentMatchesSelected,
                    onChanged: (value) {
                      setState(() {
                        _recentMatchesSelected = value;
                        _playersSelected = false;
                      });
                    },
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  Filters(
                    text: 'Players',
                    isSelected: _playersSelected,
                    onChanged: (value) {
                      setState(() {
                        _playersSelected = value;
                        _recentMatchesSelected = false;
                      });
                    },
                  ),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              if (_recentMatchesSelected)
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    MyText.HeadingText(
                      'Matches',
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text('recent match'),
                    Text('recent match'),
                    Text('recent match'),
                    Text('recent match'),
                  ],
                ),
              if (_playersSelected)
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        MyText.HeadingText(
                          "All",
                        ),
                        Text(
                          "View Team Player Stats",
                          style: TextStyle(
                            color: Color(0xff00b0f0),
                            fontSize: 10,
                            fontFamily: "Montserrat",
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                    Text('recent match'),
                    Text('recent match'),
                    Text('recent match'),
                    Text('data'),
                    Text('data'),
                  ],
                ),
            ]),
          ])),
    );
  }
}
