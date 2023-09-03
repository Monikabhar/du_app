import 'package:awesome_icons/awesome_icons.dart';
import 'package:flutter/material.dart';
import 'package:newloginpage/ui/UMC.dart';

class mdure_appear extends StatefulWidget {
  const mdure_appear({Key? key}) : super(key: key);

  @override
  State<mdure_appear> createState() => _mdure_appearState();
}

class _mdure_appearState extends State<mdure_appear> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
          leading: IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.arrow_back,
                color: Colors.white,
              )),
          title: Text(
            "Schedule of Re-Appear/-",
            style: TextStyle(color: Colors.white, fontSize: 15),
          ),
          backgroundColor: Colors.blueAccent,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(FontAwesomeIcons.cloudDownloadAlt,
                  color: Colors.white, size: 15),
            )
          ]),
      body: Column(children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: <BoxShadow>[
                  BoxShadow(
                      color: Colors.black26,
                      spreadRadius: 1.2,
                      blurRadius: 1.1),
                ]),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.only(right: 8.0, left: 8.0, top: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Program of course Name",
                      style: TextStyle(color: Colors.black45),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.red,
                        shape: BoxShape.circle,
                      ),
                      height: 18,
                      width: 18,
                    )
                  ],
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.only(left: 8.0, right: 8.0, bottom: 8.0),
                child: Text(
                  "B.A/B.Sc./B.Com(Pass & Hon's), All UG Courses/Vocational & Hons Courses 2nd, 4rth, 6th & 8th Sem & UG Integrated Course 2nd, 4rth, 6th & 8th Sem",
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w600,
                      fontSize: 15),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last date without late fee",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "May 31, 2021",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Last Date with 500",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Jun 7, 2021",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "Last Date with 1000",
                          style: TextStyle(color: Colors.black45),
                        ),
                        Text(
                          "Jun 15, 2021",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontWeight: FontWeight.w600),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                  child: Row(
                    children: [
                      Text("Apply Now:",
                          style: TextStyle(color: Colors.black54)),
                      TextButton(
                          onPressed: () {},
                          child: Text(
                            "https://mdu.ac.in/ :",
                            style: TextStyle(color: Colors.blueAccent),
                          )),
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ),
        ElevatedButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context)=>UMC()));
        }, child: Text("Next"))
      ]),
    );
  }
}
