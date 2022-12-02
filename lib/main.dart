
import 'package:flutter/material.dart';
import 'package:newsapi_01/provider.dart';
import 'package:newsapi_01/scondscreen.dart';
import 'package:newsapi_01/tabbar.dart';

import 'package:provider/provider.dart';

import 'bottombar.dart';
import 'firstscreen.dart';
import 'newsprovider.dart';

void main(){
  runApp(
      MultiProvider(
        providers: [
          ListenableProvider<Api_Provider>(create: (context)=>Api_Provider()),
          ListenableProvider<bootam_Provider>(create: (context)=>bootam_Provider()),
        ],
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: 'shop',
          routes: {
            '/':(context)=>bottomber_Screen(),
            'second':(context)=>Secondscreen(),
            'tab':(context)=>api_tabbar(),
            'shoptwo':(context)=>newsApi_FirstScreen(),
          },
        ),
      )
  );
}