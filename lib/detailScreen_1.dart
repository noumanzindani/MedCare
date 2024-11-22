import 'package:flutter/material.dart';
import 'package:medcare/splash_screen.dart';

class screen1 extends StatefulWidget {
  const screen1({super.key});

  @override
  State<screen1> createState() => _screen1State();
}

class _screen1State extends State<screen1> {
int selectedBoxIndex = 0; // Keeps track of the selected box

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "GOLD STANDARD 100% WHEY",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.025,
                          fontWeight: FontWeight.bold),
                    ),
                  )
                ],
              ),
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "The Best Gym Patner for Elite Generation",
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.height * 0.015,
                      ),
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Container(
                  decoration:
                      BoxDecoration(borderRadius: BorderRadius.circular(12)),
                  height: MediaQuery.of(context).size.height * 0.25,
                  child: PageView(
                    children: [
                      Container(
                        height: 100,
                        color: Colors.pink,
                      ),
                      Container(
                        height: 100,
                        color: Colors.yellow,
                      ),
                      Container(
                        height: 100,
                        color: Colors.green,
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.025,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Row(
                  children: [
                    Text(
                      "RS.99",
                      style: TextStyle(
                          decoration: TextDecoration.lineThrough,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[400],
                          fontSize: MediaQuery.of(context).size.height * 0.025),
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.005,
                    ),
                    Text(
                      "RS.56",
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                          fontSize: MediaQuery.of(context).size.height * 0.025),
                    )
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text(
                      "Protein",
                      style: TextStyle(
                          fontSize: MediaQuery.of(context).size.height * 0.02),
                    ),
                  ),Row(children: [
                    IconButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => SplashScreen()));
                      },
                      icon:Icon(Icons.add_box_outlined),),Text("Add to Cart")
                  ],),
                  
                ],
                
              ),Divider(thickness: 0.8,color: Colors.grey,),

              // SizedBox(height: MediaQuery.of(context).size.height*0.009,),


              Row(children: 
              [Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: Text("Packge Size",
                style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MediaQuery.of(context).size.height * 0.03),),
              )
              ],),
                Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SizedBox(width: 2.0,),
                _buildSelectionBox(0, "Rs.106", "500 pellets"),
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                _buildSelectionBox(1, "Rs.166", "110 pellets"),
                SizedBox(width: MediaQuery.of(context).size.width*0.03,),
                _buildSelectionBox(2, "Rs.252", "300 pellets"),
              ],
            ),
            ],
          ),
        ));
  }

  //packge Size Method
 Widget _buildSelectionBox(int index, String price, String details) {
    bool isSelected = index == selectedBoxIndex;
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedBoxIndex = index;
        });
      },
      child: Container(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width*0.0),
        decoration: BoxDecoration(
          color: isSelected ? Colors.yellow[100] : Colors.white,
          border: Border.all(
            color: isSelected ? Colors.yellow : Colors.grey,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(8),
        ),
        child: Column(
          children: [
            Text(
              price,
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: isSelected ? Colors.black : Colors.grey[700],
              ),
            ),
            SizedBox(height: 4),
            Text(
              details,
              style: TextStyle(
                fontSize: 14,
                color: isSelected ? Colors.black : Colors.grey[700],
              ),
            ),
          ],
        ),
      ),
    );
  }

}




 