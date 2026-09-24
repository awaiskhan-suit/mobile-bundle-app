import 'package:flutter/material.dart';
import 'package:packages/ufone.dart';
import 'package:packages/zong.dart';

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
      home: telenorScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class telenorScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => telenorScreenState();
}

class telenorScreenState extends State<telenorScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Telenor Packages")),
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
                  onPressed: () {},
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
                    "Monthly Prime",
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
                          Text("250000"),
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
                          Text("20000"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("30720"),
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
                      const Text("Rs: 1,599.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Monthly Prime',
                            price: 1599,
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
                    "New Weekly Extreme",
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
                          Text("7500"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("350"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("7500"),
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
                      const Text("Rs: 460.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'New Weekly Extreme',
                            price: 460,
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
                    "Monthly Easy Card",
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
                          Text("400"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("2500"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("10240"),
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
                      const Text("Rs: 1,298.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Monthly Easy Card',
                            price: 1298,
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
                    "Weekly Social Pack ",
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
                          Text("100"),
                          SizedBox(height: 2),
                          Text("On_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.add_call),
                          Text("10"),
                          SizedBox(height: 2),
                          Text("Off_net"),
                          Text("minutes"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.sms),
                          Text("0"),
                          SizedBox(height: 2),
                          Text("All-net"),
                          Text("SMS"),
                        ],
                      ),
                      Column(
                        children: const [
                          Icon(Icons.network_cell),
                          Text("5120"),
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
                      const Text("Rs: 150.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Weekly Social Pack',
                            price: 150,
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
        ],
      ),
    );
  }
}
