import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class CustomModalBottomSheetAlert {
  static void show({
    required BuildContext context,
    required String message,
    // required VoidCallback onPressed,
  }) {
    showModalBottomSheet(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
      ),
      context: context,
      builder: (BuildContext bc) {
        return Container(
          height: 250,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 8,
                ),
                SvgPicture.asset('assets/icons/alertlogo.svg'),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      message,
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 16,
                        fontFamily: "Montserrat",
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CancelButton(),
                    ConfirmButton(),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class CancelButton extends StatelessWidget {
  const CancelButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 160,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffa2a2a2),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 50,
          vertical: 17,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Cancel",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class ConfirmButton extends StatelessWidget {
  const ConfirmButton({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.pop(context),
      child: Container(
        width: 160,
        height: 54,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xffff0000),
        ),
        padding: const EdgeInsets.symmetric(
          horizontal: 44,
          vertical: 17,
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Confirm",
              style: TextStyle(
                color: Colors.white,
                fontSize: 17,
                fontFamily: "Montserrat",
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
