import 'package:flutter/material.dart';
import 'package:newloginpage/ui/Sign_Up.dart';
import 'package:newloginpage/ui/forget_password.dart';

class Login_ extends StatefulWidget {
  const Login_({Key? key}) : super(key: key);

  @override
  State<Login_> createState() => _Login_State();
}

class _Login_State extends State<Login_> {

  bool isVisible = true;

  void toggolePass(){
    setState(() {
      isVisible= !isVisible;
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 120,
              ),
              Align(
                alignment: Alignment.center,
                child: Text(
                  "Welcome to kidney Stone!",
                  style: TextStyle(
                      color: Colors.indigo.shade900,
                      fontSize: 20,
                      fontWeight: FontWeight.w900),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  "Login and continue your healthy journey!",
                  style: TextStyle(color: Colors.black, fontSize: 15),
                ),
              ),
              SizedBox(height: 120),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Text(
                    "Email Adress",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 8, bottom: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 2,
                            spreadRadius: 4)
                      ]),
                  child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        labelText: "Enter your Email",
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              Align(
                alignment: AlignmentDirectional.topStart,
                child: Padding(
                  padding: const EdgeInsets.only(left: 35.0),
                  child: Text(
                    "Password",
                    style: TextStyle(fontSize: 15, color: Colors.black38),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 16.0, top: 8, bottom: 8, right: 8),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                      boxShadow: <BoxShadow>[
                        BoxShadow(
                            color: Colors.grey.shade300,
                            blurRadius: 2,
                            spreadRadius: 4)
                      ]),
                  child: TextFormField(
                      decoration: InputDecoration(
                        contentPadding: EdgeInsets.all(18),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        focusColor: Colors.white,
                        suffixIcon: IconButton(onPressed: () {
                          // setState(() {
                          //   isVisible=true;
                          // });
                          toggolePass();
                        }, icon: isVisible? Icon(Icons.remove_red_eye_outlined) :Icon(Icons.remove_red_eye)),
                        labelText: "Password",
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600),
                      obscureText: isVisible,
                      onChanged:(val){
                        // se?;
                  }),
                ),
              ),
              Row(
                  children: [
                    TextButton(onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => forget_password()));
                    }, child: Text("Forget Password"))
                  ],
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.end),
              SizedBox(
                height: 55,
              ),
              Container(
                width: size.width / 1.1,
                decoration: BoxDecoration(
                    color: Colors.indigo.shade700,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: <BoxShadow>[
                      BoxShadow(
                          color: Colors.black12,
                          blurRadius: 1.1,
                          spreadRadius: 1.2)
                    ]),
                child: Padding(
                    padding:
                        const EdgeInsets.only(left: 16.0, top: 8, bottom: 8),
                    child: TextButton(
                        onPressed: () {},
                        child: Text(
                          "Continue",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 15,
                              fontWeight: FontWeight.bold),
                        ))),
              ),
              SizedBox(height: 40),
              Text(
                "OR",
                style: TextStyle(
                    color: Colors.green.shade400,
                    fontSize: 15,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: size.width / 8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1.1,
                              spreadRadius: 1.2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.facebook,
                        color: Colors.indigo.shade900,
                        size: 38,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 25,
                  ),
                  Container(
                    width: size.width / 8,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(50),
                        boxShadow: <BoxShadow>[
                          BoxShadow(
                              color: Colors.black12,
                              blurRadius: 1.1,
                              spreadRadius: 1.2)
                        ]),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        "assets/logo/google.png",
                        width: 55,
                        height: 35,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 150,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyle(
                        color: Colors.black87,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Sign_Up()));
                      },
                      child: Text(
                        "Sign Up",
                        style: TextStyle(
                            color: Colors.indigo.shade700,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                      ))
                ],
              )
            ]),
      ),
    );
  }
}
