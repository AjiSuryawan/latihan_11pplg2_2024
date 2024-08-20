import 'package:flutter/material.dart';
import 'package:latihan_11pplg2_2024/widgets/my_button.dart';
import 'package:latihan_11pplg2_2024/widgets/my_colors.dart';
import 'package:latihan_11pplg2_2024/widgets/my_text_field.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  String loginMessage = "";
  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "My Kalkulator",
          style: TextStyle(color: Colors.red),
        ),
      ),
      body: Center(
        child: Column(
          //mainAxisAlignment: MainAxisAlignment.center,
          children: [
            MyTextField(
                controller: usernameController,
                hintText: "username",
                isObsecure: false,
                textStyle: TextStyle(color: textColor)),
            MyTextField(
                controller: passwordController,
                hintText: "password",
                isObsecure: true,
                textStyle: TextStyle(color: textColor)),
            MyButton(
                onpressed: () {
                  setState(() {
                    if (usernameController.text == "admin" &&
                        passwordController.text == "admin") {
                      loginMessage = "Berhasil";
                    } else {
                      loginMessage = "login gagal";
                    }
                  });
                },
                textButton: "login",
                backgroundColor: primaryColor,
                textColor: textColorWhite,
                borderRadius: 5,
                elevation: 5),
                Text(loginMessage),
            // Spacer()
            // TextButton(onPressed: null, child: Text('Dont have account?'))
            Expanded(child: Container()),
            TextButton(onPressed: null, child: Text('Dont have account?')),
          ],
        ),
      ),
    );
  }
}
