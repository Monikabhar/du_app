import 'package:flutter/material.dart';

class MDUNEWS extends StatefulWidget {
  const MDUNEWS({Key? key}) : super(key: key);

  @override
  State<MDUNEWS> createState() => _MDUNEWSState();
}

class _MDUNEWSState extends State<MDUNEWS> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu, color: Colors.white),
        backgroundColor: Colors.blue,
        title: FittedBox(
          child: Row(
            children: [
              Image.asset(
                "assets/logo/mdulogo.png",
                height: 50,
                width: 50,
              ),
              Text(
                "MAHARSHI DAYANAND UNIVERSITY ROHTAK",
                style: TextStyle(color: Colors.white, fontSize: 15),
              ),
            ],
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(4.0),
            child: Icon(
              Icons.doorbell_sharp,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Stack(
                fit: StackFit.loose,
                children: [
                  Image.asset("assets/logo/mduimage.jpg",
                      height: size.height / 3,
                      width: size.width,
                      fit: BoxFit.cover),
                  Align(
                    alignment: AlignmentDirectional.topEnd,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Image.asset("assets/logo/naaclogo.png",
                            width: 50, height: 50),
                        Image.asset("assets/logo/swatchbharat.png",
                            width: 50, height: 50),
                        Image.asset("assets/logo/olympiclogo.png",
                            width: 50, height: 50),
                        SizedBox(
                          height: 4,
                        ),
                        Image.asset("assets/logo/nirflogo.png",
                            width: 50, height: 50),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              "A+ Grade University Accredited by NAAC",
                              style: TextStyle(
                                  color: Colors.lightBlueAccent,
                                  backgroundColor: Colors.white),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Container(
                  height: size.height / 7,
                  width: size.width,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(1),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          spreadRadius: 1.2,
                          blurRadius: 1.3,
                          color: Colors.black38),
                    ],
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset("assets/logo/courseprogram.png",
                                height: 50, width: 50),
                            Text(
                              "236+",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Programmes",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset("assets/logo/students.png",
                                height: 50, width: 50),
                            Text(
                              "2 lac +",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Students",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            Image.asset("assets/logo/greenry.png",
                                height: 50, width: 50),
                            Text(
                              "622 Acre",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            ),
                            Text(
                              "Spread campus",
                              style: TextStyle(
                                  color: Colors.black54,
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      ),
                    ],
                  )),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "ADMINISTRATION",
                  style: TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: size.height / 2.8,
                child: ListView.builder(
                  padding: EdgeInsets.all(5),
                  itemBuilder: (context, index) {
                    return adminItem();
                  },
                  scrollDirection: Axis.horizontal,
                  itemCount: 4,
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                ),
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          spreadRadius: 1.2,
                          blurRadius: 1.1,
                          color: Colors.black38)
                    ]),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children: [
                      Text("Rohtak, Haryana, India",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.bold)),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Image.asset(
                            "assets/images/partlycloudy.jpg",
                            width: 80,
                            height: 80,
                          ),
                          Text(
                            "36℃",
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Wind: 15kmph",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Precip: 0mm",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Pressure: 999mb",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "Feels like: 40℃",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black38,
                          blurRadius: 1.1,
                          spreadRadius: 1.2)
                    ]),
                child: Column(
                  children: [
                    Text(
                      "Please update your course",
                      style: TextStyle(color: Colors.red, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/news.jpg",
                                width: 25,
                                height: 30,
                              ),
                              Text(
                                "News",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/events.png",
                                width: 25,
                                height: 30,
                              ),
                              Text(
                                "Events",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/gallery.png",
                                width: 25,
                                height: 30,
                              ),
                              Text(
                                "Galley",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/result.png",
                                width: 25,
                                height: 30,
                              ),
                              Text(
                                "Result",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/i_card.png",
                                width: 25,
                                height: 30,
                              ),
                              Text(
                                "Digital I-card",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/course.jpg",
                                width: 30,
                                height: 40,
                              ),
                              Text(
                                "Courses",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/datesheet.png",
                                width: 25,
                                height: 30,
                              ),
                              Text(
                                "Datesheet",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/umc.png",
                                width: 30,
                                height: 40,
                              ),
                              Text(
                                "UMC",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          ),
                          Column(
                            children: [
                              Image.asset(
                                "assets/images/exam.png",
                                width: 30,
                                height: 40,
                              ),
                              Text(
                                "Exams",
                                style: TextStyle(
                                    color: Colors.black, fontSize: 12),
                              ),
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: size.width,
                height: size.height / 3,
                decoration: BoxDecoration(
                    color: Colors.white,
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black38,
                          spreadRadius: 1.2,
                          blurRadius: 1.1)
                    ]),
                child: Column(
                  children: [
                    Text(
                      "AKUMNI SPEAKS",
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.bold),
                    ),
                    Expanded(
                      child: ListView.builder(
                        itemBuilder: (context, index) {
                          return alumniSpeks();
                        },
                        scrollDirection: Axis.horizontal,
                        itemCount: 2,
                        physics: BouncingScrollPhysics(),
                        shrinkWrap: true,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(1),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 1.1,
                        spreadRadius: 1.2,
                        color: Colors.black38),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Icon(
                          Icons.calendar_month,
                          size: 25,
                          color: Colors.green,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          "MDU CALENDAR",
                          style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 15),
                        ),
                      )
                    ]),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Text(
                  "GLIMPSES",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 15,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: size.height / 2.5,
                child: ListView.builder(
                    itemBuilder: (context, index) {
                      return glimpses();
                    },
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 4,
                    padding: EdgeInsets.all(5),
                    scrollDirection: Axis.horizontal),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Image.asset("assets/images/save.png",
                        height: 180, width: 160),
                    Flexible(
                        child: Text(
                      "Save electricity today. Use electricity tomorrow...",
                      style: TextStyle(fontSize: 15, color: Colors.black),
                    ))
                  ],
                ),
              ),
              Text(
                "IT TECONOLOGY PARTNERS",
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: size.height / 2.1,
                  padding: EdgeInsets.all(4),
                  child: ListView.builder(
                    itemBuilder: (context, index) {
                      return itpartners();
                    },
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    itemCount: 6,
                    scrollDirection: Axis.horizontal,
                  ),
                ),
              ),
              Stack(
                children: [
                  Image.asset(
                    "assets/logo/mduimage.jpg",
                    height: size.height / 2.4,
                    width: size.width,
                  ),
                  Container(
                      height: size.height / 2.4,
                      width: size.width,
                      color: Colors.black.withOpacity(0.3)),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/images/mdulocation.jpg",
                              width: size.width/2,
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Telephone - 01262-274640",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Email-conact@mdurohtak.ac.in",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Fax-01262-274640",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                    "Website - http://mdu.ac.in",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.bold),
                                  )
                                ],
                              ),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Copyright @ MDU Rohtak, All Rights Reserved",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 12,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Text(
                          "Meet the team!",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          "Click here...",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12,
                              fontWeight: FontWeight.bold),
                        ),
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

  adminItem() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
          height: size.height / 3,
          width: size.width / 2.5,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(topRight: Radius.circular(40)),
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/Prof. Rajbir Singh.jpg",
                    // width: size.width,
                  ),
                  fit: BoxFit.cover),
              boxShadow: <BoxShadow>[
                BoxShadow(
                    spreadRadius: 1.1, blurRadius: 1.2, color: Colors.black38)
              ]),
          child: Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                color: Colors.black,
                width: size.width * 1.3,
                height: size.height / 15,
                child: Column(
                  children: [
                    Text(
                      "Prof. Rajbir Singh",
                      style: TextStyle(color: Colors.white, fontSize: 15),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Vice-Chancellor",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ))),
    );
  }

  alumniSpeks() {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
          width: size.width / 1.1,
          height: size.height / 3,
          decoration: BoxDecoration(color: Colors.white, boxShadow: <BoxShadow>[
            BoxShadow(color: Colors.black38, spreadRadius: 1.2, blurRadius: 1.2)
          ]),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Image.asset(
                      "assets/images/backgroundimage.jpg",
                      height: 80,
                      width: 70,
                    ),
                  ),
                  Flexible(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                          "It gives me immense pride to affiliate with MDU, rohtak as my almamater. I owe my succcess and professional accomplishment s to the strong value system and professionals serving at the university. there is no exaggeration to say that it's one of the..."),
                    ),
                  ),
                ],
              ),
            ],
          )),
    );
  }

  glimpses() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(1),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      blurRadius: 1.2, spreadRadius: 1.1, color: Colors.black38)
                ]),
            child: Stack(
              children: [
                Image.asset(
                  "assets/logo/mduimage.jpg",
                  height: size.height / 3,
                  width: size.width / 1.1,
                  fit: BoxFit.cover,
                ),
                Text(
                  "MD UNIVERSITY, ROHTAK",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      fontSize: 12,
                      backgroundColor: Colors.white),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }

  itpartners() {
    Size size = MediaQuery.of(context).size;
    return Column(
      children: [
        Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(2)),
            height: size.height / 2.5,
            child: Image.asset(
              "assets/images/microsoft.png",
            ))
      ],
    );
  }
}
