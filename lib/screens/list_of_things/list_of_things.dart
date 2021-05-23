import 'package:flutter/material.dart';
import 'package:thingiviewer/components/material_icon.dart';
import 'package:thingiviewer/components/side_menu.dart';
import 'package:thingiviewer/responsive.dart';

import 'package:thingiviewer/constants.dart';
import 'package:thingiviewer/models/Thingi.dart';

import 'package:flutter/foundation.dart';
import 'package:thingiviewer/screens/list_of_things/things_card.dart';

class ListOfThings extends StatefulWidget {
  const ListOfThings({
    Key? key,
  }) : super(key: key);

  @override
  _ListOfThingsState createState() => _ListOfThingsState();
}

class _ListOfThingsState extends State<ListOfThings> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      drawer: ConstrainedBox(
        constraints: BoxConstraints(maxWidth: 250),
        child: SideMenu(),
      ),
      body: Container(
        padding: EdgeInsets.only(top: kIsWeb ? kDefaultPadding : 0),
        color: kBgDarkColor,
        child: SafeArea(
          right: false,
          child: Column(
            children: [
              // This is our Seearch bar
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    // Once user click the menu icon the menu shows like drawer
                    // Also we want to hide this menu icon on desktop
                    if (!Responsive.isDesktop(context))
                      IconButton(
                        icon: Icon(Icons.menu),
                        onPressed: () {
                          _scaffoldKey.currentState?.openDrawer();
                        },
                      ),
                    if (!Responsive.isDesktop(context)) SizedBox(width: 5),
                    Expanded(
                      child: TextField(
                        onChanged: (value) {},
                        decoration: InputDecoration(
                          hintText: "Search",
                          fillColor: kBgLightColor,
                          filled: true,
                          suffixIcon: Padding(
                              padding: const EdgeInsets.all(
                                  kDefaultPadding * 0.75), //15
                              child: MaterialIcon(
                                Icons.search,
                                iconSize: 24,
                              )),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            borderSide: BorderSide.none,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  children: [
                    MaterialIcon(
                      Icons.keyboard_arrow_down,
                      iconSize: 16,
                      iconColor: kGrayColor,
                    ),
                    SizedBox(width: 5),
                    Text(
                      "Sort by date",
                      style: TextStyle(fontWeight: FontWeight.w500),
                    ),
                    Spacer(),
                    MaterialButton(
                        minWidth: 20,
                        onPressed: () {},
                        child: MaterialIcon(
                          Icons.sort,
                          iconSize: 16,
                        )),
                  ],
                ),
              ),
              SizedBox(height: kDefaultPadding),
              Expanded(
                child: ListView.builder(
                  itemCount: thingies.length,
                  // On mobile this active dosen't mean anything
                  itemBuilder: (context, index) => ThingsCard(
                      isActive:
                          Responsive.isMobile(context) ? false : index == 0,
                      thingi: thingies[index]),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
