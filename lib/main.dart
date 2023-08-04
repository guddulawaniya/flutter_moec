import 'package:carousel_slider/carousel_slider.dart';
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
    List<String> instrestlist = [
      "Architecture",
      "Computer Science",
      "Design",
      "Engineering",
      "Business",
      "Hospitality &\nTourism",
      "Humanities &\nSocial Science",
      "Law",
      "Management",
      "Marketing &\nAdvertising",
      "Media &\nJournalism",
      "Medical",
      "Performing &\nCreative Arts",
      "Science",
      "Sport & Nutrition",
      "Languages",
      "Education"
    ];

    List<String> imagsUrls = [
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Architecture.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/computer.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/graphic_design.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Engineering.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Business%20%26%20Management.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Hospitality.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Humanities.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Law%20%26%20Legal%20Studies.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/management.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Marketing.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Media%20%26%20Communication.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Health%20%26%20Nursing.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Art%20%26%20Design.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Science.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Sports%20%26%20Fitness.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/translation.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Education.png'
    ];

    List<String> countriesNamelist = [
      'United Kingdom',
      'USA',
      'Canada',
      'Australia',
      'Italy',
      'Germany',
      'New Zealand',
      'Dubai',
      'Poland',
      'Ireland',
      'Latvia',
      'Mauritius',
      'Malta',
    ];
    List<String> CountriesFlagList = [
      'https://raw.githubusercontent.com/guddulawaniya/images/main/United_Kingdom_flag.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/Countries_Flag_Images/usa_flag.avif',
      'https://raw.githubusercontent.com/guddulawaniya/images/846fbb3392efdd265ec19d65252b27fba116cb4a/canada_flag.avif',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/australia_flag.avif',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/italy_flag.avif',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/german-flag.avif',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/new_zealand_flag.avif',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/dubai_flag.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Flag_of_Poland.svg.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Flag_of_Ireland.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Flag_of_Latvia.svg.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Flag_of_Mauritius.png',
      'https://raw.githubusercontent.com/guddulawaniya/images/main/Flag_of_Malta.png',
    ];

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
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
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

          // Quick Actions

          Container(
            color: Color.fromARGB(255, 231, 238, 246),
            padding: EdgeInsets.only(bottom: 10),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 16, right: 16, top: 10),
                  child: Text(
                    "Quick Actions",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 16, right: 16, top: 15),
                  child: GridView.count(
                    crossAxisCount: 3,
                    shrinkWrap: true,
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
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
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            side: BorderSide(width: 1, color: Colors.grey),
                            borderRadius: BorderRadius.circular(10),
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
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // TOp preferred countries

          Container(
            color: Colors.white,
            padding: EdgeInsets.only(top: 20, bottom: 20),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    "Top Preferred Countries",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  height: 200,
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child: Stack(
                    children: <Widget>[
                      ListView.builder(
                          itemCount: countriesNamelist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Fluttertoast.showToast(
                                        msg: countriesNamelist[i]);
                                  },
                                  child: SizedBox(
                                    width: 250,
                                    child: Card(
                                      child: Column(
                                        children: [
                                          Container(
                                            height: 140,
                                            alignment: Alignment.bottomCenter,
                                            margin: EdgeInsets.only(bottom: 15),
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                  topLeft: Radius.circular(8),
                                                  topRight: Radius.circular(8)),
                                              image: DecorationImage(
                                                fit: BoxFit.cover,
                                                alignment: Alignment.topCenter,
                                                image: NetworkImage(
                                                    CountriesFlagList[i]),
                                              ),
                                            ),
                                          ),
                                          Container(
                                            child: Text(
                                              countriesNamelist[i],
                                              style: TextStyle(
                                                fontSize: 20,
                                                color: Colors.black,
                                              ),
                                            ),
                                            margin: EdgeInsets.only(bottom: 12),
                                          ),
                                        ],
                                      ),
                                      color: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          side: BorderSide(
                                            width: 1,
                                            color: Color.fromARGB(
                                                255, 190, 198, 206),
                                          ),
                                          borderRadius:
                                              BorderRadius.circular(8)),
                                      margin:
                                          EdgeInsets.only(left: 8, right: 8),
                                    ),
                                  ),
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // interest area

          Container(
            height: 200,
            color: Color.fromARGB(255, 213, 229, 252),
            margin: EdgeInsets.only(bottom: 20),
            padding: EdgeInsets.only(top: 7),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.only(left: 16),
                  child: Text(
                    "Insterests",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                  ),
                ),
                Container(
                  height: 140,
                  margin: EdgeInsets.only(
                    left: 16,
                    right: 16,
                    top: 16,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: <Widget>[
                      ListView.builder(
                          itemCount: instrestlist.length,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, i) {
                            return Column(
                              children: [
                                Container(
                                  child: CircleAvatar(
                                    radius: 40,
                                    backgroundImage: NetworkImage(imagsUrls[i]),
                                    backgroundColor: Colors.white,
                                  ),
                                  height: 70,
                                  margin: EdgeInsets.all(8),
                                ),
                                SizedBox(
                                  height: 5,
                                ),
                                Text(
                                  instrestlist[i],
                                  style: TextStyle(
                                      fontSize: 14, color: Colors.black87),
                                ),
                              ],
                            );
                          }),
                    ],
                  ),
                ),
              ],
            ),
          ),

          // Refers and Earn

          Container(
            alignment: Alignment.topLeft,
            margin: EdgeInsets.only(left: 16),
            child: Text(
              "Refer & Earn ",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Container(
            height: 100,
            margin: EdgeInsets.all(10),
            child: Card(
              color: Colors.white70,
              child: Row(
                children: [
                  Container(
                    width: 140,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          bottomLeft: Radius.circular(8)),
                      image: DecorationImage(
                        alignment: Alignment.topCenter,
                        fit: BoxFit.cover,
                        image: NetworkImage(
                            "https://cdn.pixabay.com/photo/2015/04/23/22/00/tree-736885_1280.jpg"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.topLeft,
                    padding: const EdgeInsets.only(
                      left: 15,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Refer a Friend',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Earn your tution fee',
                        style: TextStyle(
                          fontSize: 13,
                          color: Colors.black54
                        ),),
                        Text('Copy & share your referral code',style: TextStyle(
                          decoration: TextDecoration.underline,
                          fontSize: 15,
                          color: Colors.black,
                        ),),
                      ],
                    ),
                  )
                ],
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
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
