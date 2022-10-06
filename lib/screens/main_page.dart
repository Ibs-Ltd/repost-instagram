import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repost_instagram/models/popup_menu_values.dart';
import 'package:repost_instagram/utils/app_colors.dart';
import 'package:repost_instagram/widgets/customer_clipper_curver.dart';

class MainPage extends StatefulWidget {
  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
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
            height: 30,
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Active",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            color: AppColors.primaryColor2,
                            fontSize: 18,
                            fontWeight: FontWeight.w700))),
                const SizedBox(
                  height: 10,
                ),
                _getPost(),
                const Padding(
                  padding: EdgeInsets.all(30.0),
                  child: Divider(
                    color: Colors.blueGrey,
                    thickness: 1,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Reposted ",
                        style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                color: AppColors.primaryColor2,
                                fontSize: 18,
                                fontWeight: FontWeight.w700))),
                    InkWell(
                      onTap: () => {
                        // on tap clear process will go here
                      },
                      child: Container(
                          width: 60,
                          height: 20,
                          decoration: BoxDecoration(
                              border: Border.all(
                                color: Colors.blueGrey,
                              ),
                              borderRadius: BorderRadius.circular(20)),
                          child: Center(
                            child: Text("Clear",
                                style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                        color: AppColors.primaryColor2,
                                        fontSize: 13))),
                          )),
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    )));
  }

  Widget _getPost() {
    return Container(
      height: 182,
        decoration: BoxDecoration(
            border: Border.all(
              color: Colors.blueGrey,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Column(children: [
          // Header Section
          Container(
            height: 30,
            padding: const EdgeInsets.only(top: 5),
            margin: const EdgeInsets.only(left: 10),
            child: Row(
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
                  offset: const Offset(0, 25),
                  padding: const EdgeInsets.all(0),
                  icon: Icon(Icons.more_horiz,color: AppColors.primaryColor,),
                  onSelected: chooseAction,
                  itemBuilder: (BuildContext context) {
                    return getData().map((MenuDataItem item) {
                      return PopupMenuItem<String>(
                        padding:const EdgeInsets.all(3),
                        value: item.value,
                        height: 30,
                        child: Row(
                          children: [
                            Icon(item.icon,color: item.iconColor,),
                            const SizedBox( width: 5,),
                            Text(item.value,style: GoogleFonts.poppins(
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
          ),
          const Divider(thickness: 1,color: Colors.grey,height: 0,),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: ClipRRect(
                  borderRadius: const BorderRadius.only(bottomLeft: Radius.circular(10)),
                  child: Image.asset("assets/images/image_item.jpg",
                    height: 150,
                    fit: BoxFit.cover,
                    width: MediaQuery.of(context).size.width/2,
                  ),
                ),
              ),
              Expanded(
                  flex: 1,
                  child: Padding(
                    padding: const EdgeInsets.all(10),
                    child: SingleChildScrollView(
                      child: Text(
                          "It is a long established fact that a reader will be distracted by the readable content of a page when looking at its layout.",
                        style:GoogleFonts.poppins(textStyle: const TextStyle(fontSize: 12)) ,),
                    ),
                  ))
            ],
          ),
          // Image Section
        ]));
  }
}
void chooseAction(String value) {
  switch(value){
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