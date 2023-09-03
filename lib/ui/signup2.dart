import 'package:flutter/material.dart';

class signup2 extends StatefulWidget {
  const signup2({Key? key}) : super(key: key);

  @override
  State<signup2> createState() => _signup2State();
}

class _signup2State extends State<signup2> {
  final _formkey = GlobalKey<FormState>();
  String? name;
  String? fName;
  String? mName;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black38,
        shape: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8),
        ),
        title: Text("Form", style: TextStyle(fontSize: 25, color: Colors.red)),
      ),
      body: Form(
        key: _formkey,
        child: Padding(
          padding: const EdgeInsets.only(left: 8.0, top: 20),
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20, right: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "Enter your Name"),
                    validator: (String? args) {
                      // Null -- flutter null
                      if (args!.length < 4)
                        return "Name must be more then 4 characters";
                      else
                        return null;
                    },
                    onSaved: (value){
                      name= value;
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20, right: 8),
                  child: TextFormField(
                      decoration: InputDecoration(
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          labelText: "Enter your Father's Name"),
                      validator: (String? args) {
                        if (args!.isEmpty) {
                          return "coulam can't be empty";
                        }
                      },
                      onSaved: (value){
                      fName= value;
                },
                      ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8.0, top: 20, right: 8),
                  child: TextFormField(
                    decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                        ),
                        labelText: "Enter your Mother's Name"),
                  validator: (String? args) {
                    if (args!.isEmpty) {
                      return "column can't be empty";
                    }
                  },
                    onSaved: (value){
                      mName= value;
                    },
                  ),
                ),


                ElevatedButton(
                  onPressed: (){
                    if(_formkey.currentState!.validate()){
                      print("validated $name");
                    };

                  },

                  child: Text("Submit"),
                ),
              ]),
        ),
      ),
    );
  }
}
