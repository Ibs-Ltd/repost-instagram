import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repost_instagram/screens/account_page.dart';
import 'package:repost_instagram/screens/faq_page.dart';
import 'package:repost_instagram/screens/main_page.dart';
import 'package:repost_instagram/screens/sign_in_page.dart';
import 'package:repost_instagram/screens/upgrade_membership_page.dart';
import 'package:repost_instagram/utils/app_colors.dart';

class DrawerItem {
  String title;
  String imagePath;

  DrawerItem(this.title, this.imagePath);
}

class HomePage extends StatefulWidget {
  final drawerItems = [
    DrawerItem("How to Repost", "assets/images/restore.png"),
    DrawerItem("FAQ", "assets/images/faq.png"),
    DrawerItem("Accounts", "assets/images/profile.png"),
    DrawerItem("Rate Us", "assets/images/star.png"),
    DrawerItem("Share App", "assets/images/share.png"),
    DrawerItem("Restore Purchases", "assets/images/restore.png"),
  ];

  @override
  State<StatefulWidget> createState() {
    return HomePageState();
  }
}

class HomePageState extends State<HomePage> {
  int _selectedDrawerIndex = 0;
  bool isAccount = false;
  final GlobalKey<ScaffoldState> _globalKey = GlobalKey<ScaffoldState>();

  _getDrawerItemWidget(int pos) {
    switch (pos) {
      case 0:
        return SigninPage();
      case 1:
        return FAQPage();
      case 2:
        return AccountPage();
      case 3:
        return MainPage();
      default:
        return MainPage();
    }
  }

  _onSelectItem(int index) {
    if (index == 2) {
      setState(() {
        isAccount = true;
      });
    } else {
      setState(() {
        isAccount = false;
      });
    }

    Navigator.of(context).pop();
    switch (index) {
      // case 3:
      //   // rate us code will go here
      //   break;
      case 4:
        //share app code will go here
        break;
      case 5:
        //restore purchase code will go here
        break;
      default:
        setState(() => _selectedDrawerIndex = index);
        break;
    }
  }

  @override
  Widget build(BuildContext context) {
    List<Widget> drawerOptions = [];
    for (var i = 0; i < widget.drawerItems.length; i++) {
      var d = widget.drawerItems[i];
      drawerOptions.add(InkWell(
        onTap: () => {_onSelectItem(i)},
        child: Container(
          padding: const EdgeInsets.only(left: 15),
          child: Column(
            children: [
              Row(
                children: [
                  Image.asset(d.imagePath),
                  Text(d.title,
                      style: GoogleFonts.poppins(
                          fontSize: 12,
                          textStyle: TextStyle(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600))),
                ],
              ),
              Divider(
                thickness: 0.7,
                color: AppColors.primaryColor,
              ),
            ],
          ),
        ),
      ));
    }

    return Scaffold(
      key: _globalKey,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        elevation: 0.0,
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0, top: 10),
            child: IconButton(
                onPressed: () => {_globalKey.currentState!.openEndDrawer()},
                icon: const Icon(
                  Icons.menu,
                  color: Colors.white,
                  size: 30,
                )),
          )
        ],
        leading: Padding(
          padding: const EdgeInsets.only(left: 20, top: 10),
          child: isAccount
              ? IconButton(
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  icon: const Icon(
                    Icons.arrow_back,
                    color: Colors.white,
                  ))
              : Image.asset(
                  "assets/images/insta.png",
                  scale: 25,
                ),
        ),
      ),
      endDrawer: SizedBox(
        height: 530,
        width: MediaQuery.of(context).size.width * 0.75,
        child: Drawer(
          shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), bottomLeft: Radius.circular(20)),
          ),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 10,
              ),
              CircleAvatar(
                backgroundColor: Colors.white,
                child: Image.asset(
                  "assets/images/profile.png",
                  scale: 0.5,
                ),
              ),
              Text('@robert_spensor',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      color: AppColors.primaryColor,
                    ),
                  )),
              const SizedBox(
                height: 20,
              ),
              Text("Settings",
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                        fontSize: 30,
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold),
                  )),
              const SizedBox(
                height: 20,
              ),
              InkWell(
                onTap: () {
                  Navigator.of(context).pop();
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpgradeMembership(),
                    ),
                  );
                },
                child: Container(
                  padding: const EdgeInsets.only(left: 15),
                  height: 40,
                  width: MediaQuery.of(context).size.width * 0.75,
                  color: AppColors.primaryColor,
                  child: Row(
                    children: [
                      Image.asset("assets/images/crown.png"),
                      RichText(
                          text: TextSpan(
                        text: " Upgrade to a ",
                        style: GoogleFonts.poppins(
                          textStyle: const TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                          ),
                        ),
                        children: <TextSpan>[
                          TextSpan(
                              text: 'Premium Membership',
                              style: GoogleFonts.poppins(
                                  fontSize: 12,
                                  textStyle: const TextStyle(
                                    color: Colors.white,
                                  ))),
                        ],
                      ))
                    ],
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              Column(children: drawerOptions)
            ],
          ),
        ),
      ),
      body: _getDrawerItemWidget(_selectedDrawerIndex),
    );
  }
}
