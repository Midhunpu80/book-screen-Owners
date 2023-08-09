// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';

import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/utils/okbuttons/okbutton.dart';

import 'package:sizer/sizer.dart';

viewrebookingdetailscard(
    {required BuildContext context,
    required var username,
    required var movie,
    required var screen,
    required var qyt,
    required var seats,
    required var date,
    required var showtime,
    required var bookid,
    required var sub,
    required var fees,
    required var total}) {
  return showDialog(
      context: context,
      builder: (context) {
        //   final bb = bookingdatas.reply.data[index];

        return AlertDialog(
            // ignore: sized_box_for_whitespace
            content: Container(
          height: 60.h,
          width: 100.w,
          child: SingleChildScrollView(
            child: Column(
              children: [
                booking_details_head(
                    txt: "Booking Summary", siz: 12, wei: FontWeight.bold),
                SizedBox(
                  height: 3.h,
                ),
                SizedBox(
                  height: 55.h,
                  width: 100.w,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      booking_details_head(
                          txt: movie.toString(), siz: 10, wei: FontWeight.w400),
                      SizedBox(
                        height: 2.h,
                      ),
                      booking_details_head(
                          txt: username.toString(),
                          siz: 10,
                          wei: FontWeight.w400),
                      SizedBox(
                        height: 1.h,
                      ),
                      booking_details_head(
                          txt:
                              "-----------------------------------------------------------------------------",
                          siz: 10,
                          wei: FontWeight.w400),
                      SizedBox(
                        //color: blu,
                        height: 40.h,

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            completebookingdetails_down(
                                txt: "Screen",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: screen),
                            completebookingdetails_down(
                                txt: "Ticket Qyt",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: qyt),
                            completebookingdetails_down(
                                txt: "Seats",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: seats),
                            completebookingdetails_down(
                                txt: "Date",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: date),
                            completebookingdetails_down(
                              txt: "Show Time",
                              siz: 6.sp,
                              wei: FontWeight.w300,
                              txt2: showtime,
                            ),
                            completebookingdetails_down(
                                txt: "Booking Id ",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: bookid),
                            completebookingdetails_down(
                                txt: "Sub total",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: sub),
                            completebookingdetails_down(
                                txt: "Convience fees",
                                siz: 6.sp,
                                wei: FontWeight.w300,
                                txt2: fees),
                            completebookingdetails_down(
                                txt: "Total",
                                siz: 8.sp,
                                wei: FontWeight.w500,
                                txt2: total),
                            okbutton(),
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
      });
}

Widget booking_details_head(
    {required var txt, required double siz, required var wei}) {
  return alltext(txt: txt, col: bl, siz: siz.sp, wei: wei, max: 1);
}

Widget completebookingdetails_down(
    {required var txt,
    required double siz,
    required var wei,
    required var txt2}) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: [
      alltext(txt: txt, col: bl, siz: siz.sp, wei: wei, max: 1),
      alltext(txt: txt2, col: bl, siz: siz.sp, wei: wei, max: 1),
    ],
  );
}
