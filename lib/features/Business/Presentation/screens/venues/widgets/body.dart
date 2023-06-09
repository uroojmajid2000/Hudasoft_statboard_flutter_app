part of '../venues_screen.dart';

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
                      child: SvgPicture.asset(
                      'assets/icons/multiplyicon.svg',
                      width: 20,
                      height: 20,
                      // color: Colors.red,
                    )

                      // Text(
                      //   'x',
                      //   style: TextStyle(color: Colors.white, fontSize: 30),
                      // ),
                      )
                  : Center(
                      child: SvgPicture.asset(
                      'assets/icons/plusicon.svg',
                      width: 20,
                      height: 20,
                      // color: Colors.red,
                    )

                      // Text(
                      //   '+',
                      //   style: TextStyle(color: Colors.white, fontSize: 40),
                      // ),
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
                      SvgPicture.asset(
                        'assets/icons/plusicon.svg',
                        width: 14,
                        height: 14,
                        // color: Colors.red,
                      ),
                      // Text(
                      //   '+',
                      //   style: TextStyle(color: Colors.white, fontSize: 24),
                      // ),
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
                      SvgPicture.asset(
                        'assets/icons/plusicon.svg',
                        width: 14,
                        height: 14,
                        // color: Colors.red,
                      ),
                      // Text(
                      //   '+',
                      //   style: TextStyle(color: Colors.white, fontSize: 24),
                      // ),
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
                hintText: 'Search',
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
