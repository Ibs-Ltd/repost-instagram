import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:repost_instagram/screens/home_page.dart';
import 'package:shared_preferences/shared_preferences.dart';

class OnBoardingPage extends StatefulWidget {
  @override
  State<OnBoardingPage> createState() => _OnBoardingPageState();
}

class _OnBoardingPageState extends State<OnBoardingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
              decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/bg.jpeg"),
              fit: BoxFit.cover,
            ),
          )),
          Container(
            margin: const EdgeInsets.only(top: 150),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                   const Icon(Icons.repeat,size: 50,color: Colors.white,),
                   const SizedBox(width: 5,),
                    Text("repost",style:GoogleFonts.poppins(textStyle:const TextStyle(fontSize: 50,color: Colors.white,fontWeight: FontWeight.bold),))
                  ],
                ),
                RichText(text: TextSpan(
                  text: "for ",
                  style:GoogleFonts.poppins(textStyle:const  TextStyle(color: Colors.white54,fontSize: 30)), /*defining default style is optional */
                  children: [
                    TextSpan(
                        text:'Instagram', style:GoogleFonts.poppins(textStyle:const  TextStyle(fontSize:30,color:Colors.white,))),
                  ]
                ))
              ],
            ),
          ),
          Positioned(
            left:20.0,
              bottom: 150.0,
              child: RichText(
                text: TextSpan(
                  text: 'Want to repost content\nfrom ',
                  style: GoogleFonts.poppins(textStyle:const TextStyle(color: Colors.white54,fontSize: 18)), /*defining default style is optional */
                  children: <TextSpan>[
                    TextSpan(
                        text:'Instagram?\n', style:GoogleFonts.poppins(textStyle: const TextStyle(fontSize:18,color:Colors.white,))),
                    TextSpan(
                        text: 'Look no further than ',
                        style: GoogleFonts.poppins(textStyle:const TextStyle(color: Colors.white54,fontSize: 18))),
                    TextSpan(
                        text: 'Repost!',
                      style: GoogleFonts.poppins(textStyle:const TextStyle(fontSize:18,color:Colors.white,))),
                  ],
                ),
              ),),
          Positioned(
            bottom: 30.0,
            right: 20.0,
            child: InkWell(
                child:  Image.asset(
                 "assets/images/arrow_forward.png"
                ),
                onTap: () => {
                   moveToHome(context)
                }),
          )
        ],
      ),
    );
  }

  moveToHome(BuildContext context){
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => HomePage(),
      ),
    );
  }
}
