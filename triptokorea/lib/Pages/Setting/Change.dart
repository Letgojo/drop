import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Change extends StatefulWidget {
  const Change({super.key});

  @override
  State<Change> createState() => ChangeState();
}

class ChangeState extends State<Change> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text(
            "회원정보수정",
            style: GoogleFonts.jua(
                textStyle: TextStyle(fontSize: 20, color: Colors.black)),
          ),
          centerTitle: true,
          automaticallyImplyLeading: false,
          backgroundColor: Colors.transparent,
          elevation: 0,
        ),
        body: Column(children: [
          Container(
              child: Column(children: [
            SizedBox(height: 30),
            CircleAvatar(
              radius: 36,
              backgroundColor: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8),
                child: Icon(
                  Icons.person,
                  size: 50,
                ),
              ),
            ),
            SizedBox(height: 16), //상단여백
          ]))
        ]));
  } //아이콘 니 왜 중앙으로 안가?
}
