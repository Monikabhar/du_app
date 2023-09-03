import 'package:flutter/material.dart';

class MDURE_HEARING extends StatefulWidget {
  const MDURE_HEARING({Key? key}) : super(key: key);

  @override
  State<MDURE_HEARING> createState() => _MDURE_HEARINGState();
}

class _MDURE_HEARINGState extends State<MDURE_HEARING> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              //height: size.height / 5,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadiusDirectional.circular(8),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26,
                        blurRadius: 1.2,
                        spreadRadius: 1.1)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Flexible(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "CONDUCT 10.07.2023",
                                  style: TextStyle(
                                      color: Colors.red, fontSize: 13),
                                ),
                                Text(
                                  "Unfaire Means Cases of Btech 2,4,6,8 and MA 2,3,4 semester/year held in May 2023, the meeting will be held on 17-07-2023 at 9:30A.M.",
                                  style: TextStyle(
                                      fontSize: 13,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                                  BorderRadiusDirectional.circular(30),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1.1,
                                    blurRadius: 1.1)
                              ]),
                          child: Text("New",
                              style:
                                  TextStyle(color: Colors.white, fontSize: 10)),
                        ),
                      ],
                    ),
                    Container(
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadiusDirectional.circular(5),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 1.1,
                                spreadRadius: 1.2)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dated: 3 days ago",
                            style:
                                TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        color: Colors.black26, spreadRadius: 1.1, blurRadius: 1.2)
                  ]),
              child: Column(crossAxisAlignment: CrossAxisAlignment.start,mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Flexible(
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "CONDUCT 10.07.2023",
                                  style: TextStyle(color: Colors.red,fontSize: 10),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Text(
                                  "Unfaire Means Cases of Btech 4 semester held in May 2023, the meeting will be held on 17-07-2023 at 03:00A.M.",
                                  style: TextStyle(
                                      fontSize: 13, fontWeight: FontWeight.bold),
                                ),
                              )
                            ]),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                          padding: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius:
                              BorderRadiusDirectional.circular(30),
                              boxShadow: <BoxShadow>[
                                BoxShadow(
                                    color: Colors.white,
                                    spreadRadius: 1.1,
                                    blurRadius: 1.1)
                              ]),
                          child: Text("New",
                              style:
                              TextStyle(color: Colors.white, fontSize: 10)),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      height: 30,
                      decoration: BoxDecoration(
                          color: Colors.lightBlue,
                          borderRadius: BorderRadiusDirectional.circular(5),
                          boxShadow: <BoxShadow>[
                            BoxShadow(
                                color: Colors.white,
                                blurRadius: 1.1,
                                spreadRadius: 1.2)
                          ]),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text("Dated: 3 days ago",
                            style:
                            TextStyle(color: Colors.white, fontSize: 10)),
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
