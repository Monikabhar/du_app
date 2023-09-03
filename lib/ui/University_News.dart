import 'package:flutter/material.dart';

import 'mdu_login.dart';

class University_News extends StatefulWidget {
  const University_News({Key? key}) : super(key: key);

  @override
  State<University_News> createState() => _University_NewsState();
}

class _University_NewsState extends State<University_News> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          title: Align(
            child: Align(
              alignment: Alignment.topLeft,
              child: Text(
                "University News",
                style: TextStyle(fontSize: 25),
              ),
            ),
          ),
          backgroundColor: Colors.orange),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height / 4,
                width: size.width,
                decoration: BoxDecoration(
                    border: Border.all(color: Colors.white),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          spreadRadius: 3.4,
                          blurRadius: 3.6,
                          color: Colors.black26)
                    ]),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 7,
                      width: size.width / 7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/BPS_LOGO_PNG.png"),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.only(
                          right: 8.0, left: 8.0, top: 25.0, bottom: 8.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            "IT IS FOR THE INFORMATION OF ALL CONCERBED THAT THE LAST DATE FOR SUBMISSION OF ONLINE APPLICATION OF VARIOUS UNDERGRADUATE AND POSTGRADUATE PROGRAMMES HAS BEEN EXTENDED UPTO 20.07.2023",
                            style: TextStyle(fontSize: 12),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                              decoration: BoxDecoration(
                                  color: Colors.orange,
                                  borderRadius: BorderRadius.circular(3),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        blurRadius: 1,
                                        spreadRadius: 1.4,
                                        color: Colors.amber),
                                  ]),
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text("Dated 2 days ago",
                                    style: TextStyle(color: Colors.white)),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 35.0, left: 1.0, right: 8.0),
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "New",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: size.height / 3.5,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8),
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          spreadRadius: 3,
                          blurRadius: 3.4,
                          color: Colors.black26),
                    ]),
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: size.height / 7,
                      width: size.width / 7,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage("assets/images/BPS_LOGO_PNG.png"),
                        ),
                      ),
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                "Engineering Cell",
                                style: TextStyle(color: Colors.red),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                                "Corrigendum regardingbE Tender Id 2023_HRY_289396_(1) Published dated 12.07.2023"),
                          ),
                          Align(
                            alignment: Alignment.topLeft,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(4),
                                    color: Colors.orange,
                                    boxShadow: <BoxShadow>[
                                      BoxShadow(
                                          blurRadius: 1.1,
                                          spreadRadius: 1.4,
                                          color: Colors.amber)
                                    ]),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Text("Dated 4 days ago",
                                      style: TextStyle(color: Colors.white)),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                            top: 35.0, left: 1.0, right: 8.0),
                        child: Container(
                          height: 25,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: Colors.red),
                          child: Padding(
                            padding: const EdgeInsets.all(4.0),
                            child: Text(
                              "Imp",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12),
                            ),
                          ),
                        ),
                      ),
                    ],
                  )
                ]),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => mdu_login()),
                );
              },
              child: Text("Next")
            ),
          ],
        ),
      ),
    );
  }
}
