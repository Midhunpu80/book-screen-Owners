// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:owner/constants/token.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Home/widgets/drawer.dart';
import 'package:owner/view/screens/Home/widgets/revenu.dart';
import 'package:owner/view/screens/Home/widgets/sailstimes.dart';
import 'package:sizer/sizer.dart';

import '../../../main.dart';

// ignore: use_key_in_widget_constructors
class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Drawer(
        child: drawerdata(),
      ),
      appBar: AppBar(
        centerTitle: true,
        title: alltext(
            txt: "DashBoard",
            col: wh,
            siz: 15.sp,
            wei: FontWeight.bold,
            max: 1),
        leading: Builder(builder: (BuildContext context) {
          return IconButton(
            icon: Icon(
              Icons.menu,
              color: wh,
              size: 4.h,
            ),
            onPressed: () async {
              await st.read(key: newtokens);
              print("+++++++++++++++++++${await st.read(key: newtokens)}++++++++++++");
              ownerids.getrealowner();
              Scaffold.of(context).openDrawer();
              bookingdatas.getbooking(id: ownerids.reply.data.id.toString());
              screemanagedata.getscreens(id: ownerids.reply.data.id);
              showdata.getshows(id: ownerids.reply.data.id);
            },
            tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
          );
        }),
        backgroundColor: pp,
        toolbarHeight: 10.h,
      ),
      body: CustomScrollView(
        slivers: [
          //   appbar(),
          sailstime(),
          revenusatus(),
        ],
      ),
    );
  }
}
