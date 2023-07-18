import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final myImage = Expanded(
    child: Image.network(
      "https://images.pexels.com/photos/212372/pexels-photo-212372.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
    ),
  );
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Profile"),
        ),
        body: OrientationBuilder(builder: (context, orientation) {
          if (orientation == Orientation.landscape) {
            return SingleChildScrollView(
              child: Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Expanded(
                      child: CircleAvatar(
                        radius: 150,
                        backgroundImage: NetworkImage(
                          "https://images.pexels.com/photos/3497182/pexels-photo-3497182.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 2,
                      child: Container(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Camera Photography",
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Text(
                              "Photography is the art of taking pictures with a device called a camera. These pictures can be either stored as a soft copy or they can be printed on photographic papers."),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myImage,
                              SizedBox(
                                width: 5,
                              ),
                              myImage,
                              SizedBox(
                                width: 5,
                              ),
                              myImage,
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              myImage,
                              SizedBox(
                                width: 5,
                              ),
                              myImage,
                              SizedBox(
                                width: 5,
                              ),
                              myImage,
                              SizedBox(
                                width: 5,
                              ),
                            ],
                          ),
                        ],
                      )))
                  //
                  // start
                ],
              ),
            );
          }
          return Center(
            child: Column(
              children: [
                CircleAvatar(
                  radius: 150,
                  backgroundImage: NetworkImage(
                      "https://images.pexels.com/photos/3497182/pexels-photo-3497182.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
                ),
                Text(
                  "Camera Photography",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                    "Photography is the art of taking pictures with a device called a camera. These pictures can be either stored as a soft copy or they can be printed on photographic papers."),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myImage,
                    SizedBox(
                      width: 5,
                    ),
                    myImage,
                    SizedBox(
                      width: 5,
                    ),
                    myImage,
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    myImage,
                    SizedBox(
                      width: 5,
                    ),
                    myImage,
                    SizedBox(
                      width: 5,
                    ),
                    myImage,
                    SizedBox(
                      width: 5,
                    ),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
