import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});
  var userNameController = TextEditingController();
  var _formKey = GlobalKey<FormState>();
  var passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Image.asset("assets/logoEVN.jpg"),

              Text(
                "Dang nhap he thong",
                style: TextStyle(
                  color: Colors.orange,
                  fontSize: 30
                ),
                ),
              TextFormField(
                controller: userNameController,
                decoration: InputDecoration(
                  label: Text("Ten dang nhap"),
                  hintText: "Vui long nhap ten dang nhap",
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)
                  ),
                  prefixIcon: Icon(Icons.person)
                ),
                validator: (str){
                  if (str == null || str.isEmpty)
                    return "Ten dang nhap khong duoc rong";
                  return null;
                },
              ),
              TextFormField(
                controller: passwordController,
                decoration: InputDecoration(
                  label: Text("Mat khau"),
                  hintText: "Vui long nhap mat khau",
                  border: new OutlineInputBorder(
                    borderRadius: BorderRadius.circular(32.0)
                  ),
                  prefixIcon: Icon(Icons.key),
                ),
                validator: (str){
                  if (str == null || str.isEmpty)
                    return "mat khau khong duoc rong";
                  return null;
                },
              ),
              ElevatedButton(
                onPressed: (){
                  if (_formKey.currentState!.validate()) {
                  var userName = userNameController.text;
                  var password = passwordController.text;
                  print("Xin chao: ${userName}");
                  print("Xin chao: ${password}");
                  }
                  else {
                    print("Du lieu khong chinh xac");
                  }
                },
                child: Text("Dang nhap")),
                Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStatePropertyAll<Color>(Colors.blue)),
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => Register_page()),
                      );
                    },
                    child: Text("Đăng Ký")),
              )
            ],
          )
        ),
      ),
    );
  }
}