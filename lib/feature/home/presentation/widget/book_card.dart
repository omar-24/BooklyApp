import 'package:flutter/material.dart';

class bookCard extends StatelessWidget {
  const bookCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(padding: EdgeInsets.only(bottom: 15,left: 20),
      child:
      Row(children: [
        Container(color: Colors.blueAccent,width: 78,height:110,child:Image.asset("images/Cold_Lake.jpeg",fit: BoxFit.fill,),),
        SizedBox(width: 20,),
        Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Cold Lake",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold ),),
          Text("jeff carson",style: TextStyle(color: Colors.white,fontSize:15),),
          Row(children: [
            SizedBox(height: 10,),
            Text("19.44\$",style: TextStyle(color: Colors.white,fontSize:20,fontWeight: FontWeight.bold),),
            SizedBox(width: 80,),
            Icon(Icons.star,color: Colors.yellow,size: 18,),
            Text("4.5",style: TextStyle(color: Colors.white,fontSize:15,fontWeight: FontWeight.bold),),
            Text("(2324)",style: TextStyle(color: Colors.white,fontSize:12,),)

          ],)
        ],)
      ],),
    );
  }
}
