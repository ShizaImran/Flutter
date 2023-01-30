import 'package:flutter/material.dart';
import 'package:scholarship_assistance_app/favourite.dart';
import 'package:scholarship_assistance_app/myaccount.dart';

void main(){
  runApp(MyApp());
}


class MyApp extends StatefulWidget {
  const MyApp ({Key? key}) : super(key: key);
  State<MyApp> createState()=> _MyApp();}

class _MyApp extends  State<MyApp>{
  int _selectedIndex=0;

  final List<Widget> _pages = [MyAccount(), Favourite(), MyApp()];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Scholarship Assistance App",
theme: ThemeData(
  primarySwatch: Colors.purple,
),
 home: Scaffold(
   appBar: AppBar(
     title: Text("Scholarship Assistance App"),
   ),
 body:ListView.builder(

     itemCount: 1,
     itemBuilder: (BuildContext context, int index) {
       return ListTile(
         leading:CircleAvatar(backgroundImage:AssetImage('assets/images/3754775-middle.jpg'),
             backgroundColor:Colors.purple.shade300,
         ),
       trailing: Icon(Icons.favorite),
        title: Text('hello ${index}' ),
         subtitle: Text('Deadline')
       );
     }
 ),

   bottomNavigationBar:BottomNavigationBar (

 currentIndex: _selectedIndex,
    selectedItemColor: Colors.purple.shade300,
    onTap: _onItemTapped,
     items:const [

       BottomNavigationBarItem(
         icon: Icon(Icons.home),
         label: 'Home',
       ),


       BottomNavigationBarItem(
         icon: Icon(Icons.favorite),
         label: 'Saved',
       ),

       BottomNavigationBarItem(
         icon:  Icon(Icons.account_circle),
         label: 'Me',
       )
     ]
   ),
 )
    );
  }



}