import 'package:flutter/material.dart';
import 'package:khaled/Screens/Login.dart';
import 'package:khaled/Screens/data/icons.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text('Quiz APP'),
        //   leading: Icon(Icons.logo_dev),
        // ),
        body: Container(
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage(landingBackground), fit: BoxFit.fill)),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Spacer(),
              Image(
                image: AssetImage(appLogo),
                // width: 20,
                // height: 20,
                fit: BoxFit.fill,
              ),
              SizedBox(height: 80),
              Text(
                'welcom to Quiz app',
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    color: Colors.white24),
              ),
              Spacer(),
              Container(
                width: double.infinity,
                margin: EdgeInsets.only(bottom: 40),
                child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Login(),
                          ));
                    },
                    child: Text('Go to login page ')),
              ),
            ],
          ),
        ),
      ),
    ));
  } //
}
