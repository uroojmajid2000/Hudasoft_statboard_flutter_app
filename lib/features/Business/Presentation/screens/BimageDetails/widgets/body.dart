part of '../bimagedetails.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton:
          // Positioned(
          //   bottom: 20,
          //   right: 20,
          //   child:
          FloatingActionButton(
        backgroundColor: kPrimaryColor,
        child: Text(
          '+',
          style: TextStyle(color: Colors.white, fontSize: 45),
        ),
        onPressed: () {
          Navigate.to(context, BUploadMediaScreen.id);
        },
      ),
      // ),
      body: SingleChildScrollView(
        physics: AlwaysScrollableScrollPhysics(),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: MySearchBar(
                hintText: 'Search gallery',
                onChange: (value) {},
                prefixIcon: 'assets/icons/search.png',
                suffixIcon: 'assets/icons/filter.png',
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: MyText.HeadingText(
                "All Media",
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Image.asset(
                  'assets/images/image.png',
                  fit: BoxFit.cover,
                  height: 300,
                )),
              ],
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                children: [
                  Text(
                    "Tags:",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 6,
                  ),
                  TagsImage(tagname: 'Football'),
                  SizedBox(
                    width: 6,
                  ),
                  TagsImage(tagname: 'Fun'),
                  SizedBox(
                    width: 6,
                  ),
                  TagsImage(tagname: 'live'),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      SvgPicture.asset('assets/icons/stadium.svg'),
                      SizedBox(
                        height: 3,
                      ),
                      MyText.simpleText("California Stadium"),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/icons/venue.svg'),
                      SizedBox(
                        height: 3,
                      ),
                      MyText.simpleText("Football"),
                    ],
                  ),
                  Column(
                    children: [
                      SvgPicture.asset('assets/icons/vs.svg'),
                      SizedBox(
                        height: 3,
                      ),
                      MyText.simpleText("Tornado VS Stalion"),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: MyText.HeadingText(
                "All Media",
              ),
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                    child: Image.asset('assets/images/image.png',
                        fit: BoxFit.cover)),
                Expanded(
                    child: Image.asset('assets/images/imagetwo.png',
                        fit: BoxFit.cover)),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Image.asset('assets/images/imagethree.png',
                        fit: BoxFit.cover)),
                Expanded(
                    child: Image.asset('assets/images/imagefour.png',
                        fit: BoxFit.cover)),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
