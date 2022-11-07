import 'package:flutter/material.dart';
import 'package:pandabar/main.view.dart';
import 'package:sohoj_shop/Admin/adminlogin_page.dart';
import 'package:sohoj_shop/Custom_Pages/custom_widget/product_view/product_view.dart';
import 'package:sohoj_shop/LogIn/publisc_login_page.dart';
import 'package:sohoj_shop/Registration/RegiUserData/regi_user_data.dart';
import 'package:sohoj_shop/Registration/registration.dart';
import 'package:pandabar/pandabar.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPosition=0;
  static const List<Widget> _widgetOptions = <Widget>[
    ProductView(),
    RegistrationForm(),
    PublicLoginPage(),
    AdminLoginPage(),
    RegiUserData()
  ];
  void _onItemTapped(int index) {
    setState(() {
      currentPosition = index;
    });
  }
  String? page="Blue";
  bool loginPage=true;
  bool registrasionPage=true;
  bool adminloginPage=true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        centerTitle: true,
        title: Text("SohojShop"),
        actions: [
          Row(
            children: [
              Icon(Icons.search),
              SizedBox(width: 8,),
              Icon(Icons.add_alert_outlined)
            ],
          )
        ],
      ),
      drawer: _CustomeDrawer(),
      body: _widgetOptions.elementAt(currentPosition),
        bottomNavigationBar: BottomNavigationBar(
    items: [
    BottomNavigationBarItem(
    icon: Icon(Icons.home),
    label: 'Home',
    backgroundColor: Colors.green
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.shopping_bag_outlined),
    label:'Card',
    backgroundColor: Colors.blue,
    ),
    BottomNavigationBarItem(
    icon: Icon(Icons.person_outline_rounded),
    label: 'Account',
    backgroundColor: Colors.blue,
    ),
      BottomNavigationBarItem(
        icon: Icon(Icons.search),
        label: 'Search',
        backgroundColor: Colors.blue,
      ),
      BottomNavigationBarItem(
        icon: Icon(Icons.apple),
        label: 'RegiData',
        backgroundColor: Colors.blue,
      ),
    ],
    currentIndex: currentPosition,
    onTap: _onItemTapped,
    )

      // bottomNavigationBar: PandaBar(
        //   buttonData: [
        //     PandaBarButtonData(
        //       id: "blue",
        //       icon:Icons.home,
        //       title: ('Home'),
        //     ),
        //     PandaBarButtonData(
        //       id: "blue",
        //       icon:Icons.home,
        //       title: ('Home'),
        //     ),
        //     // BottomNavigationBarItem(
        //     //   icon: Icon(Icons.person),
        //     //   label: ('Registration'),
        //     //   backgroundColor: Colors.yellow,
        //     // ),
        //     // BottomNavigationBarItem(
        //     //   icon: Icon(Icons.person),
        //     //   label: ('PubLogin'),
        //     //   backgroundColor: Colors.purple,
        //     // ),
        //     // BottomNavigationBarItem(
        //     //   icon: Icon(Icons.person),
        //     //   label: ('AdminLogin'),
        //     //   backgroundColor: Colors.blue,
        //     // ),
        //   ],
        //   onChange: (id){
        //     setState(() {
        //       page=id;
        //     });
        //   },
        //
        // )
    );
  }
  _CustomeDrawer(){
    return Drawer(
      child: ListView(
        children: [
          DrawerHeader(
              decoration: BoxDecoration(
                  color: Colors.green[100]
              ),
              child: Text("SohojShop")),
          ListTile(

            leading: Icon(Icons.home),
            title: Text("Home"),
            onTap: (){
              Navigator.pop(context);
            },
          ),
          Divider(height: 1,thickness: 1,),
          Divider(height: 1,thickness: 1,),
          !loginPage?
          ListTile(
            leading: Icon(Icons.login),
            title: const Text('Login'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PublicLoginPage()),
              );
            },
          ):
          Divider(height: 1,thickness: 1,),
          !loginPage?
          ListTile(
            leading: Icon(Icons.login),
            title: const Text('Log Out'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => PublicLoginPage()),
              );
            },
          ):
          Divider(height: 1,thickness: 1,),
          !adminloginPage? ListTile(
            leading: Icon(Icons.login),
            title: const Text('Admin Login'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => AdminLoginPage()),
              );
            },
          ):
          Divider(height: 1,thickness: 1,),
          ListTile(
            leading: Icon(Icons.app_registration),
            title: const Text('Register'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistrationForm()),
              );
            },
          ),
          Divider(height: 1,thickness: 1,),
          ListTile(
            leading: Icon(Icons.chair),
            title: const Text('ListData Chack'),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegistrationForm()),
              );
            },
          ),
        ],
      ),
    );
  }
}
