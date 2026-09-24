import 'package:flutter/material.dart';
import 'package:packages/data/local/db_helper.dart';
import 'package:packages/data/local/Customer_Model.dart';

import 'PackageSuccessScreen.dart';

class CheckMobileScreen extends StatefulWidget {
  final String packageName;
  final int price;
  final String timee;

  const CheckMobileScreen({
    super.key,
    required this.packageName,
    required this.price,
    required this.timee
});

  @override
  State<CheckMobileScreen> createState() => _CheckMobileScreenState();
}

class _CheckMobileScreenState extends State<CheckMobileScreen> {
  final _phoneController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  void dispose() {
    _phoneController.dispose();
    super.dispose();
  }

  Future<void> _checkNumber() async {
    if (!_formKey.currentState!.validate()) return;

    final input = _phoneController.text.trim();
    final customers = await DataBaseHelper.instance.getCustomers();

    // Correct .any usage:
    final match = customers.any((c) => c.phone_no == input);


    if (match) {
      Navigator.push(context, MaterialPageRoute(builder: (context)=>PackageSuccessScreen(
        packageName: widget.packageName,
        totalPrice: widget.price,
        timee: widget.timee,
      ),
      ));
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Valid Mobile Number")),
      );

    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Invalid Mobile Number")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Check Mobile Number")),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: _phoneController,
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                  hintText: 'Enter Mobile Number',
                  prefixIcon: const Icon(Icons.phone),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.green),
                  ),
                ),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Phone number required';
                  }
                  if (!RegExp(r'^\d{11}$').hasMatch(value)) {
                    return 'Enter valid 11-digit phone number';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _checkNumber,
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.green,
                  foregroundColor: Colors.white,
                ),
                child: const Text("Confirm Number"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

