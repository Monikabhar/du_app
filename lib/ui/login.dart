import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/scheduler.dart';
import 'package:newloginpage/ui/date_sheet.dart';
import 'package:newloginpage/ui/mducourselist.dart';
import 'package:newloginpage/ui/mdure_appear.dart';
import 'package:newloginpage/ui/signup.dart';
import 'package:newloginpage/ui/signup2.dart';
import 'package:step_progress_indicator/step_progress_indicator.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/photo1.jpg"),
                    ),
                    shape: BoxShape.circle,
                    color: Colors.redAccent,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Enter your Email",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Password",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(25),
                    ),
                  ),
                  obscureText: true,
                ),
              ),

              // CircularProgressIndicator(
              //   color: Colors.green,
              //   strokeWidth: 2,
              //   backgroundColor: Colors.yellow,
              // ),
              CircularStepProgressIndicator(
                totalSteps: 12,
                currentStep: 6,
                selectedColor: Colors.redAccent,
                unselectedColor: Colors.grey[200],
                selectedStepSize: 10.0,
                width: 100,
                gradientColor: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [Colors.cyan, Colors.orangeAccent],
                ),
              ),

              Container(
                height: 300,
                child: GridView(
                  gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3),
                  primary: false,
                  padding: EdgeInsets.all(20),
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(25),
                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/images/IMAGE 1.png"),
                              fit: BoxFit.fill),
                          border: Border.all(color: Colors.redAccent)),
                      //color: Colors.green,
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/IMAGE 2.png"),
                              fit: BoxFit.fill),
                          //color: Colors.blueAccent,
                          border: Border.all(color: Colors.redAccent)),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(borderRadius: BorderRadius.only(topRight: Radius.circular(25),),
                          image: DecorationImage(
                              image: AssetImage("assets/images/IMAGE 3.png"),
                              fit: BoxFit.fill),
                          //color: Colors.orangeAccent,
                          border: Border.all(color: Colors.redAccent)),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(25),
                          ),
                          image: DecorationImage(
                              image: AssetImage("assets/images/IMAGE 4.png"),
                              fit: BoxFit.fill),
                          //color: Colors.red,
                          border: Border.all(color: Colors.redAccent)),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: AssetImage("assets/images/photo.png"),
                              fit: BoxFit.fill),
                          //color: Colors.brown,
                          border: Border.all(color: Colors.redAccent)),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/photo1.jpg"),
                            fit: BoxFit.fill),
                        //color: Colors.black38,
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25),
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage("assets/images/IMAGE 2.png"),
                            fit: BoxFit.fill),
                        //color: Colors.yellow,
                        border: Border.all(color: Colors.redAccent),
                        borderRadius: BorderRadius.circular(25),
                      ),
                    ),
                  ],
                ),
              ),

              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => mducourselist()),
                  );
                },
                child: Text("Signup"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
