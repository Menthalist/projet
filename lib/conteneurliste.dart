import 'package:flutter/material.dart';
class conteneurliste extends StatelessWidget {
  
  String nbrecle, piece;
  conteneurliste({super.key, required this.piece,required this.nbrecle});
  
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      width: MediaQuery.of(context).size.width*0.9,
      height: MediaQuery.of(context).size.height*0.06,
      decoration: BoxDecoration(
        border: Border.all(width: 0.8, color: const Color.fromARGB(218, 219, 219, 215) ),
        borderRadius: BorderRadius.circular(8),
        boxShadow: const [
          BoxShadow(
              color: Colors.grey,
                      offset: Offset(
                        1.0,
                        1.0,
                      ),
                      blurRadius: 8.0,
                      spreadRadius: 1.0,
                    ), //BoxShadow
                    BoxShadow(
                      color: Colors.white,
                      offset: Offset(0.0, 0.0),
                      blurRadius: 0.0,
                      spreadRadius: 0.0,
                    ), //BoxSh
        ]
      ),
      child: Row(
        children: [
         const Align(
          alignment: Alignment.center,
           child: Padding(padding: EdgeInsets.only(left: 20, ),
           child: Image(image: AssetImage("assets/img/cle.png")),),
         ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(top: 7,left: 10),
            child: Text('$nbrecle CLES',style: const TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.justify, ),),
                              
           Padding(padding: const EdgeInsets.only(left: 10),
            child: Text(piece,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.justify ),),
                              
          ],
         ),
                
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 200),),
                  InkWell(
                 onTap: (() {
                    
                  }),
                 child:
                  const Align(
                    alignment: Alignment.centerRight,
                    child:Image(image: AssetImage("assets/img/bu.png")),),),       
         
      
      ],
      ),

    ]));
  }
}