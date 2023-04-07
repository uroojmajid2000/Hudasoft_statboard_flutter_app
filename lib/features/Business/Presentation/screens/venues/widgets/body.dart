part of '../venues_screen.dart';

// class Body extends StatefulWidget {
//   const Body({super.key});

//   @override
//   State<Body> createState() => _BodyState();
// }

// class _BodyState extends State<Body> {
//   bool _isExpanded = false;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         floatingActionButton: Stack(
//           children: [
//             Align(
//               alignment: Alignment.bottomRight,
//               child: FloatingActionButton(
//                 onPressed: () {
//                   setState(() {
//                     _isExpanded = !_isExpanded;
//                   });
//                 },
//                 child: Icon(_isExpanded ? Icons.close : Icons.add),
//               ),
//             ),
//             Visibility(
//               visible: _isExpanded,
//               child: Hero(
//                 tag: 'fab1',
//                 child: Positioned(
//                   bottom: 90.0,
//                   right: 20.0,
//                   child: FloatingActionButton(
//                     onPressed: () {
//                       // Perform action for the first button
//                     },
//                     child: Icon(Icons.access_alarm),
//                   ),
//                 ),
//               ),
//             ),
//             Visibility(
//               visible: _isExpanded,
//               child: Hero(
//                 tag: 'fab2',
//                 child: Positioned(
//                   bottom: 20.0,
//                   right: 90.0,
//                   child: FloatingActionButton(
//                     onPressed: () {
//                       // Perform action for the second button
//                     },
//                     child: Icon(Icons.access_time),
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),

//         // floatingActionButton: FloatingActionButton(
//         //   backgroundColor: kPrimaryColor,
//         //   child: Text(
//         //     '+',
//         //     style: TextStyle(color: Colors.white, fontSize: 45),
//         //   ),
//         //   onPressed: () {
//         //     // Navigate.to(context, TeamsDetails.id);
//         //   },
//         // ),

//         body: SingleChildScrollView(
//           scrollDirection: Axis.vertical,
//           child: Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 14),
//               child: Column(
//                   mainAxisAlignment: MainAxisAlignment.start,
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     const SizedBox(height: 25),
//                     MySearchBar(
//                       hintText: 'Search teams',
//                       onChange: (value) {},
//                       prefixIcon: 'assets/icons/search.png',
//                       suffixIcon: 'assets/icons/filter.png',
//                     ),
//                     const SizedBox(height: 25),
//                     MyText.HeadingText(
//                       "All ",
//                     ),
//                     // const SizedBox(height: 15),
//                     const VenueListView()
//                   ])),
//         ));
//   }
// }

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  bool _isExpanded = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Stack(
        children: [
          Align(
            alignment: Alignment.bottomRight,
            child: FloatingActionButton(
              onPressed: () {
                setState(() {
                  _isExpanded = !_isExpanded;
                });
              },
              child: _isExpanded
                  ? Center(
                      child: Text(
                        'x',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                    )
                  : Center(
                      child: Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 40),
                      ),
                    ),

              // Icon(_isExpanded ? Icons.close : Icons.add),
            ),
          ),

          Visibility(
            visible: _isExpanded,
            child: Positioned(
              bottom: 110.0,
              right: 0.0,
              child: Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff00b0f0),
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    // Perform action for the first button
                    Navigate.to(context, AddBranchScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        "Add Branch",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  heroTag: 'fab1',
                  elevation: 0, // remove shadow
                  backgroundColor:
                      Colors.transparent, // remove background color
                ),
              ),
            ),
          ),

          // Visibility(
          //   visible: _isExpanded,
          //   child: Positioned(
          //     bottom: 90.0,
          //     right: 20.0,
          //     child: FloatingActionButton(
          //       onPressed: () {
          //         // Perform action for the first button
          //       },
          //       child: Icon(Icons.access_alarm),
          //       heroTag: 'fab1',
          //     ),
          //   ),
          // ),

          Visibility(
            visible: _isExpanded,
            child: Positioned(
              bottom: 70.0,
              right: 0.0,
              child: Container(
                width: 120,
                height: 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(30),
                  color: Color(0xff00b0f0),
                ),
                child: FloatingActionButton(
                  onPressed: () {
                    // Perform action for the first button
                    Navigate.to(context, AddVenueScreen.id);
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(
                        '+',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        "Add Venue",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontFamily: "Montserrat",
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  heroTag: 'fab2',
                  elevation: 0, // remove shadow
                  backgroundColor:
                      Colors.transparent, // remove background color
                ),
              ),
            ),
          ),

          // Visibility(
          //   visible: _isExpanded,
          //   child: Positioned(
          //     bottom: 20.0,
          //     right: 90.0,
          //     child: FloatingActionButton(
          //       onPressed: () {
          //         // Perform action for the second button
          //       },
          //       child: Icon(Icons.access_time),
          //       heroTag: 'fab2',
          //     ),
          //   ),
          // ),
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 25),
              MySearchBar(
                hintText: 'Search teams',
                onChange: (value) {},
                prefixIcon: 'assets/icons/search.png',
                suffixIcon: 'assets/icons/filter.png',
              ),
              const SizedBox(height: 25),
              MyText.HeadingText(
                "All ",
              ),
              // const SizedBox(height: 15),
              const VenueListView(),
            ],
          ),
        ),
      ),
    );
  }
}
