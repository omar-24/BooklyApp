import 'package:flutter/material.dart';

class bookImg extends StatelessWidget {
  const bookImg({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 15),
      child: Container(width: 140,height: 230,
      decoration: BoxDecoration(borderRadius:BorderRadius.circular(20)),
      child: Image.asset('images/Cold_Lake.jpeg',)
      ),
    );
  }
}
