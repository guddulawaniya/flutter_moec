import 'package:carousel_slider/carousel_slider.dart';
import 'package:demo/custom_color.dart';
import 'package:demo/new_application.dart';
import 'package:demo/splash.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:page_transition/page_transition.dart';

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
  int pageIndex = 0;

  Page1 page1 = new Page1();

  final pages = [
    const Page1(),
    const Page2(),
    const Page3(),
    const Page4(),
    const Page5(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        titleTextStyle: TextStyle(color: Colors.white, fontSize: 18),
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
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
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

class Page1 extends StatelessWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int _value = 6;
    return SingleChildScrollView(
        child: Container(
      child: Column(
        children: [
          CarouselSlider(

            items: [
              //1st Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //2nd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/02/27/16/10/flowers-276014_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              //3rd Image of Slider
              Container(
                margin: EdgeInsets.all(6.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.0),
                  image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2016/05/05/02/37/sunset-1373171_1280.jpg"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
            options: CarouselOptions(
              height: 120.0,
              enlargeFactor: double.infinity,
              autoPlay: true,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(seconds: 2),
            ),
          ),
          Card(
            margin: EdgeInsets.all(16),
            color: Color.fromARGB(255, 231, 238, 246),
            clipBehavior: Clip.hardEdge,
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color.fromARGB(255, 174, 203, 245),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(10)),
            ),
            child: Container(
              height: 45,
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    "Contact Your Coodinator | ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Counselor Name",
                    style: TextStyle(fontSize: 14),
                  ),
                  const VerticalDivider(
                    width: 20,
                    thickness: 1,
                    endIndent: 0,
                    color: Color.fromARGB(255, 174, 203, 245),
                  ),
                  Icon(
                    Icons.call,
                    color: Color.fromARGB(255, 26, 81, 158),
                  )
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Recommended Programs",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
                ),
                Text("View all")
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(
              left: 16,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Based on your Preference",
                  style: TextStyle(fontSize: 13, color: Colors.grey),
                ),
              ],
            ),
          ),
          Card(
            color: Color.fromARGB(255, 231, 238, 246),
            margin: EdgeInsets.only(top: 50, bottom: 50),
            shape: RoundedRectangleBorder(
              side: BorderSide(
                color: Color.fromARGB(158, 123, 123, 129),
              ),
              borderRadius: const BorderRadius.all(Radius.circular(50)),
            ),
            child: Container(
              width: 200,
              padding: EdgeInsets.all(15),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Set your preference",
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 16, color: Colors.black87),
                  ),
                  Icon(
                    Icons.arrow_forward_ios,
                    size: 16,
                  )
                ],
              ),
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 16, right: 16, top: 10),
            child: Text(
              "Quick Actions",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 16, right: 16, top: 15),
            child: GridView.count(
              crossAxisCount: 3,
              shrinkWrap: true,
              controller: ScrollController(keepScrollOffset: false),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: new_application(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Card(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 35,
                            child: Image.asset('assets/Application.png'),
                          ),
                        ),
                        Text(
                          'Add Application',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 231, 238, 246),
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: new_application(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 35,
                            child: Image.asset('assets/IELTS.png'),
                          ),
                        ),
                        Text(
                          'IELTS Test Booking',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 231, 238, 246),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: new_application(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 35,
                            child: Image.asset('assets/GIC.png'),
                          ),
                        ),
                        Text(
                          'GIC Account',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 231, 238, 246),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: new_application(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 35,
                            child: Image.asset('assets/SOP.png'),
                          ),
                        ),
                        Text(
                          'SOP Guidance',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 231, 238, 246),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: new_application(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 35,
                            child: Image.asset('assets/Accomodation.png'),
                          ),
                        ),
                        Text(
                          'Find Accommodation',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 231, 238, 246),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        PageTransition(
                            child: new_application(),
                            type: PageTransitionType.rightToLeft));
                  },
                  child: Card(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(width: 1, color: Colors.grey),
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: SizedBox(
                            height: 35,
                            child: Image.asset('assets/Loan.png'),
                          ),
                        ),
                        Text(
                          'Education Loan',
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    color: Color.fromARGB(255, 231, 238, 246),
                  ),
                ),
              ],
            ),
          ),
          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 16, top: 20),
            child: Text(
              "Top Preferred Countries",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
            ),
          ),
          Container(
            height: 180,
            margin: EdgeInsets.only(left: 16, right: 16, top: 16, bottom: 20),
            child: ListView(
              shrinkWrap: true,
              // This next line does the trick.
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                GestureDetector(
                  onTap: (){
                    Fluttertoast.showToast(msg: 'clicked -1');
                  },
                  child: SizedBox(
                    child: Card(

                      child: Column(

                      ),
                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    width: 200,

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Fluttertoast.showToast(msg: 'clicked  2');
                  },
                  child: SizedBox(
                    child: Card(
                      child: Column(

                      ),

                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    width: 200,

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Fluttertoast.showToast(msg: 'Clicked 3 ');
                  },
                  child: SizedBox(
                    child: Card(
                      child: Column(

                      ),

                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    width: 200,

                  ),
                ),
                GestureDetector(
                  onTap: (){
                    Fluttertoast.showToast(msg: "clicked 4");
                  },
                  child: SizedBox(
                    child: Card(
                      child: Column(

                      ),

                      color: Colors.blue[200],
                      shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Colors.grey),
                          borderRadius: BorderRadius.circular(8)),
                    ),
                    width: 200,

                  ),
                ),
              ],
            ),
          )
        ],
      ),
    ));
  }
}

class Page2 extends StatelessWidget {
  const Page2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 2",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page3 extends StatelessWidget {
  const Page3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 3",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page4 extends StatelessWidget {
  const Page4({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 4",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}

class Page5 extends StatelessWidget {
  const Page5({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0xffC4DFCB),
      child: Center(
        child: Text(
          "Page Number 5",
          style: TextStyle(
            color: Colors.green[900],
            fontSize: 45,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
