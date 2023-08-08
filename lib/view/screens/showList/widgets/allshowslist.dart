// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:owner/main.dart';
import 'package:owner/service/get-shows/getshows.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/utils/okbuttons/okbutton.dart';
import 'package:owner/view/screens/Booking/widgets/viewbookingdetails.dart';
import 'package:owner/view/screens/showList/widgets/deleteshow.dart';
import 'package:sizer/sizer.dart';

final showlistdatas = Get.put(getshows_service());

Widget allshowsList() {
  return Obx(
    () => showdata.isLoading.value
        ? Center(child: CircularProgressIndicator())
        : Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              child: Container(
                height: 70.h,
                width: 100.w,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(1.h),
                ),
                child: ListView.separated(
                    itemBuilder: (context, index) {
                      //  final br = showdata.dataList.value[index].data[index];
                      final list = showlistdatas.reply?.data[index];
                      return Card(
                        child: Container(
                          height: 15.h,
                          width: 100.w,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(1.h),
                              color: bl),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              alldetails(txt: "${index + 1}"),
                              // ignore: unnecessary_string_interpolations
                              alldetails(txt: "${list?.movieName}"),
                              // ignore: unnecessary_string_interpolations
                              alldetails(txt: "${list?.price.toString()}"),
                              SizedBox(
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    showviewdetails(
                                        context: context,
                                        no: "${index + 1}",
                                        name: list?.ownerName,
                                        moviename: list?.movieName,
                                        screennumber: list?.screen,
                                        showtime: list?.showTime,
                                        startdate: list?.startDate,
                                        enddate: list?.endDate,
                                        price: list?.price),
                                    SizedBox(
                                      width: 1.h,
                                    ),
                                    moredetails(context: context, index: index),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      // ignore: prefer_const_constructors
                      return Divider(
                        thickness: 0,
                      );
                    },
                    itemCount: showlistdatas.reply!.data.length),
              ),
            ),
          ),
  );
}

Widget alldetails({required var txt}) {
  return Container(
    child: alltext(txt: txt, col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1),
  );
}

Widget showviewdetails(
    {required BuildContext context,
    required var no,
    required var name,
    required var moviename,
    required var screennumber,
    required var showtime,
    required var startdate,
    required var enddate,
    required var price}) {
  return InkWell(
    onTap: () {
      moviedata.getmovies();
      view_showListdetails(
          context: context,
          no: no,
          name: name,
          moviename: moviename,
          screennumber: screennumber,
          showtime: showtime,
          startdate: startdate,
          enddate: enddate,
          price: price);
      // viewrebookingdetailscard(context: context, username: "name", movie: "gae", screen: "count", qyt: "try", seats: "level", date:"date", showtime:"effnnf", bookid: "djdjdj", sub: "kkkfk", fees: "dndndn", total:"hhfhfl");
    },
    child: Container(
      height: 4.h,
      width: 13.w,
      decoration:
          BoxDecoration(color: gr, borderRadius: BorderRadius.circular(1.h)),
      child: Center(
          child: alltext(
              txt: "view", col: wh, siz: 10.sp, wei: FontWeight.bold, max: 1)),
    ),
  );
}

Widget moredetails({required BuildContext context, required var index}) {
  return InkWell(
    onTap: () {
      print("clivk");
      // addshowstointernet.get_delete_show(
      //     idt: showdata.reply.data[index].id.toString(), context: context);
      deleteshowlist(context, index);
      // awsome(context, index)
    },
    child: Container(
      height: 4.h,
      width: 13.w,
      decoration: BoxDecoration(
        color: gr,
        borderRadius: BorderRadius.circular(1.h),
      ),
      child: Center(
          child: Icon(
        Icons.delete,
        color: re,
      )),
    ),
  );
}

view_showListdetails(
    {required BuildContext context,
    required var no,
    required var name,
    required var moviename,
    required var screennumber,
    required var showtime,
    required var startdate,
    required var enddate,
    required var price}) {
  return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          content: SizedBox(
            height: 50.h,
            width: 100.w,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                completebookingdetails_down(
                    txt: "No",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: no.toString()),
                completebookingdetails_down(
                    txt: "Movie Name",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: moviename.toString()),
                completebookingdetails_down(
                    txt: "owner Name",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: name.toString()),
                completebookingdetails_down(
                    txt: "Screen Number",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: screennumber.toString()),
                completebookingdetails_down(
                    txt: "Show Time",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: showtime.toString()),
                completebookingdetails_down(
                    txt: "Start Date",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: startdate.toString().substring(0, 11)),
                completebookingdetails_down(
                    txt: "End Date",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: enddate.toString().substring(0, 11)),
                completebookingdetails_down(
                    txt: "Price",
                    siz: 7.sp,
                    wei: FontWeight.bold,
                    txt2: price.toString()),
                okbutton(),
              ],
            ),
          ),
        );
      });
}
