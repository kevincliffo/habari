import "package:flutter/material.dart";
import 'package:habari/src/pages/home_page.dart';
import 'package:habari/src/pages/topic_page.dart';
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
  TopicPage topicPage;
  SettingsPage settingsPage;

  @override
  void initState() {
    homePage = HomePage();
    topicPage = TopicPage();
    settingsPage = SettingsPage();

    pages = [homePage, topicPage, settingsPage];
    currentPage = homePage;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return
        Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey,
        title: Text(
          " The Gist",
          style: TextStyle(
            color: Colors.white,
            fontSize: 20.0,
            fontWeight: FontWeight.bold
          ),
        ),
        leading: IconButton(
            icon: Image.asset('assets/images/logo.png'), 
            onPressed: () { },
          ),
        iconTheme: IconThemeData(
          color: Colors.white,
        ),
      ),
      resizeToAvoidBottomPadding: false,
      bottomNavigationBar: BottomNavigationBar(
        onTap: (int index) {
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
            title: Text("Home"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            title: Text("Topics"),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            title: Text("Settings"),
          ),
        ],
      ),
      body: currentPage,
    );
  }
}

