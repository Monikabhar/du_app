import 'package:flutter/material.dart';

class forget_password extends StatefulWidget {
  const forget_password({Key? key}) : super(key: key);

  @override
  State<forget_password> createState() => _forget_passwordState();
}

class _forget_passwordState extends State<forget_password> {
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
                  "FORGET PASSWORD?",
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
                  "Enter your email and reset code will be send to your email",
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
                      decoration: InputDecoration(contentPadding: EdgeInsets.all(18),
                        border: InputBorder.none,
                        fillColor: Colors.white,
                        focusColor: Colors.white,labelText: "Enter your Email"
                      ),
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                          fontWeight: FontWeight.w600)),
                ),
              ),
              SizedBox(
                height: 35,
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
            ]),
      ),

    );
  }
}
