import 'package:flutter/material.dart';

class All_events extends StatefulWidget {
  const All_events({Key? key}) : super(key: key);

  @override
  State<All_events> createState() => _All_eventsState();
}

class _All_eventsState extends State<All_events> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        physics: BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Text(
              "Today's Event",
              style: TextStyle(
                  color: Colors.black, fontWeight: FontWeight.bold, fontSize: 15),
            ),
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                width: size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.transparent,
                          blurRadius: 1.1,
                          spreadRadius: 1.2)
                    ]),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 50,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Icon(
                            Icons.calendar_month,
                            color: Colors.white,
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20)),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("Sept. 01"),
                          ),
                        ),
                        Card(
                          color: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(3.0),
                            child: Text("09:00"),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Text(
                            "Activities held through the career counslling and placement cell -",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15,
                                fontWeight: FontWeight.bold)),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Department name : career counslling and placement cell",
                      style: TextStyle(color: Colors.grey, fontSize: 12),
                    ),
                    SizedBox(
                      height: 50,
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Column(
            children: [
              ListView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),

                itemBuilder: (child,index){
                  return Padding(
                    padding: const EdgeInsets.all(5.0),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Aug 11",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                        SizedBox(
                          width: size.width / 1.3,
                          child: Card(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                            color: Colors.white,
                            shadowColor: Colors.black87,
                            elevation: 3,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(Icons.flag,
                                          color: Colors.deepOrangeAccent),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        "National seminar on achieving",
                                        overflow: TextOverflow.fade,softWrap: true,
                                        style: TextStyle(color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Icon(
                                        Icons.arrow_forward_ios_rounded,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ]),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },),

              // Padding(
              //   padding: const EdgeInsets.all(8.0),
              //   child: Row(
              //     mainAxisAlignment: MainAxisAlignment.start,
              //     children: [
              //       Padding(
              //         padding: const EdgeInsets.all(3.0),
              //         child: Text(
              //           "Sep 01",
              //           style: TextStyle(color: Colors.black),
              //         ),
              //       ),
              //       Padding(
              //         padding: const EdgeInsets.all(3.0),
              //         child: SizedBox(
              //           width: size.width / 1.2,
              //           child: Card(
              //             shape: RoundedRectangleBorder(
              //               borderRadius: BorderRadius.circular(15),
              //             ),
              //             color: Colors.white,
              //             shadowColor: Colors.black87,
              //             elevation: 3,
              //             child: Row(
              //                 crossAxisAlignment: CrossAxisAlignment.start,
              //                 mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //                 children: [
              //                   Padding(
              //                     padding: const EdgeInsets.all(8.0),
              //                     child: Text(
              //                       "Tow Weeks Capacity Building Program...",
              //                       style: TextStyle(color: Colors.black),
              //                     ),
              //                   ),
              //                   Icon(
              //                     Icons.arrow_forward_ios_rounded,
              //                     color: Colors.black,
              //                   )
              //                 ]),
              //           ),
              //         ),
              //       ),
              //     ],
              //   ),
              // )
            ],
          )
        ]),
      ),
    );
  }
}
