



import 'package:flutter/material.dart';
import 'package:myportfolio/pages/about_pages.dart';

import 'package:myportfolio/pages/home_pages.dart';
import 'package:myportfolio/pages/project_pages.dart';

void  main() {

runApp(MaterialApp(
theme: ThemeData(
  fontFamily: 'soho'
),
  debugShowCheckedModeBanner: false,
initialRoute: 'home',
 routes: {
    'home':(context)=>MyHomePages(),
    'about':(context)=>MyAboutPages(),
   'projects':(context)=>MyProjects()






 },


));


}

