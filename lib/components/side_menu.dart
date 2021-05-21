import 'package:flutter/material.dart';
import 'package:thingiviewer/components/material_icon.dart';
import 'package:thingiviewer/components/tags.dart';
import 'package:thingiviewer/responsive.dart';
import 'package:thingiviewer/constants.dart';

import 'package:thingiviewer/components/side_menu_item.dart';
import 'package:flutter/foundation.dart' show kIsWeb;

class SideMenu extends StatelessWidget {
  const SideMenu({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
      color: kBgLightColor,
      child: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(
                    "images/Logo_Outlook.png",
                    width: 46,
                  ),
                  Spacer(),
                  // We don't want to show this close button on Desktop mood
                  if (!Responsive.isDesktop(context)) CloseButton(),
                ],
              ),
              SizedBox(height: kDefaultPadding),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kPrimaryColor,
                onPressed: () {},
                icon: MaterialIcon(
                  Icons.edit,
                  iconSize: 16,
                ),
                label: Text(
                  "New message",
                  style: TextStyle(color: Colors.white),
                ),
              ),
              SizedBox(height: kDefaultPadding),
              FlatButton.icon(
                minWidth: double.infinity,
                padding: EdgeInsets.symmetric(
                  vertical: kDefaultPadding,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
                color: kBgDarkColor,
                onPressed: () {},
                icon: MaterialIcon(
                  Icons.rotate_left_rounded,
                  iconSize: 16,
                ),
                label: Text(
                  "Get messages",
                  style: TextStyle(color: kTextColor),
                ),
              ),
              SizedBox(height: kDefaultPadding * 2),
              // Menu Items
              SideMenuItem(
                press: () {},
                title: "Inbox",
                iconData: Icons.inbox_outlined,
                isActive: true,
                itemCount: 3,
              ),
              SideMenuItem(
                press: () {},
                title: "Sent",
                iconData: Icons.send_outlined,
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Drafts",
                iconData: Icons.drafts_outlined,
                isActive: false,
              ),
              SideMenuItem(
                press: () {},
                title: "Deleted",
                iconData: Icons.delete_outline_outlined,
                isActive: false,
                showBorder: false,
              ),

              SizedBox(height: kDefaultPadding * 2),
              // Tags
              Tags(),
            ],
          ),
        ),
      ),
    );
  }
}
