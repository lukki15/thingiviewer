import 'package:flutter/material.dart';
import 'package:thingiviewer/components/material_icon.dart';
import 'package:thingiviewer/responsive.dart';
import 'package:thingiviewer/constants.dart';

class EmailHeader extends StatelessWidget {
  const EmailHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(kDefaultPadding),
      child: Row(
        children: [
          // We need this back button on mobile only
          if (Responsive.isMobile(context)) BackButton(),
          IconButton(
            icon: MaterialIcon(Icons.delete),
            onPressed: () {},
          ),
          IconButton(
            icon: MaterialIcon(Icons.replay),
            onPressed: () {},
          ),
          IconButton(
            icon: MaterialIcon(Icons.reply_all),
            onPressed: () {},
          ),
          IconButton(
            icon: MaterialIcon(Icons.forward),
            onPressed: () {},
          ),
          Spacer(),
          // We don't need print option on mobile
          if (Responsive.isDesktop(context))
            IconButton(
              icon: MaterialIcon(Icons.print),
              onPressed: () {},
            ),
          IconButton(
            icon: MaterialIcon(Icons.bookmark_outline),
            onPressed: () {},
          ),
          IconButton(
            icon: MaterialIcon(Icons.more_vert),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
