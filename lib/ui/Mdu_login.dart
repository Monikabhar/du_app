import 'package:flutter/material.dart';
import 'package:newloginpage/ui/mdunew_page.dart';

class mdu_login extends StatefulWidget {
  const mdu_login({Key? key}) : super(key: key);

  @override
  State<mdu_login> createState() => _mdu_loginState();
}

class _mdu_loginState extends State<mdu_login> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(
        children: [
          Image.asset("assets/images/backgroundimage.jpg",
              height: size.height, width: size.width, fit: BoxFit.fitHeight),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  bottom: 50.0, top: 50, left: 15, right: 15),
              child: Container(
                width: size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                  boxShadow: <BoxShadow>[
                    BoxShadow(
                        blurRadius: 1.1,
                        spreadRadius: 1.2,
                        color: Colors.black26)
                  ],
                ),
                child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: [
                    SizedBox(
                      height: 50,
                    ),
                    Image(
                      height: 100,
                      width: 200,
                      fit: BoxFit.fill,
                      image: AssetImage("assets/logo/mdulogo.png"),
                    ),
                    Text(
                      "MDU",
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 20),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Student Login",
                          style: TextStyle(color: Colors.blue, fontSize: 12),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Text(
                          "Beta",
                          style: TextStyle(color: Colors.black87),
                        )
                      ],
                    ),
                    Text(
                      "Regular/Distance",
                      style: TextStyle(color: Colors.black87, fontSize: 12),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        decoration: InputDecoration(
                            labelText: "Enter your Registration Number",
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(12),
                              borderSide: BorderSide(color: Colors.black12),
                            )),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: TextFormField(
                        style: TextStyle(color: Colors.black, fontSize: 12),
                        decoration: InputDecoration(
                          labelText: "Enter Password",
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(12),
                            borderSide: BorderSide(color: Colors.black12),
                          ),
                          suffixIcon: isVisible
                              ? IconButton(
                                  icon: Icon(Icons.remove_red_eye),
                                  onPressed: () {
                                    setState(() {
                                      isVisible = false;
                                    });
                                  })
                              : IconButton(
                                  icon: Icon(Icons.remove_red_eye_outlined),
                                  onPressed: () {
                                    setState(() {
                                      isVisible = true; // ?:
                                    });
                                  }),
                        ),
                        obscureText: isVisible,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {},
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text("Find Regd No.?"),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text("ForgetPassword",
                              style: TextStyle(color: Colors.cyan[200])),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.blueAccent[400])),
                            onPressed: () {},
                            child: Text(
                              "Login",
                              style: TextStyle(color: Colors.white),
                            )),
                      ),
                    ),
                    Text("-- or --",
                        style: TextStyle(color: Colors.black54, fontSize: 15)),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "Are you new to MDU App ?",
                            style: TextStyle(color: Colors.red),
                          ),
                          Text(
                            "Register hare",
                            style: TextStyle(color: Colors.blue),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      "-------------------------------------------",
                      style: TextStyle(color: Colors.black38, fontSize: 15),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: size.width,
                        child: ElevatedButton(
                            style: ButtonStyle(
                                backgroundColor: MaterialStatePropertyAll(
                                    Colors.blueAccent)),
                            onPressed: () {},
                            child: Text(
                              "Login to student Portal",
                              style: TextStyle(color: Colors.white),
                            ),),
                      ),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => mdunew_page()),
                        );
                      },
                      child: Text("Next"),),
                  ]),
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
