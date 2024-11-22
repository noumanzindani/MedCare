import 'package:flutter/material.dart';
import 'package:medcare/detailScreen_1.dart';

class  ResponsiveGridView extends StatelessWidget {
  // Example dynamic data
  final List<Map<String, dynamic>> gridData = [
    {
      "id": 1,
      "title": "Item 1",
      "image": "lib/images/Whey.png",
      "navigation": screen1(),
      "description":"article1"
    },
    {
      "id": 2,
      "title": "Item 2",
      "image": "lib/images/Ginseng.png",
      "navigation": DetailScreen2(),
      "description":"article1"

    },
    {
      "id": 3,
      "title": "Item 3",
      "image": "lib/images/bestbcaa.png",
      "navigation": DetailScreen3(),
      "description":"article1"
    },
    {
      "id": 4,
      "title": "Item 4",
      "image": "lib/images/Duron.png",
      "navigation": DetailScreen4(),
      "description":"article1"

    },
     {
      "id": 5,
      "title": "Item 5",
      "image": "lib/images/codliver.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 6,
      "title": "Item 6",
      "image": "lib/images/biogrow.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 7,
      "title": "Item 7",
      "image": "lib/images/B-50.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 8,
      "title": "Item 8",
      "image": "lib/images/C500.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 9,
      "title": "Item 9",
      "image": "lib/images/femrose.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 10,
      "title": "Item 10",
      "image": "lib/images/gluta fair.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 11,
      "title": "Item 11",
      "image": "lib/images/serioud.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },{
      "id": 12,
      "title": "Item 12",
      "image": "lib/images/codliver.png",
      "navigation": DetailScreen5(),
      "description":"article5"

    },

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(backgroundColor: Colors.grey.shade50,
      body: GridView.builder(
        
        gridDelegate:const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          childAspectRatio: 1.0,
        ),
        itemCount: gridData.length,
        padding:const EdgeInsets.all(10),
        itemBuilder: (context, index) {
          final item = gridData[index];

          return GestureDetector(
            onTap: () {
              // Navigate using the defined navigation key
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => item["navigation"],
                ),
              );
            },
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.blue.shade400,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  children: [
                    // Image
                    Expanded(
                      child: Container(
                       
                        decoration: BoxDecoration(
                           color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          image: DecorationImage(
                            image: NetworkImage(item["image"]),
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                   const SizedBox(height: 10),
                    // Title
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal:  8.0),
                      child: Row(
                        children: [
                          Text(
                            item["title"],
                            style:const TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          
                        ],
                      ),
                    ),const SizedBox(height: 5),
                     // Dynamic description
                         Padding(
                           padding: const EdgeInsets.symmetric(horizontal:  8.0),
                           child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                             children: [
                               Text(
                                 item["description"],
                                 textAlign: TextAlign.center,
                                 style:const TextStyle(color: Colors.white, fontSize: 12),
                                  ),
                                  Icon(Icons.star,color: Colors.yellow.shade700,)
                             ],
                           ),)
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

// Detail Screens
class DetailScreen1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class DetailScreen2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Detail Screen 2"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 2",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class DetailScreen3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Detail Screen 3"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 3",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class DetailScreen4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text("Detail Screen 4"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 4",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
class  DetailScreen5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen9 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen10 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen11 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}class  DetailScreen12 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Detail Screen 1"),
      ),
      body:const Center(
        child: Text(
          "This is the detail screen for Item 1",
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
