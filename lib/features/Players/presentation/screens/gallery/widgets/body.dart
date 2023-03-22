part of '../gallery_screen.dart';

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
        bottom: 20,
        right: 20,
        child: FloatingActionButton(
          backgroundColor: kPrimaryColor,
          child: Text(
            '+',
            style: TextStyle(color: Colors.white, fontSize: 45),
          ),
          onPressed: () {
            Navigate.to(context, UploadMediaScreen.id);
          },
        ),
      ),
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
            const SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: MyText.HeadingText(
                "All Media",
              ),
            ),
            const SizedBox(height: 20),
            GestureDetector(
                onTap: () {
                  Navigate.to(context, ImageDetailsScreen.id);
                },
                child: GalleryGrid()),
          ],
        ),
      ),
    );
  }
}
