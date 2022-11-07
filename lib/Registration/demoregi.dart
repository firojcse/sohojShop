import 'package:flutter/material.dart';
import 'package:sohoj_shop/Custom_Pages/custom_widget/custom_elevated_button.dart';
import 'package:sohoj_shop/Registration/Country/county_model.dart';
class DemoRegistrationForm extends StatefulWidget {
  const DemoRegistrationForm({Key? key}) : super(key: key);

  @override
  State<DemoRegistrationForm> createState() => _DemoRegistrationFormState();
}

class _DemoRegistrationFormState extends State<DemoRegistrationForm> {
  GlobalKey<FormState> fornkey = GlobalKey<FormState>();
  TextEditingController nameCon = TextEditingController();
  TextEditingController phoneCon = TextEditingController();
  TextEditingController gmailCon = TextEditingController();
  TextEditingController imageUrlCon = TextEditingController();
  TextEditingController passwordCon = TextEditingController();
  TextEditingController passwordConfromCon = TextEditingController();

  String name = "";
  String mail = "";
  String phone = "";
  String imageUrl = "";
  String password = "";
  String passwordConfrom = "";
  String selectGender = "Select";
  List<String> gender = ["Select", "Male", "Female", "Others"];
  List<CountryNameNumber> cunNN = CounNaNu.contrynammenumber();

  dynamic passwordvisible=true;
  dynamic gmailrequrement="@gmail.com";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text('Create Registretion Form'),
      ),
      body: SingleChildScrollView(
        child: Center(
          child:Column(
            children: [
              Container(
                height: 600,
                width: 400,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10)
                ),
                child: Form(
                  key: fornkey,
                  child: Column(
                    children: [
                      _SpaceH10(),
                      Stack(
                        children: [
                          CircleAvatar(
                            radius: 30,
                            child: ClipOval(
                              child: Image.network(
                                'https://99designs-blog.imgix.net/blog/wp-content/uploads/2017/06/apple.png?auto=format&q=60&fit=max&w=930',
                              ),
                            ),
                          ),
                          InkWell(
                            onTap: () {
                              //imagePicker();
                            },
                            child: Icon(
                              Icons.camera_alt,
                            ),
                          )
                        ],
                      ),
                      _SpaceH10(),
                  TextFormField(
                    controller: nameCon,
                    decoration: InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: "Name",
                        hintText: "Name",
                        prefixIcon: Icon(Icons.person)),
                      validator: (value)=>validateName(value),
                      onSaved: (String? val){ name= val!;}
                  ),
                      _SpaceH10(),
                      Container(
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black54,)
                        ),
                        child: Row(
                          children: [
                            Text("Select Your Gender"),
                            SizedBox(width: 10,),

                            DropdownButton(
                              // value: SelectItem,
                                value: selectGender,
                                items: gender.map((String items) {
                                  return DropdownMenuItem(
                                      value: items,
                                      child: Text(
                                        items,
                                        style: TextStyle(
                                            color: Colors.green),
                                      ));
                                }).toList(),
                                onChanged: (String? newValue) {
                                  setState(() {
                                    selectGender = newValue!;
                                    print(selectGender);
                                  });
                                }),
                          ],
                        ),
                      ),
                      _SpaceH10(),
                      TextFormField(
                        controller: phoneCon,
                        maxLength: 11,
                        decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            labelText: "Phone",
                            hintText: "Phone",
                            prefixIcon: GestureDetector(
                                onTap: () {
                                  alertDialog(context);
                                },
                                child: Icon(Icons.phone))
                          // prefix: Container(
                          //   height: 20,
                          //   width: 30,
                          //   color: Colors.green,
                          // )
                        ),
                        validator: (value) {
                          if (value!.isEmpty) {
                            return " * Required";
                          } else {
                            return null;
                          }
                        },
                      ),
                      _SpaceH10(),
                      TextFormField(
                          controller: gmailCon,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Gmail",
                              hintText: "Gmail",
                              prefixIcon: Icon(Icons.mail)),
                          validator: (value)=>validateEmail(value),
                          onSaved: (String? val){ mail= val!;}
                      ),
                      _SpaceH10(),
                      TextFormField(
                          controller: passwordCon,
                          obscureText: passwordvisible,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Password",
                              hintText: "Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(onPressed: ()=>setState(()=>passwordvisible=!passwordvisible),
                                  icon: Icon(
                                    passwordvisible? Icons.visibility:Icons.visibility_off,color: Colors.blueAccent,
                                  ))


                          ),
                          validator: (value)=>validatePW(value),
                          onSaved: (String? val){ password= val!;}
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //     return " * Required";
                        //   }
                        //   // else if(value=="+,-,/,*"){}
                        //
                        //   else if (value.length < 6 ||
                        //       value.length > 15) {
                        //     return "Password Should be Lessthan 6 and greater than 15";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                      ),
                      _SpaceH10(),
                      TextFormField(
                          controller: passwordConfromCon,
                          obscureText: passwordvisible,
                          decoration: InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: "Confrom Password",
                              hintText: "Confrom Password",
                              prefixIcon: Icon(Icons.lock),
                              suffixIcon: IconButton(onPressed: ()=>setState(()=>passwordvisible=!passwordvisible),
                                  icon: Icon(
                                    passwordvisible? Icons.visibility:Icons.visibility_off,color: Colors.blueAccent,
                                  ))),
                          validator: (value)=>validateCPW(value),
                          onSaved: (String? val){ passwordConfrom= val!;}
                        // validator: (value) {
                        //   if (value!.isEmpty) {
                        //      " * Required";
                        //   }
                        //   // else if(value==passwordCon ){
                        //   //   return "password match";
                        //   // }
                        //   //
                        //   // else if(value!=passwordCon){
                        //   //    "password not match";
                        //   // }
                        //   // else if(value=="+,-,/,*"){}
                        //
                        //   else if (value.length < 6 ||
                        //       value.length > 15) {
                        //     return "Password Should be Lessthan 6 and greater than 15";
                        //   } else {
                        //     return null;
                        //   }
                        // },
                      ),
                      _SpaceH10(),
                      ElevatedButton(onPressed: (){
                        if (fornkey.currentState!.validate()) {
                          //Register

                        }
                        else {
                          print("Not Validated");
                        }

                      }, child: Text("LogIn"))


                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  alertDialog(context) {

    return showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Column(
              children: [
                Container(
                  child: Text("Please Select Your Country",style: TextStyle(fontSize: 14),),
                ),
                _SpaceH10(),
                Container(
                  height: 40,
                  child: TextField(
                    decoration: InputDecoration(
                        hintText:"Search......",hintStyle: TextStyle(fontSize: 14),
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50)
                        )
                    ),
                  ),
                ),
                _SpaceH10(),
              ],
            ),
            actions: [

              Container(
                width: 250,
                height: 400,
                color: Colors.white,
                child: ListView.builder(
                    itemCount: cunNN.length,
                    itemBuilder: (BuildContext context, int index){
                      return _buildList(context, cunNN[index], index);

                    }),
                // ListView.builder(
                //     itemCount: 10,
                //     itemBuilder: (BuildContext context, int index){
                //       return Container(
                //         child: Row(
                //           children: [
                //             Padding(
                //               padding: const EdgeInsets.all(8.0),
                //               child: Container(
                //                 height: 40,
                //                 width: 50,
                //                 color: Colors.green,
                //               ),
                //             ),
                //             Text("Bangladesh"),
                //             Text("BD"),
                //             Text("+88"),
                //           ],
                //         ),
                //       );
                //     }),
              )
            ],
          );
        });
  }

  _buildList(BuildContext context, CountryNameNumber cn, int index){

    return GestureDetector(
      onTap: (){
        // Navigator.push(context, MaterialPageRoute(builder: (context)=>RegistrationForm(registrationInfo:cunNN[index],)));
      },
      child: ListTile(
        title: Text("${cunNN[index].conName} ${cunNN[index].conSortName} ", style: TextStyle(fontSize: 14),),
        leading: Container(
          height: 40,
          width: 40,
          decoration: BoxDecoration(
              color: Colors.green,
              image: DecorationImage(
                  image: AssetImage(cunNN[index].conImage)
              )
          ),
        ),
        trailing: Text("${cunNN[index].conSortNumber} ", style: TextStyle(fontSize: 14),),
      ),
    );
  }

  _SpaceH10() {
    return SizedBox(
      height: 10,
    );
  }

  validateEmail(value){
    String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(pattern);
    if (value.length == 0) {
      return "Email is Required";
    }
    else if(!regExp.hasMatch(value)){
      return "Invalid Email";
    }
    else{
      return null;
    }
  }
  validateName(value){
    if (value.length==0){
      return "Name Is Required";
    }
    else if (value.length<2){
      return "Invalid Name";
    }
    else{
      return null;
    }
  }

  validatePW(value){
    String? pattern = r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0){
      return "Password Is Required";
    }

    else if(!regExp.hasMatch(value)){
      return "Invalid Password";
    }

    else {
      return null;
    }
  }

  validateCPW(value){
    String? pattern = r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(pattern);
    if(value.length == 0){
      return "Confirm Password Is Required";
    }

    else if(!regExp.hasMatch(value)){
      return "Invalid Confirm Password";
    }

    else if(passwordCon!=passwordConfrom){
      return"Please Make Sure Password Match";
    }

    else {
      return null;
    }

  }
}
