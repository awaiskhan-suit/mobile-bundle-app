import 'package:flutter/material.dart';
import 'package:packages/Telenor.dart';
import 'package:packages/ufone.dart';
import 'package:packages/zong.dart';

import 'cheeck_mobile_screen.dart';

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
      home: JazzScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class JazzScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => JazzScreenState();
}

class JazzScreenState extends State<JazzScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Jazz Packages")),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [// horizontally scrollable buttons
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                ElevatedButton(
                  onPressed: () {

                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("Jazz"),
                ),
                const SizedBox(width: 4),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ZongScreen()));
                  },
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
                    "Monthly World Package",
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
                          Text("5000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("1500"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("5000"),
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
                            packageName: 'Monthly World Package',
                            price: 5000,
                            timee: '30 Days',
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
                    "Weekly Freedom",
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
                          Text("1000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("300"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("1000"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("51200"),
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
                      const Text("Rs: 650.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Weekly Freedom',
                            price: 650,
                            timee: '7 Days',
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
                    "Monthly Premium Plus",
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
                          Text("3000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("500"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("3000"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("25600"),
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
                      const Text("Rs: 1,800.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Monthly Premium Plus',
                            price: 1800,
                            timee: '30 Days',
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
                    "Weekly Super",
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
                          Text("6000"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("0"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("6000"),
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
                      const Text("Rs: 2,500.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Weekly Super',
                            price: 2500,
                            timee: '7 Days',
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
