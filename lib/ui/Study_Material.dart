import 'package:flutter/material.dart';

class Study_Material extends StatefulWidget {
  const Study_Material({Key? key}) : super(key: key);

  @override
  State<Study_Material> createState() => _Study_MaterialState();
}

class _Study_MaterialState extends State<Study_Material> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: Colors.blueAccent.shade400,
          title: Text(
            "Study Material",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          leading: Icon(Icons.arrow_back, color: Colors.white),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.search, color: Colors.white),
            )
          ]),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Course content",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(height: 12, width: 12),
              ListView.builder(
                  itemBuilder: (context, index) {
                    return coursecontent();
                  },
                  scrollDirection: Axis.vertical,
                  itemCount: 10,
                  physics: BouncingScrollPhysics(),
                  padding: EdgeInsets.all(8),
                  shrinkWrap: true,),
            ]),
      ),
    );
  }

  coursecontent() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: size.width,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(15),
                bottomLeft: Radius.circular(15)),
            boxShadow: <BoxShadow>[
              BoxShadow(color: Colors.black26, spreadRadius: 1.1, blurRadius: 1.2)
            ]),
        child: Padding(
          padding: const EdgeInsets.only(top: 8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "MA_English(P)_Literatur in English (1660-1798)_Study Material(OLD)",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Icon(Icons.lock_clock, color: Colors.black38,size: 15),
                    Text(
                      "4 years ago",
                      style: TextStyle(color: Colors.black38, fontSize: 12),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Icon(
                      Icons.account_balance_wallet,
                      size: 15,
                    ),
                    Text(
                      "D.D.E",
                      style: TextStyle(color: Colors.black38, fontSize: 12),
                    ),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.black12,
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.white,
                              spreadRadius: 1.1,
                              blurRadius: 1.2)
                        ],
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(10),
                          topRight: Radius.circular(15),
                        )),
                    child: Row(
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "Download",
                              style: TextStyle(
                                  color: Colors.blue.shade700, fontSize: 12),
                            )),
                        Icon(
                          Icons.download,
                          color: Colors.blue.shade700,
                          size: 12,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue.shade900,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            bottomRight: Radius.circular(10)),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black38,
                              blurRadius: 1.1,
                              spreadRadius: 1.2)
                        ]),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("View",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 12)),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.arrow_forward,
                            size: 12,
                            color: Colors.white,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
