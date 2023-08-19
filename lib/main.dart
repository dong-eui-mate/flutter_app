import 'package:deu_mate_app/pages/AssignSubPage/AddAssignPage.dart';
import 'package:deu_mate_app/pages/MainSubPage/HomePage.dart';
import 'package:deu_mate_app/pages/MainSubPage/MapPage.dart';
import 'package:deu_mate_app/pages/MainSubPage/AssignPage.dart';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:deu_mate_app/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DEU Mate',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: const Color(0xff6e8eb9)),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'DEU Mate'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _pageIdx = 1;
  bool _fabVisible = false;

  final List<Widget> _pageWidgets = [
    const TodoPage(),
    const HomePage(),
    const MapPage()
  ];

  final List<String> _pageNames = [
    "과제",
    "홈",
    "교내지도"
  ];

  void _onItemTapped(int index) {
    setState(() {
      _fabVisible = (index == 0);
      _pageIdx = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: SafeArea(
        child: _pageWidgets[_pageIdx],
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _pageIdx,
        selectedItemColor: const Color(0xff6e8eb9),
        onTap: _onItemTapped,
        // showSelectedLabels: false,
        showUnselectedLabels: false,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.check),
            label: _pageNames[0]
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.home),
            label: _pageNames[1]
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.map),
            label: _pageNames[2]
          ),
        ],
      ),
      floatingActionButton: Visibility(
        visible: _fabVisible,
        child: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const AddAssignPage()),
            );
          },
          tooltip: 'Increment',
          child: const Icon(Icons.add),
        ),
      )
    );
  }
}
