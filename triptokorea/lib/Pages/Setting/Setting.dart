import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triptokorea/Pages/Login/Login.dart';
import 'package:triptokorea/Pages/Setting/Change.dart';
import 'package:triptokorea/Pages/Setting/Delete.dart';
import 'package:triptokorea/Pages/Setting/Introduce.dart';

class Setting extends StatelessWidget {
  const Setting({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        centerTitle: true,
        automaticallyImplyLeading: false, //Navigator back 없애기
        iconTheme: IconThemeData(color: Colors.black),
        title: Text(
          "My Page",
          style: GoogleFonts.jua(
              textStyle: TextStyle(fontSize: 20, color: Colors.black)),
        ),
      ),
      body: Column(
        children: [
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

              Text(
                "닉네임",
                style: GoogleFonts.jua(
                    textStyle: TextStyle(fontSize: 20, color: Colors.black)),
              ),
              SizedBox(height: 20), //상단여백
              ListTile(
                title: Text(
                  '회원정보 수정',
                  style: GoogleFonts.jua(textStyle: TextStyle(fontSize: 18)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Change()));
                },
              ),
              ListTile(
                title: Text(
                  'Tour Planner 소개',
                  style: GoogleFonts.jua(textStyle: TextStyle(fontSize: 18)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const Introduce()));
                },
              ),
              ListTile(
                title: Text(
                  '회원탈퇴',
                  style: GoogleFonts.jua(textStyle: TextStyle(fontSize: 18)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => const Delete()));
                },
              ),

              ListTile(
                title: Text(
                  '로그아웃',
                  style: GoogleFonts.jua(
                      textStyle: TextStyle(fontSize: 18, color: Colors.red)),
                ),
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.black,
                ),
                onTap: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (context) {
                        return Container(
                          child: AlertDialog(
                            content: Text("로그아웃 되었습니다. 다시 로그인하시기 바랍니다.",
                                style: GoogleFonts.jua(
                                    textStyle: TextStyle(
                                        fontSize: 15, color: Colors.red))),
                            actions: [
                              ElevatedButton(
                                  child: Text(
                                    "확인",
                                    style: GoogleFonts.jua(
                                        textStyle: TextStyle(
                                            fontSize: 18, color: Colors.black)),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const Login()));
                                  },
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors.white,
                                      shadowColor: Colors.white))
                            ],
                          ),
                        );
                      });
                },
              ),
            ]),
          )
        ],
      ),
    );
  }
}


// Container(
//                                 child: Text(
//                                   "Tour Planner",
//                                   style: GoogleFonts.jua(
//                                       textStyle: TextStyle(
//                                           fontSize: 17, color: Colors.black)),
//                                 ),
//                               ),
//                               Container(
//                                 height: 1,
//                                 width: 500,
//                                 color: Colors.black,
//                               ),