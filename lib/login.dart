import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              child: Container(
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    bottom: 0,
                    child: ClipRRect(
                      borderRadius:
                          BorderRadius.only(bottomRight: Radius.circular(310)),
                      child: Image.asset(
                        "assets/images/sky.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                Positioned(
                  child: Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Image.asset(
                          "assets/images/cotranh.png",
                          width: 100,
                          height: 100,
                        ),
                        Image.asset(
                          "assets/images/flutterLogo.png",
                          width: 100,
                          height: 100,
                        ),
                        Image.asset(
                          "assets/images/comay.png",
                          width: 100,
                          height: 100,
                        ),
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  bottom: 0,
                  child: Container(
                    alignment: Alignment.center,
                    child: Text(
                      "Login",
                      style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          )),
          Expanded(
              child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(30),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(12),
                    boxShadow: [
                      BoxShadow(
                        offset: Offset(0, 4),
                        blurRadius: 5,
                        color: Colors.deepPurpleAccent.withOpacity(0.2),
                      ),
                    ],
                  ),
                  child: Column(
                    children: [
                      TextField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Email or Phone Number',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(20))),
                      TextField(
                          style: TextStyle(fontSize: 20),
                          decoration: InputDecoration(
                              border: InputBorder.none,
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.grey),
                              contentPadding: EdgeInsets.all(20))),
                    ],
                  ),
                ),
              ),
              Container(
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text("Login"),
                ),
              )
            ],
          )),
        ],
      ),
    );
  }
}
