import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repost_instagram/models/faq_model.dart';
import 'package:repost_instagram/utils/app_colors.dart';
import 'package:repost_instagram/widgets/customer_clipper_curver.dart';

class FAQPage extends StatefulWidget {
  @override
  State<FAQPage> createState() => _FAQPageState();
}

class _FAQPageState extends State<FAQPage> {
  final List<FAQItem> _data = getItemList();

  Widget _buildListItems() {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: _data.length,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 30),
            color: Colors.transparent,
            child: ListTileTheme(
              contentPadding: const EdgeInsets.all(0),
              dense: true,
              horizontalTitleGap: 0.0,
              minLeadingWidth: 0,
              child: Theme(
                data:Theme.of(context).copyWith(dividerColor: Colors.transparent),
                child: ExpansionTile(
                  onExpansionChanged: (bool expanding) =>
                      setState(() => _data[index].isExpanded = expanding),
                  leading: _data[index].isExpanded
                      ?  Icon(Icons.keyboard_arrow_up_sharp,color: AppColors.primaryColor,)
                      :  Icon(Icons.keyboard_arrow_down_sharp,color: AppColors.primaryColor,),
                  trailing: const SizedBox(),
                  title: Text(
                    _data[index].headerValue,
                    style:GoogleFonts.poppins(textStyle:  TextStyle(color: AppColors.primaryColor,fontWeight: FontWeight.bold)),
                  ),
                  children: <Widget>[
                    ListTile(
                        title: Card(
                          margin: const EdgeInsets.symmetric(horizontal: 10),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                      _data[index].expandedValue,
                              style: GoogleFonts.poppins(textStyle:  TextStyle(color: AppColors.primaryColor,fontSize: 12)),
                    ),
                          ),
                        )),
                  ],
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
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
          Center(
              child: Text(
            "FAQ",
            style: GoogleFonts.poppins(
                textStyle: TextStyle(
                    fontSize: 40,
                    color: AppColors.primaryColor,
                    fontWeight: FontWeight.w600)),
          )),
          const SizedBox(
            height: 15,
          ),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "What is Repost?",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 15,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w700)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Repost is an application that allows you to repost photos and videos from instagram",
                    style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontSize: 12,
                            color: AppColors.primaryColor,
                            fontWeight: FontWeight.w400)),
                  ),
                ],
              )),
          Expanded(child: _buildListItems()),
          Align(
            alignment: FractionalOffset.bottomCenter,
            child: Container(
              margin: const EdgeInsets.only(bottom: 10),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:[
                    InkWell(
                      onTap: (){
                        //privacy policy click code will go here
                      },
                      child: Text('Privacy Policy',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 13,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600))),
                    ),
                    Container(
                      margin: const EdgeInsets.symmetric(horizontal: 8),
                      decoration: BoxDecoration(shape: BoxShape.circle, color: AppColors.primaryColor),
                      width: 5,
                      height: 5,
                    ),
                    InkWell(
                      onTap: (){
                        // terms of use code will go here
                      },
                      child: Text('Terms of use',style: GoogleFonts.poppins(
                          textStyle: TextStyle(
                              fontSize: 13,
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600))),
                    ),
                  ]
              ),
            ),
          ),
        ],
      ),
    ));
  }
}
