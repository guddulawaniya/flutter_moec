
import 'package:demo/dashboardPage1.dart';
import 'package:demo/new_application.dart';
import 'package:demo/sidenav_bar.dart';
import 'package:demo/splash.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

import 'application.dart';
import 'community.dart';
import 'insight.dart';
import 'programs.dart';


void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // initialRoute: "splash_screen",
      routes: {
        "splash_screen": (context) => const Splash_screen(),
      },
      title: 'Dashboard',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          colorScheme: ColorScheme(
              onBackground: Colors.black45,
              brightness: Brightness.light,
              background: Colors.white70,
              primary: Color.fromARGB(255, 26, 81, 158),
              secondary: Color.fromARGB(255, 171, 38, 38),
              onPrimary: Color.fromARGB(255, 26, 81, 158),
              onSecondary: Colors.white,
              error: Colors.red,
              onError: Colors.white,
              surface: Colors.white70,
              onSurface: Colors.black45)),
      home: const MyHomePage(title: 'Student Dashboard'),
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
  var scaffoldKey = GlobalKey<ScaffoldState>();
  int pageIndex = 0;

  Dashboard page1 = new Dashboard();

  final pages = [
    const Dashboard(),
    const programpage2(),
    const application(),
    const community(),
    const insight(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      drawer: Navbar(),

      appBar: AppBar(
        leading: Container(
          margin: EdgeInsets.only(left: 12),
          alignment: Alignment.center,
          child: CircleAvatar(
            backgroundColor: Color.fromARGB(255, 171, 38, 38),
            child: IconButton(
              onPressed: () {
                scaffoldKey.currentState?.openDrawer();
              },
              icon: Icon(
                Icons.person,
                color: Colors.white,
              ),
            ),
          ),
        ),
        actions: [
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30)
            ),
            margin: EdgeInsets.only(right: 10,top: 8,bottom: 8),
            child: Row(
              children: [
                IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: "search bar clicked ");
                    },
                    icon: Icon(Icons.search)),
                IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(msg: "Favorate icon  clicked ");
                    },
                    icon: Icon(Icons.favorite_border_outlined)),
                IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Notification icon  clicked ");
                    },
                    icon: Icon(Icons.notifications_outlined)),
                IconButton(
                    onPressed: () {
                      Fluttertoast.showToast(
                          msg: "Flitter  icon  clicked ");
                    },
                    icon: Icon(Icons.tune_outlined))
              ],
            ),
          )
        ],
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 15),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: pages[pageIndex],
      bottomNavigationBar: buildMyNavBar(context),

      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.push(context,
                MaterialPageRoute(builder: (context) => new_application()));
          });
        },
        child: const Icon(Icons.add),
      ),
        // This trailing comma makes auto-formatting nicer for build methods.
    );
  }

  buildMyNavBar(BuildContext context) {
    return Container(
      height: 60,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 26, 81, 158),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 0;
              });
            },
            enableFeedback: false,
            icon: pageIndex == 0
                ? const Icon(
                    Icons.dashboard,
                    color: Colors.white,
                    size: 30,
                  )
                : const Icon(
                    Icons.dashboard_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 1;
                });
              },
              enableFeedback: false,
              icon: pageIndex == 1
                  ? const Icon(
                      Icons.menu_book_outlined,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.menu_book_sharp,
                      color: Colors.grey,
                      size: 30,
                    )),
          IconButton(
            onPressed: () {
              setState(() {
                pageIndex = 2;
              });
            },
            enableFeedback: false,
            icon: pageIndex == 2
                ? const Icon(
                    Icons.add_box_rounded,
                    color: Colors.white,
                    size: 30,
                  )
                : const Icon(
                    Icons.add_box_outlined,
                    color: Colors.grey,
                    size: 30,
                  ),
          ),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 3;
                });
              },
              enableFeedback: false,
              icon: pageIndex == 3
                  ? const Icon(
                      Icons.group,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.group_outlined,
                      color: Colors.grey,
                      size: 30,
                    )),
          IconButton(
              onPressed: () {
                setState(() {
                  pageIndex = 4;
                });
              },
              enableFeedback: false,
              icon: pageIndex == 4
                  ? const Icon(
                      Icons.insights,
                      color: Colors.white,
                      size: 30,
                    )
                  : const Icon(
                      Icons.insights_outlined,
                      color: Colors.grey,
                      size: 30,
                    ))
        ],
      ),
    );
  }

}
