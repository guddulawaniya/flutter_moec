import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //profile container
            Column(
              children: [
                Container(
                  padding: EdgeInsets.only(left: 16, top: 20),
                  height: 150,
                  color: Color.fromARGB(255, 26, 81, 158),
                  child: Row(
                    children: [
                      CircleAvatar(
                        backgroundColor: Color.fromARGB(255, 171, 38, 38),
                        maxRadius: 25,
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.person,
                            color: Colors.white,
                            size: 30,
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Student Name ",
                            textAlign: TextAlign.left,
                            style: TextStyle(fontSize: 17, color: Colors.white),
                          ),
                          Text(
                            "Guddulawaniya123@gmail.com",
                            style: TextStyle(fontSize: 12, color: Colors.grey),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                // rows of sidebar data

                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.person_outline,
                            color: Color.fromARGB(255, 26, 81, 158),
                          ),
                          Text(
                            'My Profile (20%)',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.library_books_outlined,
                            color: Color.fromARGB(255, 26, 81, 158),
                          ),
                          Text(
                            'My Application',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.star_border_outlined,
                            color: Color.fromARGB(255, 26, 81, 158),
                          ),
                          Text(
                            'My Preferences',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(left: 20, top: 20, right: 10),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.document_scanner,
                            color: Color.fromARGB(255, 26, 81, 158),
                          ),
                          Text(
                            'My Documents',
                            style:
                                TextStyle(fontSize: 16, color: Colors.black87),
                          ),
                          SizedBox(
                            width: 70,
                          ),
                          Icon(
                            Icons.arrow_forward_ios_outlined,
                            size: 16,
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Divider(
                      color: Colors.grey,
                      thickness: 1,
                    )
                  ],
                ),
              ],
            ),

            Container(
              height: 110,
              color: Colors.blueGrey,
              padding: EdgeInsets.only(bottom: 10),
              child: Row(
                children: [
                  Column(
                    children: [
                      Container(
                        width: 80,
                        child: Lottie.network(
                            "https://assets6.lottiefiles.com/packages/lf20_ehegqmwn.json"),
                      ),
                      Text(
                        "Version 1.0",
                        style: TextStyle(fontSize: 11, color: Colors.white60),
                      )
                    ],
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
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'Earn your tution fee',
                          style: TextStyle(fontSize: 11, color: Colors.white60),
                        ),
                        GestureDetector(
                          onTap: () {

                          },
                          child: Text(
                            'Copy & share your referral code',
                            style: TextStyle(
                              decoration: TextDecoration.underline,
                              fontSize: 14,
                              color: Colors.white
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
