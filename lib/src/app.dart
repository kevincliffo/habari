import 'package:flutter/material.dart';
import 'package:habari/src/screens/main_screen.dart';
import 'package:habari/src/scoped-model/main_model.dart';
import 'package:scoped_model/scoped_model.dart';

class App extends StatelessWidget {
  final MainModel mainModel = MainModel();

  @override
  Widget build(BuildContext context) {
    return ScopedModel<MainModel>(
      model: mainModel,
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "The Gist",
        theme: ThemeData(primaryColor: Colors.grey, fontFamily: 'Open Sans'),
        //home:MainScreen(model:mainModel),
        home: MainScreen(),
      ),
    );
  }
}

