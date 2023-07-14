import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {

  const LoginScreen({Key? key}) : super(key: key);

  @override
  _LoginScreenStates createState() => _LoginScreenStates();
}

class _LoginScreenStates extends State<LoginScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              Image.asset(
                "assets/login.png",
                height: 320,
                width: 350,
                fit: BoxFit.cover,
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 25,
                  bottom: 20,

                ),
                child: Text("Selamat Datang", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.w700,
                      
                ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Email',
                      
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF1F1F1),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8,
                    horizontal: 15,
                  ),
                  child: TextFormField(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Password',
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: InkWell(
                  onTap: () {
                  },
                  child: Text("Forgot Password", style: TextStyle(color: Color(0xFFDA3340),
                  ),
                  ),
                ),
              ),
              Row(
                children: [
                  Expanded(
                    child: MaterialButton(
                      color:  Color.fromARGB(0, 12, 17, 63),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                      onPressed: () {} ,
                      child: Padding(
                        padding: const EdgeInsets.all(18.0),
                        child: const Text(
                          "LOGIN", 
                          style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    )
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
