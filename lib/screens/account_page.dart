import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repost_instagram/models/popup_menu_values.dart';
import 'package:repost_instagram/utils/app_colors.dart';
import 'package:repost_instagram/widgets/customer_clipper_curver.dart';

class AccountPage extends StatefulWidget {
  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  String _captionText =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,";

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
              height: 20,
            ),
            Text(
              "@username",
              style: GoogleFonts.poppins(
                  textStyle: TextStyle(
                      fontSize: 20,
                      color: AppColors.primaryColor,
                      fontWeight: FontWeight.w500)),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              color: const Color(0xf0d9d7d7),
              height: 250,
              width: MediaQuery.of(context).size.width,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  Positioned(
                    child: Image.asset(
                      "assets/images/image_item.jpg",
                      width: MediaQuery.of(context).size.width,
                      height: 250,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Positioned(
                    bottom: 0,
                    left: 0,
                    child: Container(
                      width: 60,
                      color: Colors.white,
                      child: Row(
                        children: [
                          Icon(
                            Icons.repeat,
                            size: 12,
                            color: AppColors.primaryColor,
                          ),
                          const SizedBox(
                            width: 5,
                          ),
                          Text("repost",
                              style: GoogleFonts.poppins(
                                textStyle: TextStyle(
                                    fontSize: 12,
                                    color: AppColors.primaryColor,
                                    fontWeight: FontWeight.bold),
                              ))
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            InkWell(
              onTap: () {
                // edit tag code will go here
              },
              child: Container(
                  padding: const EdgeInsets.all(2),
                  decoration: BoxDecoration(
                      color: AppColors.primaryColor,
                      borderRadius: BorderRadius.circular(5)),
                  height: 25,
                  width: 90,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.edit_outlined,
                        size: 12,
                        color: Colors.white,
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text("Edit tag",
                          style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                fontSize: 12,
                                color: Colors.white,
                                fontWeight: FontWeight.w400),
                          ))
                    ],
                  )),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("Caption",
                          style: GoogleFonts.poppins(
                            textStyle: TextStyle(
                                fontSize: 25,
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w700),
                          )),
                      Container(
                        padding: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                            border: Border.all(
                              color: AppColors.primaryColor,
                            ),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(5))),
                        child: Row(
                          children: [
                            Icon(
                              Icons.location_on,
                              size: 15,
                              color: AppColors.primaryColor,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text("NewYork, United States",
                                style: GoogleFonts.poppins(
                                  textStyle: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.primaryColor,
                                      fontWeight: FontWeight.w700),
                                )),
                          ],
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    padding:
                        const EdgeInsets.only(left: 12, bottom: 12, right: 6),
                    decoration: BoxDecoration(
                        border: Border.all(
                          color: AppColors.primaryColor,
                        ),
                        borderRadius:
                            const BorderRadius.all(Radius.circular(5))),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(
                                onPressed: () {
                                  //copy code will go here
                                },
                                padding: EdgeInsets.zero,
                                constraints: const BoxConstraints(),
                                icon: Icon(
                                  Icons.copy,
                                  size: 15,
                                  color: AppColors.primaryColor,
                                )),
                          ],
                        ),
                        Text(
                          _captionText,
                          style: GoogleFonts.poppins(
                              textStyle: const TextStyle(fontSize: 12)),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: (){

                    },
                    child: Container(
                      width: 130,
                      height: 35,
                      decoration: BoxDecoration(
                          gradient: AppColors.linearGradient,
                          borderRadius:
                              const BorderRadius.all(Radius.circular(5))),
                      child: Center(
                          child: Text(
                        "Repost",
                        style: GoogleFonts.poppins(
                            textStyle: const TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.w600)),
                      )),
                    ),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
