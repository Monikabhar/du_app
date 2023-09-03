import 'package:flutter/material.dart';

class mdunew_page extends StatefulWidget {
  const mdunew_page({Key? key}) : super(key: key);

  @override
  State<mdunew_page> createState() => _mdunew_pageState();
}

class _mdunew_pageState extends State<mdunew_page> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(scrollDirection: Axis.vertical,child: Stack(
        children: [
          Image.asset("assets/images/backgroundimage.jpg",
              height: size.height, fit: BoxFit.fitHeight),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 100.0, bottom: 30.0),
              child: Column(
                children: [
                  Image.asset("assets/logo/mdulogo.png",
                      height: 100, width: 200),
                  Padding(
                    padding: const EdgeInsets.only(top: 40.0),
                    child: Text(
                      "MDU",
                      style: TextStyle(
                          color: Colors.blue,
                          fontSize: 25,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(height: 40,),
                  Padding(
                    padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                    child: Container(
                      width: size.width,
                      height: size.height / 3,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(30),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                spreadRadius: 1.1,
                                blurRadius: 1.1,
                                color: Colors.black26),
                          ]),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 50,
                            width: size.width / 2,
                            child: ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                //crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      Row(
                                        // crossAxisAlignment: CrossAxisAlignment.center,
                                        children: [
                                          Icon(Icons.arrow_forward,
                                              color: Colors.white, size: 15),
                                          SizedBox(width: 10),
                                          Text(
                                            "Login as Student",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Text(
                                          "Beta",
                                          style: TextStyle(color: Colors.cyan),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                              style: ButtonStyle(
                                  backgroundColor: MaterialStatePropertyAll(
                                      Colors.blueAccent),
                                  shape: MaterialStatePropertyAll(
                                    RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(15),
                                    ),
                                  ),
                                  elevation: MaterialStatePropertyAll(20),
                                  shadowColor:
                                      MaterialStatePropertyAll(Colors.white)),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Text(
                              "----or----",
                              style: TextStyle(color: Colors.blue),
                            ),
                          ),
                          ElevatedButton(
                            onPressed: () {},
                            child: SizedBox(
                              width: size.width / 2,
                              height: 40,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Icon(
                                      Icons.people_alt,
                                      color: Colors.blueAccent,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Text(
                                      "Login As Employee",
                                      style:
                                          TextStyle(color: Colors.blueAccent),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            style: ButtonStyle(
                              backgroundColor:
                                  MaterialStatePropertyAll(Colors.white),
                              shape: MaterialStatePropertyAll(
                                RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              elevation: MaterialStatePropertyAll(20),
                              shadowColor:
                                  MaterialStatePropertyAll(Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                            children: [
                              Text("Executive",
                                  style: TextStyle(color: Colors.white)),
                              Icon(
                                Icons.arrow_forward_ios_outlined,
                                color: Colors.white,
                                size: 15,
                              )
                            ],
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.lightBlueAccent),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(
                        width: size.width / 4.8,
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Text(
                              "Login as Guest",
                              style: TextStyle(color: Colors.white),
                            ),
                            Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 15,
                              color: Colors.white,
                            )
                          ],
                        ),
                        style: ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.lightBlueAccent),
                          shape: MaterialStatePropertyAll(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    "If you are facing any issue:-> Click hare",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
      ),
    );
  }
}
