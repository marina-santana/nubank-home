import 'package:flutter/material.dart';
import 'package:home_nubank/pages/home/widgets/my_app_bar.dart';
import 'package:home_nubank/pages/home/widgets/page_view_app.dart';
import 'package:home_nubank/pages/home/widgets/my_dots_app.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool _showMenu;
  int _currentIndex;

    @override
  void initState() {
    super.initState();
    _showMenu = false;
    _currentIndex = 0;
  }

  @override
  Widget build(BuildContext context) {
    double _screenHeigth = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: Color(0xffA332B3),
      body: Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          MyAppBar(            
            showMenu: _showMenu,
            onTap: () {
              setState(() {
                _showMenu = !_showMenu;
                
              });
            },
          ),
          PageViewApp(
            top: _screenHeigth * .24,
            onChanged: (index) {
              setState(() {
                _currentIndex = index;
              });
            },
          ),
          Positioned(
            top: _screenHeigth * .70,
            child: MyDotsApp(currentIndex: _currentIndex)
          )
        ]
      )
    );
  }
}