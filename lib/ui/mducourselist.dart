import 'package:flutter/material.dart';
import 'package:newloginpage/ui/mdure_appear.dart';

class mducourselist extends StatefulWidget {
  const mducourselist({Key? key}) : super(key: key);

  @override
  State<mducourselist> createState() => _mducourselistState();
}

class _mducourselistState extends State<mducourselist> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {},
            icon: Icon(Icons.arrow_back, color: Colors.white)),
        backgroundColor: Colors.blueAccent,
        title: Text(
          "Course",
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Icon(
              Icons.search,
              color: Colors.white,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            Container(
              height: size.height / 4,
              width: size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(2),
                  color: Colors.white,
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 1.2, spreadRadius: 1.3, color: Colors.black26)
                  ]),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  //mainAxisAlignment: MainAxisAlignment.start,
                  //crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Image.asset(
                          "assets/images/BPS_LOGO_PNG.png",
                          height: 100,
                          width: 150,
                        ),
                        Flexible(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("ADC. PG DIPLOMA IN GUIDANCE & COUNSELLING"),
                              Text(
                                "Duration : 1 years",
                                style: TextStyle(color: Colors.grey),
                              ),
                              Text(
                                "Sem : 2",
                                style: TextStyle(color: Colors.grey),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View Syllabus",
                              style: TextStyle(color: Colors.blue),
                            )),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              "View Details",
                              style: TextStyle(color: Colors.red[400]),
                            ))
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20,),
            ElevatedButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>mdure_appear()));
            }, child: Text("Next")),
          ],
        ),
      ),

    );
  }
}
