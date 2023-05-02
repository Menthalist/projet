import 'package:flutter/cupertino.dart';

class conteneurmenu extends StatelessWidget {
  final String nomb;
 final  String text1, text2;
  const conteneurmenu({super.key, required this.text1,required this.nomb,required this.text2});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height*0.03,
      color: const Color.fromRGBO(174, 184, 234, 0.19),
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: [
            Align(
              alignment: Alignment.center,
              child: Padding(padding: const EdgeInsets.only(left: 10),
              child:Text(nomb,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                                fontSize: 15,
                                fontWeight: FontWeight.w900,
                                ), ),),
            ),
                             
                              Align(
                                alignment: Alignment.center,
                                child: Padding(padding: const EdgeInsets.only(left: 2),
                                        child:Text(text1,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                ), ),),
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Padding(padding: const EdgeInsets.only(left: 260),
                                        child:Text(text2,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                                fontSize: 15,
                                fontWeight: FontWeight.w800,
                                ), ),),
                              )
          ],
        ),
      ),

    );
  }
}