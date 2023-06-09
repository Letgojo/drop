import 'package:calendar_date_picker2/calendar_date_picker2.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triptokorea/Pages/Home/Homepage.dart';
import 'package:triptokorea/Pages/Trip/TripNoPage/TripNo2.dart';

import '../../Menu/menuBar.dart';

class TripNo1 extends StatefulWidget {
  const TripNo1({super.key});

  @override
  State<TripNo1> createState() => _TripNo1State();
}

class _TripNo1State extends State<TripNo1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        title: Text(
          "여행계획",
          style: GoogleFonts.jua(
              textStyle: TextStyle(fontSize: 20, color: Colors.black)),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const menuBar()));
              },
              icon: Icon(
                Icons.close,
                color: Colors.black,
              ))
        ],
      ),
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 20, left: 40),
            child: Row(
              children: [
                TextButton(
                    onPressed: () {},
                    child: Text('도시',
                        style: GoogleFonts.jua(
                            textStyle:
                                TextStyle(fontSize: 20, color: Colors.black)))),
                IconButton(onPressed: () {}, icon: Icon(Icons.location_on))
              ],
            ),
          ),
          Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 70, bottom: 20),
            child: Row(
              children: [
                Text(
                  "날짜",
                  style: GoogleFonts.jua(
                      textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Icon(Icons.calendar_month)
              ],
            ),
          ),
          Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 70, bottom: 20),
            child: Row(
              children: [
                Text(
                  "인원",
                  style: GoogleFonts.jua(
                      textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Icon(Icons.person)
              ],
            ),
          ),
          Container(
            width: 100,
            height: 45,
            margin: EdgeInsets.only(right: 200),
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
          ),
          Container(
            margin: const EdgeInsets.only(top: 20, left: 70, bottom: 20),
            child: Row(
              children: [
                Text(
                  "동행",
                  style: GoogleFonts.jua(
                      textStyle: TextStyle(fontSize: 20, color: Colors.black)),
                ),
                Icon(Icons.person)
              ],
            ),
          ),
          Container(
            width: 300,
            height: 45,
            decoration: BoxDecoration(
                border: Border.all(width: 1),
                borderRadius: BorderRadius.circular(10)),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
              child: SizedBox(
            width: 300,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const TripNo2()));
              },
              child: Text("다음"),
            ),
          ))
        ],
      ),
    );
  }
}
