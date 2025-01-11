import 'package:flutter/material.dart';

class Chatscreen extends StatefulWidget {
  const Chatscreen({super.key});

  @override
  State<Chatscreen> createState() => _ChatscreenState();
}

class _ChatscreenState extends State<Chatscreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Container(
        margin: EdgeInsets.only(top: 40.0),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: Icon(
                      Icons.arrow_back_ios_new_sharp,
                      color: Colors.white,
                    ),
                  ),
                  SizedBox(width: MediaQuery.of(context).size.width / 3),
                  Text(
                    "Rahul",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30.0),
            Expanded(
              child: Container(
                padding: EdgeInsets.only(left: 10, right: 10),
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
                      height: 50.0,
                    ),
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.blue,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomRight: Radius.circular(30))),
                          child: Text(
                            "How are you bro",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Container(
                          padding: EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              color: Colors.green,
                              borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(30),
                                  topRight: Radius.circular(30),
                                  bottomLeft: Radius.circular(30))),
                          child: Text(
                            "I am fine, and you ?",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height / 1.6,
                    ),
                    Container(
                      child: Row(
                        children: [
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.mic,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.only(left: 10.0),
                              decoration: BoxDecoration(
                                color: const Color.fromARGB(246, 222, 218, 218),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: TextField(
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  suffixIcon: Icon(Icons.attach_file),
                                  hintText: "message..",
                                  contentPadding:
                                      EdgeInsets.symmetric(vertical: 10.0),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                color: Colors.purple,
                                borderRadius: BorderRadius.circular(50)),
                            child: Icon(
                              Icons.send,
                              color: Colors.white,
                              size: 25.0,
                            ),
                          ),
                        ],
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
