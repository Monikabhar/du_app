import 'package:flutter/material.dart';
import 'package:newloginpage/ui/signup2.dart';

class signup extends StatefulWidget {
  const signup({Key? key}) : super(key: key);

  @override
  State<signup> createState() => _signupState();
}

class _signupState extends State<signup> {
  final _formkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.red,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
      ),
      body: Form(
        key: _formkey,
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 50),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              validator: (String? args){   // Null -- flutter null
                if(args!.length < 5)
                  return "Name must be more then 5 characters";
                else return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your Father's Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              validator: (String? args){   // Null -- flutter null
                if(args!.length < 4)
                  return "There must be more then 4 characters";
                else return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your Mother's Name",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
              validator: (String? args){   // Null -- flutter null
                if(args!.length > 10)
                  return "Name must be Less then 10 characters";
                else return null;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Enter your Contact Number",
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8.0,top: 80),
            child: ElevatedButton(
              onPressed: () {

                if(_formkey.currentState!.validate()){
                  print("validating");
                };
                },
              child: Text("Submit"),
            ),
          ),
          ],
      )),
    );
  }
}
