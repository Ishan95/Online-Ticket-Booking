import 'package:flutter/material.dart';
// import 'package:device_preview/device_preview.dart';
import 'cab_form.dart';
import 'train_form.dart';
import 'bus_form.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Online Ticket Booking',
      theme: ThemeData(
        primarySwatch: Colors.pink,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  //const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Online Ticket Booking'),
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            IconButton(
              icon: Icon(Icons.search),
              onPressed: () {},
            ),
            IconButton(
              icon: Icon(Icons.more_vert),
              onPressed: (){},
            ),
          ],
//            flexibleSpace: Image.asset(
//              "assests/back.jpg",
//              fit: BoxFit.cover,
//            ),
          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.directions_car), text: 'Cab'),
              Tab(icon: Icon(Icons.directions_transit), text: 'Train'),
              Tab(icon: Icon(Icons.directions_bus), text: 'Bus' ),
            ],
          ),
          elevation: 22.0,
          backgroundColor: Colors.pink,
        ),
        body: TabBarView(
          children: [
            FormScr(),
            FormScr1(),
            FormScr2(),
          ],
        ),
      ),
    );
  }
}
// Widget tab1(){
//   return Container(
//     child: Center(
//       child: Text('Text'),
//     ),
//   );
// }
Widget tab2(){
  return Container(
    child: Center(
      child: Text('Text'),
    ),
  );
}
Widget tab3(){
  return Container(
    child: Center(
      child: Text('Text'),
    ),
  );
}