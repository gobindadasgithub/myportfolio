import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyAboutPages extends StatefulWidget {
  const MyAboutPages({Key? key}) : super(key: key);

  @override
  State<MyAboutPages> createState() => _MyAboutPagesState();
}

class _MyAboutPagesState extends State<MyAboutPages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,

      ),
      body: Container(
    child: Stack(
    children: [
    Container(
    margin: EdgeInsets.only(top: 60),
    child: ShaderMask(
    shaderCallback: (rect) {
    return LinearGradient(
    begin: Alignment.center,
    end: Alignment.bottomCenter,
    colors: [Colors.black,Colors.transparent]).createShader(Rect.fromLTRB(0, 0, rect.width, rect.height));
    },
    blendMode: BlendMode.dstIn,
    child: Image.asset('assets/images/images.png',height: 400,fit: BoxFit.contain,)),
    ),
    Container(
    alignment: Alignment.center,
    margin: EdgeInsets.only(
    top: MediaQuery.of(context).size.height * 0.55
    ),
    child: Column(
    children: [
      SizedBox(height: 10,),
      Text("Hello I am",style: TextStyle(fontFamily: 'soho',fontSize:30,color: Colors.white ),),
    SizedBox(height: 10,),
    Text("Gobinda Das",style: TextStyle(fontFamily: 'soho',fontSize:40,fontWeight: FontWeight.bold,color: Colors.white ),),
    SizedBox(height: 2,),
    Text("Android App Developer",style: TextStyle(fontFamily: 'soho',fontSize: 20,fontWeight: FontWeight.bold,color: Colors.white),),
          SizedBox(height: 20,),
          SizedBox(
            width: 120,
            child: TextButton(onPressed: (){}, child: Text('Here Me'),style: TextButton.styleFrom(backgroundColor: Colors.white,primary: Colors.black),
            ),
          ),
      SizedBox(height: 40,),

      Row(
        mainAxisAlignment: MainAxisAlignment.center,

       children: [
         IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.facebook,color: Colors.white,)),
         IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.linkedin,color: Colors.white,)),
         IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.instagram,color: Colors.white,)),
         IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.github,color: Colors.white,)),
       ],
      )

    ],
    ),
    ),


    ],
    ),
    ),


    );
  }
}
