import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../features/Players/presentation/screens/notification/notification_screen.dart';
import '../../../features/Players/presentation/screens/profile/profile_screen.dart';
import '../../routes/navigate.dart';

class BuildAppbar extends StatelessWidget with PreferredSizeWidget {
  final String text;
  final GlobalKey<ScaffoldState> globalKey;

  const BuildAppbar({super.key, required this.globalKey, required this.text});

  @override
  Size get preferredSize => const Size.fromHeight(65);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Material(
        color: Colors.white,
        // elevation: 2.0,
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                text,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25,
                  fontFamily: "Montserrat",
                  fontWeight: FontWeight.w700,
                ),
              ),
              Row(
                children: [
                  GestureDetector(
                      onTap: () => Navigate.to(context, NotificationScreen.id),
                      child: SvgPicture.asset(
                          'assets/icons/notification_icons.svg')),
                  SizedBox(width: 12),
                  GestureDetector(
                    onTap: () => Navigate.to(context, ProfileScreen.id),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/avatarimage.png',
                      ),
                      radius: 13,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
