import 'package:flutter/material.dart';

import 'package:thingiviewer/components/material_icon.dart';
import 'package:thingiviewer/constants.dart';
import 'package:thingiviewer/models/Thingi.dart';

class ThingsCard extends StatelessWidget {
  const ThingsCard({
    Key? key,
    this.isActive = false,
    required this.thingi,
  }) : super(key: key);

  final bool isActive;
  final Thingi thingi;

  @override
  Widget build(BuildContext context) {
    //  Here the shadow is not showing properly
    return Padding(
      padding: EdgeInsets.symmetric(
          horizontal: kDefaultPadding, vertical: kDefaultPadding / 2),
      child: InkWell(
        onTap: () {},
        child: Container(
          decoration: BoxDecoration(
              color: isActive ? kBgDarkColor : kBgDarkColor,
              borderRadius: BorderRadius.circular(15),
              border: Border.all(
                  width: 1, color: isActive ? kPrimaryColor : Colors.grey)),
          child: Column(
            children: [
              Stack(children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 200,
                  decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.vertical(top: Radius.circular(15)),
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(thingi.imagePath),
                    ),
                  ),
                ),
                Positioned(
                    left: 8,
                    bottom: 8,
                    child: Chip(
                      backgroundColor: kBgDarkColor,
                      label: Row(
                        children: [
                          MaterialIcon(Icons.favorite_border),
                          Text("123")
                        ],
                      ),
                    )),
                Positioned(
                    right: 8,
                    bottom: 8,
                    child: Chip(
                      backgroundColor: kBgDarkColor,
                      label: Row(
                        children: [MaterialIcon(Icons.all_inbox), Text("123")],
                      ),
                    ))
              ]),
              SizedBox(height: kDefaultPadding / 2),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    SizedBox(
                      width: 32,
                      child: CircleAvatar(
                        backgroundColor: Colors.transparent,
                        backgroundImage: AssetImage(thingi.owner.imagePath),
                      ),
                    ),
                    SizedBox(width: kDefaultPadding / 2),
                    Expanded(
                      child: Text.rich(
                        TextSpan(
                          text: "${thingi.name} \n",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: kTextColor,
                          ),
                          children: [
                            TextSpan(
                              text: thingi.owner.username,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText2!
                                  .copyWith(
                                    color: kTextColor,
                                  ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Text(
                          "time",
                          style: Theme.of(context).textTheme.caption,
                        ),
                        SizedBox(height: 5),
                        if (true)
                          MaterialIcon(
                            Icons.attach_file,
                            iconSize: 20,
                            iconColor: kGrayColor,
                          ),
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding / 2),
            ],
          ),
        ),
      ),
    );
  }
}
