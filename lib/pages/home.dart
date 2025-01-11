import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  Image.asset(
                    "assets/Wave.png",
                    height: 50,
                    width: 50,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Hello, ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Text(
                    "Raj",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Spacer(),
                  Container(
                    padding: EdgeInsets.all(4.0),
                    margin: EdgeInsets.only(right: 20.0),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10)),
                    child: Icon(Icons.person, size: 40.0),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "Welcome To",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Text(
                "ChatWavy",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 40.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 20.0, right: 20.0),
                width: MediaQuery.of(context).size.width,
                height: 20,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(30),
                        topRight: Radius.circular(30))),
                child: Column(
                  children: [
                    SizedBox(
                      height: 20.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 213, 235, 252),
                          borderRadius: BorderRadius.circular(10)),
                      child: TextField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          prefixIcon: Icon(Icons.search),
                          hintText: "Search User...",
                          contentPadding: EdgeInsets.symmetric(vertical: 15.0),
                        ),
                      ),
                    ),
                    SizedBox(height: 20.0),
                    Material(
                      child: Container(
                        padding: EdgeInsets.all(10),
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            border: Border(
                                bottom: BorderSide(
                                    color: Colors.grey, width: 1.0))),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(50),
                              child: Image.asset(
                                "assets/boy.jpg",
                                height: 50,
                                width: 50,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 20),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                // SizedBox(
                                //   height: 10.0,
                                // ),
                                Text(
                                  "Rahul",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18.0,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                Text(
                                  "Hey buddy how are you?",
                                  style: TextStyle(
                                    color: const Color.fromARGB(143, 0, 0, 0),
                                    fontSize: 15.0,
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                            Spacer(),
                            Text(
                              "02:15 PM",
                              style: TextStyle(
                                color: const Color.fromARGB(156, 0, 0, 0),
                                fontSize: 15.0,
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
