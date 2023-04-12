part of '../bplayersprofile_screen.dart';

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
    return SizedBox(
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(children: [
            SizedBox(
              height: 260, // specify height
              child: Stack(
                children: [
                  SizedBox(
                    height: 230, // specify height
                    width: double.infinity, // take up all available width
                    child: Image.asset(
                      'assets/images/cover.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    left: 150,
                    top: 170, // adjust this value to move the avatar higher up
                    child: Center(
                      child: CircleAvatar(
                        backgroundImage: AssetImage(
                          'assets/images/avatarimage.png',
                        ),
                        radius: 45,
                      ),
                    ),
                  ),
                ],
              ),
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
              height: 17,
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
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Button(
                  child: Text('Follow'),
                  onPressed: () {
                    // Navigate.to(context, EditProfileScreen.id);
                  }),
            ),
            SizedBox(
              height: 25,
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
                    width: 10,
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
              height: 30,
            ),
            if (_eventsSelected)
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 14),
                child: recentmatchesProfilelist(),
              ),
            if (_gallerySelected)
              Column(
                children: [
                  GestureDetector(
                      onTap: () {
                        // Navigate.to(context, ImageDetailsScreen.id);
                      },
                      child: GalleryGrid()),
                ],
              ),
          ]),
        ));

    //  SizedBox(
    //     height: MediaQuery.of(context).size.height,
    //     child: SingleChildScrollView(
    //       scrollDirection: Axis.vertical,
    //       child: Column(children: [
    //         SizedBox(
    //           height: 330, // specify height
    //           child: Stack(
    //             children: [
    //               SizedBox(
    //                 height: 300, // specify height
    //                 width: double.infinity, // take up all available width
    //                 child: Image.asset(
    //                   'assets/images/cover.png',
    //                   fit: BoxFit.cover,
    //                 ),
    //               ),
    //               Positioned(
    //                 left: 150,
    //                 top: 230, // adjust this value to move the avatar higher up
    //                 child: CircleAvatar(
    //                   backgroundImage: AssetImage(
    //                     'assets/images/avatarimage.png',
    //                   ),
    //                   radius: 50,
    //                 ),
    //               ),
    //             ],
    //           ),
    //         ),
    //         // SizedBox(
    //         //   height: 15,
    //         // ),
    //         Text(
    //           "Elijah Oliver",
    //           style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 20,
    //             fontFamily: "Montserrat",
    //             fontWeight: FontWeight.w700,
    //           ),
    //         ),
    //         SizedBox(
    //           height: 8,
    //         ),
    //         Text(
    //           "elijah_551",
    //           style: TextStyle(
    //             color: Colors.black,
    //             fontSize: 14,
    //             fontFamily: "Montserrat",
    //             fontWeight: FontWeight.w600,
    //           ),
    //         ),
    //         SizedBox(
    //           height: 8,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 14),
    //           child: Row(
    //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //             children: [
    //               Column(
    //                 children: [
    //                   MyText.labelText("15"),
    //                   SizedBox(
    //                     height: 2,
    //                   ),
    //                   MyText.simplegreyText(
    //                     "Followers",
    //                   )
    //                 ],
    //               ),
    //               Column(
    //                 children: [
    //                   MyText.labelText('25'),
    //                   SizedBox(
    //                     height: 2,
    //                   ),
    //                   MyText.simplegreyText(
    //                     "Following",
    //                   )
    //                 ],
    //               ),
    //               Column(
    //                 children: [
    //                   MyText.labelText('50'),
    //                   SizedBox(
    //                     height: 2,
    //                   ),
    //                   MyText.simplegreyText(
    //                     "Matches Played",
    //                   )
    //                 ],
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(
    //           height: 8,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 14),
    //           child: Button(child: Text('Follow'), onPressed: () {}),
    //         ),
    //         SizedBox(
    //           height: 8,
    //         ),
    //         Padding(
    //           padding: const EdgeInsets.symmetric(horizontal: 14),
    //           child: Row(
    //             children: [
    //               Filters(
    //                 text: 'Events',
    //                 isSelected: _eventsSelected,
    //                 onChanged: (value) {
    //                   setState(() {
    //                     _eventsSelected = value;
    //                     _gallerySelected = false;
    //                   });
    //                 },
    //               ),
    //               SizedBox(
    //                 width: 6,
    //               ),
    //               Filters(
    //                 text: 'Gallery',
    //                 isSelected: _gallerySelected,
    //                 onChanged: (value) {
    //                   setState(() {
    //                     _gallerySelected = value;
    //                     _eventsSelected = false;
    //                   });
    //                 },
    //               ),
    //             ],
    //           ),
    //         ),
    //         SizedBox(
    //           height: 20,
    //         ),
    //         if (_eventsSelected)
    //           Padding(
    //             padding: const EdgeInsets.symmetric(horizontal: 14),
    //             child: Flexible(
    //               child: SingleChildScrollView(
    //                 scrollDirection: Axis.vertical,
    //                 child: Column(
    //                     mainAxisAlignment: MainAxisAlignment.start,
    //                     crossAxisAlignment: CrossAxisAlignment.start,
    //                     children: [
    //                       SizedBox(
    //                           width: double.infinity, child: RecentMatches()),
    //                       SizedBox(
    //                           width: double.infinity, child: RecentMatches()),
    //                       SizedBox(
    //                           width: double.infinity, child: RecentMatches()),
    //                       SizedBox(
    //                         height: 14,
    //                       ),
    //                       Column(
    //                         children: [
    //                           Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               MyText.HeadingText(
    //                                 "Suggested Players",
    //                               ),
    //                             ],
    //                           ),
    //                           SizedBox(
    //                             height: 14,
    //                           ),
    //                           Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               ProfileContainer(),
    //                               ProfileContainer(),
    //                               ProfileContainer(),
    //                             ],
    //                           ),
    //                           SizedBox(
    //                             height: 12,
    //                           ),
    //                           Row(
    //                             mainAxisAlignment:
    //                                 MainAxisAlignment.spaceBetween,
    //                             children: [
    //                               ProfileContainer(),
    //                               ProfileContainer(),
    //                               ProfileContainer(),
    //                             ],
    //                           ),
    //                           SizedBox(
    //                             height: 12,
    //                           ),
    //                         ],
    //                       ),
    //                     ]),
    //               ),
    //             ),
    //           ),
    //         if (_gallerySelected)
    //           Column(
    //             children: [
    //               GestureDetector(
    //                   onTap: () {
    //                     Navigate.to(context, ImageDetailsScreen.id);
    //                   },
    //                   child: GalleryGrid()),
    //             ],
    //           ),
    //       ]),
    //     ));
  }
}
