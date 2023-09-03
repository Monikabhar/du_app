import 'package:flutter/material.dart';

class Result extends StatefulWidget {
  const Result({Key? key}) : super(key: key);

  @override
  State<Result> createState() => _ResultState();
}

class _ResultState extends State<Result> {
  String? initalDropValue;
  String? initalCourseValue;
  String? initalCountrieValue;

  //List of dropdown items
  List<String> courses = [
    'Select your course',
    'BCA',
    'MCA',
    'Phd',
    'Post Doc'
  ];
  List<String> countries = [
    "Canada",
    "Russia",
    "USA",
    "China",
    "United Kingdom",
    "USA",
    "India"
  ];

  List<String> semester = [
    'select your semester',
    'semester 1',
    'semester 2',
    'semester 3',
    'semester 4',
    'semester 5',
    'semester 6'
  ];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Center(
          child: Text(
            "Result",
            style: TextStyle(color: Colors.black),
          ),
        ),
        leading: Icon(Icons.arrow_back_ios_new, color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset("assets/images/light_blue_image.jpg",
                    height: size.height / 4,
                    width: size.width,
                    fit: BoxFit.cover),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.perm_contact_cal_rounded,
                        color: Colors.blueAccent, size: 100),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Hey Monikia",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        Text(
                          "monimalik621@gmail.com",
                          style: TextStyle(color: Colors.blueAccent),
                        ),
                        Text(
                          "Course-MCA",
                          style: TextStyle(color: Colors.blueAccent),
                        )
                      ],
                    )
                  ],
                )
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Text(
              "Check your result Hare!",
              style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
            Align(
              alignment: Alignment.topLeft,
              child: SizedBox(
                height: 30,
                child: Text(
                  "Course",
                  style: TextStyle(color: Colors.black87),
                ),
              ),
            ),

//condition?true:false
            DropdownButton(
              hint: Text('Select you course'),
              value: initalCourseValue,
              items: courses.map((course) {
                return DropdownMenuItem(
                  child: Text(course),
                  value: course,
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  initalCourseValue = newValue!;
                });

                // print("You selected: $country");
              },
              isExpanded: true,
            ),
            SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    "Semester",
                    style: TextStyle(color: Colors.black87),
                  ),
                ],
              ),
            ),
            DropdownButton(
              hint: Text("Select you semester"),
              value: initalDropValue,
              items: semester.map((semester) {
                return DropdownMenuItem<String>(
                  child: Text(semester),
                  value: semester,
                );
              }).toList(),
              onChanged: (newValue) {
                setState(() {
                  initalDropValue = newValue!;
                });
              },
              isExpanded: true,
            ),
            SizedBox(
              height: 20,
            ),
            Align(alignment: Alignment.topLeft,
              child: Column( mainAxisAlignment: MainAxisAlignment.start,crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Countries",
                    style: TextStyle(color: Colors.black87),
                  )
                ],
              ),
            ),
            DropdownButton(
                hint: Text("Select your Country"),
                value: initalCountrieValue,
                items: countries.map((countries) {
                  return DropdownMenuItem(
                    child: Text(countries),
                    value: countries,
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    initalCountrieValue = newValue!;
                  });
                },
            isExpanded: true,
            ),
          ],
        )
      ),
    );
  }
}
