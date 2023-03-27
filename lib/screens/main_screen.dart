import 'package:flutter/cupertino.dart';
import 'home_screen.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.home)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.person_2)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.tv)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.cart)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.bell)),
            BottomNavigationBarItem(icon: Icon(CupertinoIcons.line_horizontal_3)),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return HomeScreen();
            default:
              return Container();
          }
        });
  }
}
