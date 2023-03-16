part of '../uploadmedia_details.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Positioned(
        bottom: 35,
        // right: 20,
        // left: 20,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14),
          child: SizedBox(
            width: 343,
            // height: 54,
            child: Button(
                child: Text(
                  "Upload",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 17,
                    fontFamily: "Montserrat",
                    fontWeight: FontWeight.w600,
                  ),
                ),
                // onPressed: () {
                //   // Navigate.next(context, OverviewScreen.id),
                // },
                onPressed: () => {
                      CustomModalBottomSheet.show(
                        context: context,
                        message:
                            'Media successfully uploaded to the \n gallery.',
                        onPressed: () {
                          Navigate.next(context, GalleryScreen.id);
                        },
                      ),
                    }),
          ),
        ),
      ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: Icon(
            Icons.clear,
            color: Colors.black,
            size: 25,
          ),
          title: Text(
            "Details",
            style: TextStyle(
              color: Colors.black,
              fontSize: 20,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w700,
            ),
          )),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Expanded(
                    child: Image.asset('assets/images/image.png',
                        fit: BoxFit.cover)),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Column(
                children: [
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText("Select game"),
                    ],
                  ),
                  const SizedBox(height: 10),
                  MyDropdown(
                    items: ['Football', 'Basketball'],
                    selected: 'Football',
                    onChange: (String? value) {
                      print('Selected: $value');
                    },
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      MyText.labelText(
                        "Add tags",
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  MyTextFieldTeam(
                    // controller: _name,
                    hintText: 'Football',
                    onChange: (value) {},
                  ),
                  SizedBox(height: 12),
                  Row(
                    children: [
                      Tags(),
                      SizedBox(width: 5),
                      Tags(),
                      SizedBox(width: 5),
                      Tags(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
