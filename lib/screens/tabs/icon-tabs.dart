import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:gf_web/screens/layout/layout.dart';
import '../../styles/styles.dart';

class IconTabs extends StatefulWidget {
  @override
  _IconTabsState createState() => _IconTabsState();
}

class _IconTabsState extends State<IconTabs> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Layout(
        demoImageUrl: 'lib/assets/gif/tabs.gif',
        body: ListView(
          children: <Widget>[
            Text(
              'Icon Tabs',
              style: hintStyleTextblackbolder(),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Working with tabs is a common pattern in apps that follow the Material Design guidelines. Flutter includes a convenient way to create tab layouts as part of the material library..',
              style: hintStyleTextblackdull(),
            ),
            SizedBox(
              height: 30,
            ),
            GFTabBar(
              length: 4,
              controller: tabController,
              tabs: [
                Icon(
                  Icons.home,
                ),
                Icon(
                  Icons.music_note,
                ),
                Icon(
                  Icons.games,
                ),
                Icon(
                  Icons.notifications,
                ),
              ],
              indicatorColor: Colors.teal,

//        indicatorSize: TabBarIndicatorSize.label,
              labelColor: GFColors.SUCCESS,
              labelPadding: const EdgeInsets.all(8),
              tabBarColor: GFColors.WHITE,
              unselectedLabelColor: GFColors.LIGHT,
              labelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Colors.white,
                fontFamily: 'OpenSansBold',
              ),
              unselectedLabelStyle: TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 13,
                color: Colors.black,
                fontFamily: 'OpenSansBold',
              ),
            ),
            Container(
                height: MediaQuery.of(context).size.height - 159,
                child: GFTabBarView(
                  controller: tabController,
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Icons.home,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.music_note,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.games,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    ),
                    Center(
                      child: Icon(
                        Icons.notifications,
                        size: 150,
                        color: Colors.grey.withOpacity(0.44),
                      ),
                    )
                  ],
                )),
            SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
