import 'package:flutter/material.dart';
import 'package:sohoj_shop/Registration/registration.dart';
import 'package:sohoj_shop/home_page.dart';

class PublicLoginPage extends StatefulWidget {
  const PublicLoginPage({Key? key}) : super(key: key);

  @override
  State<PublicLoginPage> createState() => _PublicLoginPageState();
}
class _PublicLoginPageState extends State<PublicLoginPage> {
  GlobalKey<FormState> formkey = GlobalKey<FormState>();
  var phoneCTR = TextEditingController();
  var passCTR = TextEditingController();
  String addmin1phone = "01725171605";
  String addmin1pass = "admin10";
  String addmin2phone = "01725171605";
  String addmin2pass = "admin20";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text("Login "),
      ),
      body: SingleChildScrollView(
          child: Form(
        key: formkey,
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
          child: Column(
            children: [
              CircleAvatar(
                radius: 30,
                child: ClipOval(
                  child: Image.network(
                    'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/06/apple.png?auto=format&q=60&fit=max&w=930',
                  ),
                ),
              ),
              _spaceH15(),
              TextFormField(
                controller: phoneCTR,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Phone',
                    hintText: 'Enter the phone number'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* Required";
                  } else
                    return null;
                },
              ),
              _spaceH15(),
              TextFormField(
                controller: passCTR,
                decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Password',
                    hintText: 'Enter secure password'),
                validator: (value) {
                  if (value!.isEmpty) {
                    return "* Required";
                  } else if (value.length < 6) {
                    return "Password should be atleast 6 characters";
                  } else if (value.length > 15) {
                    return "Password should not be greater than 15 characters";
                  } else
                    return null;
                },
              ),
              _spaceH15(),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  ElevatedButton(
                      onPressed: () {
                        if (formkey.currentState!.validate()) {
                          if ( (addmin1phone == phoneCTR.text &&
                              addmin1pass == passCTR.text)||(addmin2phone == phoneCTR.text &&
                              addmin2pass == passCTR.text)) {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const HomePage()),
                            );
                          } else {
                            print("${addmin1phone} ${addmin1pass} ${phoneCTR.text} ${passCTR.text}");
                            const snackBar = SnackBar(
                              content: Text('Login Faild!'),
                            );
                            ScaffoldMessenger.of(context)
                                .showSnackBar(snackBar);
                          }
                        } else {
                          print("Not Validated");
                        }
                      },
                      child: Text('Login')),
                  SizedBox(
                    width: 20,
                  ),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const RegistrationForm()),
                        );
                      },
                      child: const Text('Register ')),
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }

  _spaceH15() {
    return SizedBox(
      height: 20,
    );
  }
}
