import 'package:flutter/material.dart';
import 'package:packages/zong.dart';

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
      home: UfoneScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UfoneScreen extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => UfoneScreenState();
}

class UfoneScreenState extends State<UfoneScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Ufone Packages")),
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
                  onPressed: () {},
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
                    "6 Month Extreme Offer",
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
                          Text("81920"),
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
                      const Text("Rs: 8499.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: '6 Months Extreme Offer',
                            price: 8499,
                            timee: '6 Months',
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
                    "Weekly Grand Offer",
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
                          Text("7000"),
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
                      const Text("Rs: 530.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Weekly Grand Offer',
                            price: 530,
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
                    "Super Card Gold",
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
                          Text("600"),
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
                          Text("81920"),
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
                      const Text("Rs: 1,799.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Super Card Gold',
                            price: 1799,
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
                    "Social Infinity ",
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
                          Text("300"),
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
                      const Text("Rs: 1,299.00"),
                      ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>CheckMobileScreen(
                            packageName: 'Social Infinity',
                            price: 1299,
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
