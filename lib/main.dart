import 'package:first/ChangePasswordPage.dart';
import 'package:first/CreateRentalPage.dart';
import 'package:first/PieChartPage.dart';
import 'package:first/ProfilePage.dart';
import 'package:first/adminpages.dart';
import 'package:first/getcars.dart';
import 'package:first/glopalvars.dart';
import 'package:first/login.dart';
import 'package:first/logup.dart';
import 'package:first/selectuser.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: LoginPage()
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Home Page',style: TextStyle(color: Colors.white),),
        backgroundColor: Color(0xFF0F3460), 
      ),
      drawer: Drawer(
        child: Container(
          color: Color(0xFF0F3460), 
          child: ListView(
            padding: EdgeInsets.zero,
            children: [
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Color(0xFFADD8E6), 
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      radius: 35,
                      backgroundColor: Colors.white,
                      child: Icon(
                        Icons.person,
                        size: 50,
                        color: Color(0xFF0F3460),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Welcome, User!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      'user@example.com',
                      style: TextStyle(
                        color: Colors.white70,
                        fontSize: 14,
                      ),
                    ),
                  ],
                ),
              ),
             
              _buildDrawerItem(
                icon: Icons.settings,
                text: 'Settings',
                onTap: () {
                    if (isLogged) {
                
                  }
                },
              ),
            
              Divider(color: Colors.white54, thickness: 1),
              _buildDrawerItem(
                icon: Icons.logout,
                text: 'Logout',
                onTap: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomePage(),
                    ),
                  );
                  
                },
              ),
            ],
          ),
        ),
      ),
      body:Container(child:  LoginPage(),)
    );
  }

  Widget _buildDrawerItem(
      {required IconData icon,
      required String text,
      required VoidCallback onTap}) {
    return ListTile(
      leading: Icon(icon, color: Color(0xFFADD8E6)),
      title: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.w600,
        ),
      ),
      onTap: onTap,
      hoverColor: Color(0xFFB0E0E6).withOpacity(0.3), 
      dense: true,
      contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }
}
