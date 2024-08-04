import 'package:flutter/material.dart';
import 'package:khaled/Screens/Catgory.dart';
import 'package:khaled/Screens/data/icons.dart';

class Login extends StatelessWidget {
  Login({super.key});
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(landingBackground), fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image(
                image: AssetImage(appLogo),
                width: 200,
              ),
              Text('please insert your username ',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.white)),
              TextFormField(
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'please enteraaa your name';
                  } else if (value.length < 4) {
                    return 'user name must be more than 4 leters';
                  }
                  return null;
                  // return null;
                },
                decoration: InputDecoration(
                  hintText: 'Enter your name',

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(402),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey.shade300),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.blue),
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  //  filled: true,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width,
                margin: EdgeInsets.only(top: 40),
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Catgory(),
                            ));
                      }
                    },
                    child: Text('Log in ')),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
