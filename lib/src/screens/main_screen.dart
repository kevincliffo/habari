import "package:flutter/material.dart";
import 'package:habari/src/pages/home_page.dart';
import 'package:habari/src/pages/list_page.dart';
import 'package:habari/src/pages/settings_page.dart';

class MainScreen extends StatefulWidget {

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Widget> pages;
  Widget currentPage;
  int currentTabIndex = 0;
  HomePage homePage;
  ListPage listPage;
  SettingsPage settingsPage;
  
  @override
  void initState() {
    homePage = HomePage();
    listPage = ListPage();
    settingsPage = SettingsPage();    

    pages = [homePage, listPage, settingsPage];
    currentPage = homePage;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return 
    //SafeArea(
      Scaffold(
        appBar:AppBar(
          backgroundColor: Colors.redAccent,
          actions: <Widget>[
            new IconButton(icon: new Icon(Icons.list),
              onPressed: (){},
            ),
          ],
                    title: Text("Habari", 
            style:TextStyle(
              color: Colors.white,
              fontSize: 20.0,
            ),
          ),
          iconTheme: IconThemeData(
            color: Colors.white,
          ),
        ),        
        // appBar: AppBar(
        //   title: Text("Habari",
        //     style:TextStyle(
        //       fontSize:18.0,
        //       fontWeight: FontWeight.bold,
        //     )
        //   ),
        //   backgroundColor:Colors.blueAccent,
        //   elevation:0,
        //   iconTheme: IconThemeData(color:Colors.black),
        // ),
        // drawer:Drawer(
        //   child:Column(
        //     children: <Widget>[
        //       ListTile(
        //         onTap: (){
        //           Navigator.of(context).pop();
        //           // Navigator.of(context).push(
        //           //   MaterialPageRoute(builder:(BuildContext)=>AddFoodItem())
        //           // );
        //         },
        //         leading: Icon(Icons.list),
        //         title:Text("Add Food Item", style:TextStyle(fontSize:16.0),),
        //       ),
        //     ],
        //   ),
        // ),
        resizeToAvoidBottomPadding: false,
        bottomNavigationBar: BottomNavigationBar(
          onTap: (int index){
            setState(() {
              currentTabIndex = index;
              currentPage = pages[index];
            });
          },
          currentIndex: currentTabIndex,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title:Text("Home"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title:Text("News"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              title:Text("Settings"),
            ),
          ],
        ),
        body: currentPage,
      );
    //);
  }
}