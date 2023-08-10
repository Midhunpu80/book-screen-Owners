// ignore_for_file: prefer_const_constructors, use_build_context_synchronously

import 'package:flutter/material.dart';
import 'package:get/get.dart';
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
          child: drawerdata(context: context),
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
                Scaffold.of(context).openDrawer();
                // await st.read(key: newtokens);
                // ignore: avoid_print
                print(
                    "+++++++++++++++++++${await st.read(key: newtokens)}++++++++++++");
                await ownerids.getrealowner();
                await monthsail.getdaily_sail(ids: ownerids.reply.data.id);
                await monthsail.getstatus_sail(ids: ownerids.reply.data.id);
                await monthsail.getmonthlysail(ids: ownerids.reply.data.id);

                await bookingdatas.getbooking(
                    id: ownerids.reply.data.id.toString());
                await screemanagedata.getscreens(id: ownerids.reply.data.id);
                await showdata.getshows(id: ownerids.reply.data.id);
              },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          }),
          backgroundColor: pp,
          toolbarHeight: 10.h,
        ),
        body: Obx(() {
          if (monthsail.isLoading.value) {
            return Center(
              child: CircularProgressIndicator(),
            );
            // ignore: unnecessary_null_comparison
          } else if (monthsail.reply2.data.isEmpty ||
              monthsail.reply.data == null ||
              monthsail.reply3.data == null) {
            return Center(
                child: CircularProgressIndicator(
              color: re,
            ));
          } else {
            return CustomScrollView(slivers: [
              //   appbar(),
              sailstime(),
              revenusatus(),
            ]);
          }
        }));
  }
}
