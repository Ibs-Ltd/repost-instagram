import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class UpgradeMembership extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images/bg3.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
           children: [
             Padding(
               padding: const EdgeInsets.all(12.0),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   IconButton(onPressed: ()=>{
                   Navigator.of(context).pop() // close the drawer
                   }, icon:const Icon(Icons.close,color: Color(
                       0xf5020538),)),
                   Text("Restore",style: GoogleFonts.poppins(textStyle:const TextStyle(fontSize: 18)),)
                 ],
               ),
             ),
             const SizedBox(
               height: 70,
             ),
             Container(
               margin:const EdgeInsets.only(right: 30),
               width: MediaQuery.of(context).size.width,
                 child: RichText(
                   textAlign: TextAlign.end,
                   text: TextSpan(
                     text: 'Get unlimited\naccess now',
                     style: GoogleFonts.poppins(textStyle:const TextStyle(color: Color(
                         0xf5020538),fontSize: 35, fontWeight: FontWeight.bold)),
                     children: <TextSpan>[
                       TextSpan(
                           text:'\nRemove Watermarks and Ads', style:GoogleFonts.poppins(textStyle: const TextStyle(fontSize:18,color:Colors.white70,))),
                     ],
                   ),
                 ),),
             const SizedBox(
               height: 90,
             ),
             Container(
               margin:const EdgeInsets.only(left: 30),
               width: MediaQuery.of(context).size.width,
               child: RichText(
                 textAlign: TextAlign.start,
                 text: TextSpan(
                   text: '\$4.99',
                   style: GoogleFonts.poppins(textStyle:const TextStyle(color: Colors.white,fontSize: 50, fontWeight: FontWeight.bold)),
                   children: <TextSpan>[
                     TextSpan(
                         text:'\nper month', style:GoogleFonts.poppins(textStyle: const TextStyle(fontSize:30,color:Colors.white70,))),
                   ],
                 ),
               ),),
             const SizedBox(
               height: 100,
             ),
              Expanded(
                child: ClipRRect(
                 borderRadius:const BorderRadius.only(topLeft: Radius.circular(10),topRight: Radius.circular(10)),
                 child: Container(
                   height: 100,
                   width: MediaQuery.of(context).size.width,
                   color: const Color(0xF1EFDFCD),
                   child:Column(
                     mainAxisAlignment: MainAxisAlignment.center,
                     crossAxisAlignment: CrossAxisAlignment.center,
                     children: [
                       Text("3 days free",style:GoogleFonts.poppins(textStyle:const TextStyle(color: Color(
                           0xf5020538),fontSize: 15,fontWeight: FontWeight.bold))),
                       const SizedBox(
                         height: 5,
                       ),
                       SizedBox(
                         width: MediaQuery.of(context).size.width*0.75,
                         child: ElevatedButton(onPressed: ()=>{


                         },
                           style: ElevatedButton.styleFrom(
                               backgroundColor: const Color(0xf5020538)
                           ), child: Text("Start for free",style:GoogleFonts.poppins(textStyle:const TextStyle(color: Color(
                               0xF1EFDFCD),fontSize: 16,fontWeight: FontWeight.bold))),),
                       ),
                       const SizedBox(
                         height: 5,
                       ),
                       Text("Then \$4.99 per month",style:GoogleFonts.poppins(textStyle:const TextStyle(color: Color(
                           0xf50176d0),fontSize: 15,fontWeight: FontWeight.bold))),
                     ],
                   )
                 ),
             ),
              )
           ],
        ),),
      ),
    );
  }
}
