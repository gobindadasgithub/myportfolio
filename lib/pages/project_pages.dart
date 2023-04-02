import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyProjects extends StatefulWidget {
  const MyProjects({Key? key}) : super(key: key);

  @override
  State<MyProjects> createState() => _MyProjectsState();
}

class _MyProjectsState extends State<MyProjects> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text("Projects"),
      ),
      body: SingleChildScrollView(
        child: Container(
          alignment: Alignment.center,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              myProjests('Flutter', 'Click 2 Code','An Online Complier','10'),
              myProjests('Flutter', 'Click 2 Code','An Online Complier','10'),
              myProjests('Flutter', 'Click 2 Code','An Online Complier','10'),
              myProjests('Flutter', 'Click 2 Code','An Online Complier','10'),
            ],
          ),
        ),
      ),

    );
  }

  myProjests(name,title,decs,star){
    return Container(
      height: 220,
      width: MediaQuery.of(context).size.width * 0.9,

      child: Card(
        color: Colors.black,
        child: Container(
          margin: EdgeInsets.only(left: 20,right: 10,top: 40),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name,style: TextStyle(fontSize: 20,color: Colors.white),),
              SizedBox(height: 15,),
              Text(title,style: TextStyle(fontSize: 30,color: Colors.white),),
              SizedBox(height:10 ,),
              Text(decs,style: TextStyle(fontSize:16 ,color: Colors.white),),


              Row(
                children: [
                  Icon(
                    Icons.star,color: Colors.white,size: 18,
                  ),
                  SizedBox(width: 5,),
                  Text(star,style: TextStyle(color: Colors.white),),
                  Expanded(child: Container()),
                  IconButton(onPressed: (){}, icon:Icon(FontAwesomeIcons.github,color: Colors.white,)),

                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
