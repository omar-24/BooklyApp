import 'package:booklyapp/feature/home/presentation/home_screen.dart';
import 'package:flutter/material.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  State<splashscreen> createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> with SingleTickerProviderStateMixin{

  late AnimationController animationController;
  late Animation<Offset> slideanimation1;
  late Animation<Offset> slideanimation2;


  @override
  void initState() {
    Future.delayed(Duration(seconds: 4),(){
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> homeScreen()));
    });
    // TODO: implement initState
    super.initState();
    animationController = AnimationController(vsync: this,duration: Duration(seconds: 2));
    slideanimation1 = Tween<Offset>(begin:Offset(0, 15),end: Offset.zero).animate(animationController);
    slideanimation2 = Tween<Offset>(begin:Offset(0, -7),end: Offset.zero).animate(animationController);
    animationController.forward();
    setState(() {

    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     body:
      Container(width:double.infinity,height:double.infinity,color: Color(0xFF0f0c29),
        child: Column(mainAxisAlignment:MainAxisAlignment.center,children:[
        SlideTransition(position:slideanimation2,child: Image.asset("images/Logo.png")),
        SlideTransition(position:slideanimation1,child: Text("Read free books",style: TextStyle(fontSize: 20,color: Colors.white),)),
            ],),
      ));
  }
}
