part of '../upload_media.dart';

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
          //   bottom: 30,
          //   // right: 20,
          //   // left: 20,
          //   child:
          //   Padding(
          //     padding: const EdgeInsets.symmetric(horizontal: 14),
          // child:
          SizedBox(
        width: 355,
        // height: 54,
        child: Button(
          child: Text(
            "Next",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 17,
              fontFamily: "Montserrat",
              fontWeight: FontWeight.w600,
            ),
          ),
          onPressed: () {
            Navigate.to(context, UploadMediaDetailsScreen.id);
          },
        ),
      ),
      //   ),
      // ),
      appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leading: GestureDetector(
            onTap: () => Navigator.pop(context),
            child: Icon(
              Icons.clear,
              color: Colors.black,
              size: 25,
            ),
          ),
          title: Text(
            "Upload Media",
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
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 14),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  MyText.HeadingText(
                    "Gallery",
                  ),
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/uploadimage.svg'),
                      SizedBox(
                        width: 15,
                      ),
                      SvgPicture.asset('assets/icons/camera_icon.svg'),
                    ],
                  )
                ],
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
