import 'package:flutter/material.dart';

import 'main_screen.dart';

class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        if (constraints.maxWidth > 650) {
          return LoginScreenWeb();
        } else {
          return LoginScreenMobile();
        }
      },
    );
  }
}


class LoginScreenWeb extends StatelessWidget {
  const LoginScreenWeb({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Expanded(
              child: Container(
                margin:
                const EdgeInsets.symmetric(vertical: 35.5,),
                child:
                Image.asset('images/initialview.png', width: 1500, height: 1300),
              )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Column(
                children: [
                  SizedBox(height: 200),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Share Your Portfolio',
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Create, Share, and Search your Portfolio'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextButton(
                        onPressed: () {
                          // Aksi ketika button diklik
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                        },
                        child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 130.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            )),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: BorderSide(color: Colors.black))))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        // Aksi ketika button diklik
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 19.5, horizontal: 125.0),
                          child: Text(
                            "SigIn",
                            style:
                            TextStyle(fontSize: 14.0, color: Colors.white),
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Background color
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(28.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


class LoginScreenMobile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            margin:
                const EdgeInsets.symmetric(vertical: 35.5,),
            child:
                Image.asset('images/initialview.png', width: 500, height: 300),
          )),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(top: 70.0),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Share Your Portfolio',
                      style: TextStyle(
                          fontSize: 23.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Create, Share, and Search your Portfolio'),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: TextButton(
                        onPressed: () {
                          // Aksi ketika button diklik
                          Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MainScreen();
                          }));
                        },
                        child: Container(
                            margin: const EdgeInsets.symmetric(
                                vertical: 12.0, horizontal: 130.0),
                            child: Text(
                              "Login",
                              style: TextStyle(
                                  fontSize: 14.0, color: Colors.black),
                            )),
                        style: ButtonStyle(
                            shape: MaterialStateProperty.all<
                                    RoundedRectangleBorder>(
                                RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28.0),
                                    side: BorderSide(color: Colors.black))))),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 5),
                    child: ElevatedButton(
                      onPressed: () {
                        // Aksi ketika button diklik
                      },
                      child: Container(
                          margin: const EdgeInsets.symmetric(
                              vertical: 19.5, horizontal: 125.0),
                          child: Text(
                            "SigIn",
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.white),
                          )),
                      style: ElevatedButton.styleFrom(
                        primary: Colors.black, // Background color
                        shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(28.0),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                        fontSize: 12.0,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
