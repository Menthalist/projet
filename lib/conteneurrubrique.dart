import 'package:flutter/material.dart';
class conteneurrubrique extends StatelessWidget {
final String nbrei, nbrem,piece,typepi;
final Image image;
const conteneurrubrique({super.key, required this.nbrei,required this.nbrem,required this.piece,required this.typepi,required this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 20,left: 10,right: 15),
      width: MediaQuery.of(context).size.width*0.948,
      height: MediaQuery.of(context).size.height*0.11,
      decoration: BoxDecoration(
        border: Border.all(width: 1.3, color: const Color.fromARGB(218, 219, 219, 215) ),
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
         Align(
          alignment: Alignment.center,
           child: Padding(padding: const EdgeInsets.only(left: 10, ),
           child: image,),
         ),
         Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: const EdgeInsets.only(top: 15,left: 15),
            child: Text(piece,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 15,
                              fontWeight: FontWeight.w800,
                              ),
                              textAlign: TextAlign.justify, ),),
                              
           Padding(padding: const EdgeInsets.only(left: 15,top: 5),
            child: Text(typepi,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.justify ),),
                              Row(
                                children:[
                                 const Padding(padding: EdgeInsets.only(top: 30,left: 15 ),),
                                const Image(image: AssetImage("assets/img/pic.png"),),
                               const Padding(padding: EdgeInsets.only(left: 5 ),),
                              
                              Text(nbrei,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.justify),
                              const Padding(padding: EdgeInsets.only( left: 10,top: 20),),
                                const Image(image: AssetImage("assets/img/me.png"),),
                               const Padding(padding: EdgeInsets.only(left: 5 ),),
                               Text(nbrem,style: const TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 13,
                              fontWeight: FontWeight.w600,
                              ),
                              textAlign: TextAlign.justify
                              ),

           ] ),
         
        ]),
          Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Padding(padding: EdgeInsets.only(left: 170),),
                  InkWell(
                 onTap: (() {
                    showModalBottomSheet(
                    context: context,
                    builder: (context) {
                      return Column(
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          ListTile(
                            title: const Text('Modifier',style: TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 14,
                              fontWeight: FontWeight.w800,),),
                            leading: const Icon(Icons.edit,color: Colors.black,),
                            
                            onTap: () {
                              Navigator.pop(context);
                            },
                          ),
                          ListTile(
                            
                            title: const Text('Supprimer',style: TextStyle(fontFamily: "FuturaLT.ttf",
                              fontSize: 14,
                              fontWeight: FontWeight.w800,),),
                              leading: const Icon(Icons.delete,color: Colors.black,),
                            onTap: () {
                              Navigator.pop(context);
                            },  
                          ),
                        ],
                      );
                    });
              
             
          
          
   } ),
                 child:
                  const Align(
                    
                    child:Image(image: AssetImage("assets/img/bu.png")),),
                    
                     
         
      
      
      )]),
     ]),
     );
  }
}