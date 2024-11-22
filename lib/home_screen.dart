import 'package:flutter/material.dart';
import 'package:medcare/components/responsive_grid_view.dart';
import 'package:medcare/splash_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      //appbar
      appBar: AppBar(
          actions: [
            IconButton(
                onPressed: () {
                  Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => SplashScreen()));
                },
                icon: Icon(Icons.logout_rounded))
          ],
          //title
          title: Center(
              child: Text(
            "MedCare",
            style: TextStyle(
                fontSize: MediaQuery.of(context).size.height * .05,
                fontWeight: FontWeight.bold,
                color: Colors.white),
          )),
          backgroundColor: Colors.blue.shade400),

      //Drawer
      drawer: Drawer(),

      //body
      body:
       ResponsiveGridView(),
       

      //bottom navigation bar
      bottomNavigationBar: BottomAppBar(
        color: Colors.blue.shade400,
      ),
    );
  }
}
