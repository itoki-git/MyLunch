import 'package:flutter/material.dart';
import 'search_page.dart';
import 'card_page.dart';
import 'header.dart';
import 'footer.dart';
import 'pager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final MaterialColor materialWhite = const MaterialColor(
      0xFFFFFFFF,
      const <int, Color>{
        50: const Color(0xFFFFFFFF),
        100: const Color(0xFFFFFFFF),
        200: const Color(0xFFFFFFFF),
        300: const Color(0xFFFFFFFF),
        400: const Color(0xFFFFFFFF),
        500: const Color(0xFFFFFFFF),
        600: const Color(0xFFFFFFFF),
        700: const Color(0xFFFFFFFF),
        800: const Color(0xFFFFFFFF),
        900: const Color(0xFFFFFFFF),
      },
    );
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: materialWhite,
      ),
      darkTheme: ThemeData.dark(),
      home: new Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return new HomeState();
  }
}

class HomeState extends State<Home> {
  int currentIndex = 0;
  final List<Widget> tabs = [
    TabPagerItem(),
    SearchPage(),
    CardPage(),
    TabPagerItem(),
  ];

  static const titleNames = ['ホーム', '検索', 'MAP', '履歴'];

  void onTabTapped(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: Text(titleNames[currentIndex]),
        elevation: 0,
        backgroundColor: Colors.blue,
      ),
      body: tabs[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        onTap: onTabTapped,
        currentIndex: currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'ホーム',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: '検索',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'マップ',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.history),
            label: '履歴',
          ),
        ],
      ),
    );
  }
}
