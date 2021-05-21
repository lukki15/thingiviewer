import 'package:flutter/material.dart';
import 'package:thingiviewer/components/side_menu.dart';
import 'package:thingiviewer/responsive.dart';
import 'package:thingiviewer/screens/email/email_screen.dart';
import 'package:thingiviewer/screens/list_of_emails/list_of_emails_screen.dart';
import 'package:thingiviewer/models/Email.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // It provide us the width and height
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Responsive(
        // Let's work on our mobile part
        mobile: ListOfEmails(),
        tablet: Row(
          children: [
            Expanded(
              flex: 6,
              child: ListOfEmails(),
            ),
            Expanded(
                flex: 9,
                child: EmailScreen(
                  email: emails[0],
                )),
          ],
        ),
        desktop: Row(
          children: [
            // Once our width is less then 1300 then it start showing errors
            // Now there is no error if our width is less then 1340
            Expanded(flex: _size.width > 1340 ? 2 : 4, child: SideMenu()),
            Expanded(
              flex: _size.width > 1340 ? 3 : 5,
              child: ListOfEmails(),
            ),
            Expanded(
                flex: _size.width > 1340 ? 8 : 10,
                child: EmailScreen(
                  email: emails[0],
                )),
          ],
        ),
      ),
    );
  }
}
