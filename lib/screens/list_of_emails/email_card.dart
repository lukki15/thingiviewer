import 'package:flutter/material.dart';
import 'package:thingiviewer/components/material_icon.dart';
import 'package:thingiviewer/constants.dart';
import 'package:thingiviewer/models/Email.dart';

class EmailCard extends StatelessWidget {
  const EmailCard({
    Key? key,
    this.isActive = true,
    required this.email,
    required this.press,
  }) : super(key: key);

  final bool isActive;
  final Email email;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    //  Here the shadow is not showing properly
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: InkWell(
        onTap: press,
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: isActive ? kPrimaryColor : kBgDarkColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      SizedBox(
                        width: 32,
                        child: CircleAvatar(
                          backgroundColor: Colors.transparent,
                          backgroundImage: AssetImage(email.image),
                        ),
                      ),
                      SizedBox(width: kDefaultPadding / 2),
                      Expanded(
                        child: Text.rich(
                          TextSpan(
                            text: "${email.name} \n",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w500,
                              color: isActive ? Colors.white : kTextColor,
                            ),
                            children: [
                              TextSpan(
                                text: email.subject,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2!
                                    .copyWith(
                                      color:
                                          isActive ? Colors.white : kTextColor,
                                    ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        children: [
                          Text(
                            email.time,
                            style: isActive
                                ? Theme.of(context).textTheme.caption!.copyWith(
                                      color: Colors.white70,
                                    )
                                : Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(),
                          ),
                          SizedBox(height: 5),
                          if (email.isAttachmentAvailable)
                            MaterialIcon(
                              Icons.attach_file,
                              iconSize: 20,
                              iconColor: isActive ? Colors.white70 : kGrayColor,
                            ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: kDefaultPadding / 2),
                  Text(
                    email.body,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: isActive
                        ? Theme.of(context).textTheme.caption!.copyWith(
                              height: 1.5,
                              color: Colors.white70,
                            )
                        : Theme.of(context).textTheme.caption!.copyWith(
                              height: 1.5,
                            ),
                  )
                ],
              ),
            ),
            if (!email.isChecked)
              Positioned(
                right: 8,
                top: 8,
                child: Container(
                  height: 12,
                  width: 12,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: kBadgeColor,
                  ),
                ),
              ),
            Positioned(
              left: 8,
              top: 0,
              child: MaterialIcon(
                Icons.bookmark,
                iconSize: 18,
                iconColor: email.tagColor,
              ),
            )
          ],
        ),
      ),
    );
  }
}
