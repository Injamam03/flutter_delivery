import 'package:deliver_app/AppRoute.dart';
import 'package:deliver_app/Home%20Screen/homePage.dart' show Homepage;
import 'package:deliver_app/Home%20Screen/profilePage.dart' show Profilepage;
import 'package:deliver_app/Home%20Screen/searchPage.dart' show Searchpage;
import 'package:deliver_app/Home%20Screen/settingPage.dart' show Settingpage;
import 'package:deliver_app/Home%20Screen/shared_prefe.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart' show Get;
import 'package:shared_preferences/shared_preferences.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  // String name="";
  //
  // @override
  // void initState() {
  //
  //   //name =await SharePrefHelper.getName(SharedPreferenceValue.name);
  //   super.initState();
  //   loadName();
  // }
  // void loadName()async{
  // // dynamic sName = await SharedPreferences.getName(SharedPreferenceValue.name);
  //   dynamic sName = await SharePrefHelper.getName(SharedPreferenceValue.name);
  //   setState(() {
  //     name= sName;
  //   });
  // }
  int indx = 0;

  List<String> buttonList = [

    "Home", "Search", "Setting", "Profile"];
  List<IconData> iconList = [
    Icons.home,
    Icons.search,
    Icons.settings,
    Icons.person,
  ];
  List<Widget> screenList = const [
    Homepage(),
    Searchpage(),
    Settingpage(),
    Profilepage(),
  ];

  final GlobalKey<ScaffoldState> _scaffoldkey = new GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldkey,

      ///<<<<<<<<<========== this one is appBar =================>>>>>>>
      appBar: AppBar(
        title: Text("Main Screen",style: TextStyle(fontWeight: FontWeight.bold,),),
        centerTitle: true,
        leading: GestureDetector(
          onTap: () {
            _scaffoldkey.currentState?.openDrawer();
          },
          child: Icon(Icons.menu),
        ),
        backgroundColor: Colors.greenAccent,
      ),
      drawer: Container(
        alignment: Alignment.topLeft,
        height: double.maxFinite,
        width: 300,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Column(
          children: [
            Container(
              height: 220,
              color: Colors.blue,
              child: Column(
                children: [
                  Center(
                    child: Padding(
                      padding: const EdgeInsets.only(top: 30),
                      child: ClipOval(
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.black,
                          ),
                          child: Image.asset(
                            "assets/image/profile.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    "Injamamul Houqe Shifat",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 6),
                  Text("injamamul@gmail.com"),
                ],
              ),
            ),
            SizedBox(height: 20,),
            ListTile(
              leading: Icon(Icons.home_outlined,color: Colors.black,),
              title: Text("Home"),
            ),
            SizedBox(height: 25,),
            ListTile(
              leading: Icon(Icons.heart_broken,color: Colors.black,),
              title: Text("Favourite"),
            ),
            SizedBox(height: 25,),
            ListTile(
              leading: Icon(Icons.workspaces_outline,color: Colors.black,),
              title: Text("WorkFlow"),
            ),
            SizedBox(height: 25,),
            ListTile(
              leading: Icon(Icons.update,color: Colors.black,),
              title: Text("Home"),
            ),
            SizedBox(height: 25,),
            Divider(
              color: Colors.black,
              thickness: 1,
            ),
            ListTile(
              leading: Icon(Icons.share_outlined,color: Colors.black,),
              title: Text("Plugins"),
            ),
            SizedBox(height: 25,),
            ListTile(
              leading: Icon(Icons.notifications_none,color: Colors.black,),
              title: Text("Notification"),
            ),
          ],
        ),

      ),


      /// this one is dottomNavigationBar ========================>>>>>>>>>
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 15),
        height: 80,
        width: double.maxFinite,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: List.generate(buttonList.length, (index) {
            return GestureDetector(
              onTap: () {
                setState(() {
                  indx = index;
                });
              },

              child: Container(
                //alignment: Alignment.center,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                decoration: BoxDecoration(
                  color: indx == index ? Colors.green : Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Row(
                  children: [
                    /// this one is
                    Icon(
                      iconList[index],
                      size: 24,
                      color: indx == index ? Colors.white : Colors.black,
                    ),
                    SizedBox(width: 6),
                    Text(
                      buttonList[index],
                      style: TextStyle(
                        fontSize: 12,
                        color: indx == index ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),

      body: screenList[indx],
    );
  }
}
