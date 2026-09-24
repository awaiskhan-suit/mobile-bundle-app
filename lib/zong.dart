import 'package:flutter/material.dart';
import 'package:packages/ufone.dart';

import 'Telenor.dart';
import 'cheeck_mobile_screen.dart';
import 'jazz.dart';

void main() {
  runApp(FlutterApp());
}

class FlutterApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: ZongScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class ZongScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => ZongScreenState();
}

class ZongScreenState extends State<ZongScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Zong Packages")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [// horizontally scrollable buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>JazzScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Jazz"),
                ),
                const SizedBox(width: 4),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Zong"),
                ),
                const SizedBox(width: 4),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>UfoneScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Ufone"),
                ),
                const SizedBox(width: 4),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>telenorScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Telenor"),
                ),
              ],
            ),
          ),

          const SizedBox(height: 27),

          // Card starts here
          Card(
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
                children: [
                  // top-center text
                  const Text(
                    "Monthly Pro Max Plus",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Row of features
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("20000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("2000"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("20000"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("204800"),
                          SizedBox(height: 2),
                          Text("MBs"),
                          Text("data"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rs: 2,200.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Monthly Pro Max Plus',
                            price: 2200,
                            timee: '30 days',
                          )));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Subscribe"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 27,),
          Card(
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
                children: [
                  // top-center text
                  const Text(
                    "Weekly Digital Max",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Row of features
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("10000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("1000"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("10000"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("102400"),
                          SizedBox(height: 2),
                          Text("MBs"),
                          Text("data"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rs: 600.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Weekly Digital Max',
                            price: 600,
                            timee: '7 days',
                          )));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Subscribe"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 27,),
          Card(
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
                children: [
                  // top-center text
                  const Text(
                    "My5 Family",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Row of features
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("20000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("2000"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("20000"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("204800"),
                          SizedBox(height: 2),
                          Text("MBs"),
                          Text("data"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rs: 5,000.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'My5 Family',
                            price: 5000,
                            timee: '7 days',
                          )));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Subscribe"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 27,),
          Card(
            elevation: 7,
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // center horizontally
                children: [
                  // top-center text
                  const Text(
                    "Monthly WhatsApp Plus ",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 8),
                  // Row of features
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("200"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("50"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("200"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("7168"),
                          SizedBox(height: 2),
                          Text("MBs"),
                          Text("data"),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 13),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Text("Rs: 400.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Monthly WhatsApp Plus',
                            price: 400,
                            timee: '30 days',
                          )));
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Subscribe"),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
