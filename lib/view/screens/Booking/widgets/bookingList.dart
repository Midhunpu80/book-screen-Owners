// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:owner/main.dart';
import 'package:owner/utils/alltext/alltext.dart';
import 'package:owner/utils/colors/colors.dart';
import 'package:owner/view/screens/Booking/widgets/viewbookingdetails.dart';
import 'package:sizer/sizer.dart';

Widget bookingList() {
  return Padding(
    padding: const EdgeInsets.all(8.0),
    child: Card(
      child: Container(
        height: 70.h,
        width: 100.w,
        decoration:
            BoxDecoration(borderRadius: BorderRadius.circular(1.h), color: yl),
        child: ListView.separated(
            itemBuilder: (context, index) {
              final bb = bookingdatas.reply.data[index];
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Card(
                  child: Container(
                    height: 10.h,
                    width: 100.w,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(1.h), color: pp),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        bookingalldata(txt: "${index + 1}"),
                        bookingalldata(txt: bb.userName.toString()),
                        bookingalldata(txt: bb.movieName.toString()),
                        bookingalldata(txt: bb.status.toString()),
                        bookdetailbutton(
                            username: bb.userName,
                            movie: bb.movieName,
                            context: context,
                            index: index,
                            screen: bb.screen.toString(),
                            qyt: bb.v.toString(),
                            seats: bb.selectedSeats
                                .map((e) => e.id)
                                .toList()
                                .toString(),
                            date: bb.date.toString().substring(0, 11),
                            showtime: bb.showTime.toString(),
                            bookid: bb.bookingId.toString(),
                            sub: bb.subtotal.toString(),
                            fees: bb.fee.toString(),
                            total: bb.total.toString()),
                      ],
                    ),
                  ),
                ),
              );
            },
            separatorBuilder: (context, index) {
              // ignore: prefer_const_constructors
              return SizedBox();
            },
            itemCount: bookingdatas.reply.data.length),
      ),
    ),
  );
}

Widget bookingalldata({required var txt}) {
  return alltext(txt: txt, col: wh, siz: 8.sp, wei: FontWeight.w500, max: 1);
}

Widget bookdetailbutton(
    {required BuildContext context,
    required var username,
    required var movie,
    required var index,
    required var screen,
    required var qyt,
    required var seats,
    required var date,
    required var showtime,
    required var bookid,
    required var sub,
    required var fees,
    required var total}) {
  return ElevatedButton(
      onPressed: () {
        viewrebookingdetailscard(
            username: username,
            movie: movie,
            context: context,
            screen: screen,
            qyt: qyt,
            seats: seats,
            date: date,
            showtime: showtime,
            bookid: bookid,
            sub: sub,
            fees: fees,
            total: total);
      },
      child: alltext(
          txt: "view", col: bl, siz: 8.sp, wei: FontWeight.bold, max: 2));
}
