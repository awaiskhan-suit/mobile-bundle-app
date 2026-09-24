import 'package:flutter/material.dart';
import 'package:packages/jazz.dart';

class PackageSuccessScreen  extends StatelessWidget {
  final String packageName;
  final int totalPrice;
  final String timee;

  const PackageSuccessScreen({
    super.key,
    required this.packageName,
    required this.totalPrice,
    required this.timee,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Card(
          elevation: 4,
          margin: const EdgeInsets.all(16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(21),
          ),
          child: Padding(
            padding: const EdgeInsets.all(24),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Icon(Icons.check_circle,
                    color: Colors.green, size: 80),
                const SizedBox(height: 30),
                const Text(
                  "Package Successful",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 30),
                // 👇 not const because variables are used
                Text(
                  "You got $packageName package for $timee and it costs Rs: $totalPrice",
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 15),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => JazzScreen()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text("OK"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
