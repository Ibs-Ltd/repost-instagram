import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repost_instagram/models/popup_menu_values.dart';
import 'package:repost_instagram/utils/app_colors.dart';
import 'package:repost_instagram/widgets/customer_clipper_curver.dart';

class SigninPage extends StatefulWidget {
  @override
  State<SigninPage> createState() => _SigninPageState();
}

class _SigninPageState extends State<SigninPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                height: 120,
                color: AppColors.primaryColor,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Icon(
                      Icons.repeat,
                      size: 45,
                      color: Colors.white,
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text("repost",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                              fontSize: 45,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ))
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("How to Repost?",
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xf501011f),
                            fontSize: 18,
                            fontWeight: FontWeight.w700))),
                const SizedBox(
                  height: 20,
                ),
                RichText(
                  text: TextSpan(
                    text: '1. Open ',
                    style: GoogleFonts.poppins(
                        textStyle: const TextStyle(
                            color: Color(0xf50b0e57),
                            fontSize: 12,
                            fontWeight: FontWeight.w500)),
                    /*defining default style is optional */
                    children: <TextSpan>[
                      TextSpan(
                          text: 'Instagram\n\n',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xf501011f),
                                  fontWeight: FontWeight.w600))),
                      TextSpan(
                          text: '2. Copy link of the post you want to ',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xf50b0e57),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))),
                      TextSpan(
                          text: 'Repost\n\n',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xf501011f),
                                  fontWeight: FontWeight.w600))),
                      TextSpan(
                          text: '3. Return to ',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xf50b0e57),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))),
                      TextSpan(
                          text: 'Repost ',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xf501011f),
                                  fontWeight: FontWeight.w600))),
                      TextSpan(
                          text: 'and wait for the post to show up',
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(
                                  color: Color(0xf50b0e57),
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500))),
                    ],
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            _getPost()
          ],
        ),
      ),
    ));
  }

  _getPost() {
    return Container(
        height: 230,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(21))),
        margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
        child: Column(children: [
          // Header Section
          Row(
            children: [
              CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 16,
                  child: Image.asset("assets/images/profile.png")),
              Expanded(
                child: Padding(
                  padding: const EdgeInsets.only(
                    left: 8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        "username",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              PopupMenuButton<String>(
                offset: const Offset(0, 30),
                icon: Icon(
                  Icons.more_horiz,
                  color: AppColors.primaryColor,
                ),
                onSelected: chooseAction,
                itemBuilder: (BuildContext context) {
                  return getData().map((MenuDataItem item) {
                    return PopupMenuItem<String>(
                      padding: const EdgeInsets.all(3),
                      value: item.value,
                      height: 30,
                      child: Row(
                        children: [
                          Icon(
                            item.icon,
                            color: item.iconColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text(item.value,
                              style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 13,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w600))),
                        ],
                      ),
                    );
                  }).toList();
                },
              ),
            ],
          ),
          ClipRRect(
            borderRadius: const BorderRadius.only(
                bottomRight: Radius.circular(20),
                bottomLeft: Radius.circular(20)),
            child: Image.asset(
              "assets/images/image_item.jpg",
              fit: BoxFit.cover,
              height: 180,
              width: MediaQuery.of(context).size.width,
            ),
          ),
          // Image Section
        ]));
  }
}

void chooseAction(String value) {
  switch (value) {
    case "Mark as Reposted":
      // mark as reposted code will go here
      debugPrint("reposted");
      break;
    case "Delete Post":
      //delete post code will go here
      debugPrint("delete");
      break;
  }
}
