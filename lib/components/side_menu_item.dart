import 'package:flutter/material.dart';
import 'package:thingiviewer/components/material_icon.dart';
import 'package:thingiviewer/constants.dart';

class SideMenuItem extends StatelessWidget {
  const SideMenuItem({
    Key? key,
    this.isActive = false,
    this.isHover = false,
    this.itemCount = 0,
    this.showBorder = true,
    required this.iconData,
    required this.title,
    required this.press,
  }) : super(key: key);

  final bool isActive, isHover, showBorder;
  final int itemCount;
  final String title;
  final IconData iconData;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: kDefaultPadding),
      child: InkWell(
        onTap: press,
        child: Row(
          children: [
            (isActive || isHover)
                ? MaterialIcon(
                    Icons.keyboard_arrow_down,
                    iconSize: 15,
                  )
                : SizedBox(width: 15),
            SizedBox(width: kDefaultPadding / 4),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(bottom: 15, right: 5),
                decoration: showBorder
                    ? BoxDecoration(
                        border: Border(
                          bottom: BorderSide(color: Color(0xFFDFE2EF)),
                        ),
                      )
                    : null,
                child: Row(
                  children: [
                    MaterialIcon(
                      iconData,
                      iconSize: 20,
                      iconColor:
                          (isActive || isHover) ? kPrimaryColor : kGrayColor,
                    ),
                    SizedBox(width: kDefaultPadding * 0.75),
                    Text(
                      title,
                      style: Theme.of(context).textTheme.button?.copyWith(
                            color:
                                (isActive || isHover) ? kTextColor : kGrayColor,
                          ),
                    ),
                    Spacer(),
                    if (itemCount >= 0) Text(itemCount.toString())
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
