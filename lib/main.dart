import 'package:flutter/material.dart';
import 'package:packages/data/local/Customer_Model.dart';
import 'package:packages/data/local/db_helper.dart';
import 'login.dart';
import 'splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Flutter Demo",
      theme: ThemeData(primarySwatch: Colors.blue),
      home:  SplashScreen(), // or HomeScreen() if you want to test directly
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<StatefulWidget> createState() => HomeScreenState();
}

class HomeScreenState extends State<HomeScreen> {
  // Controllers
  final emails = TextEditingController();
  final passwords = TextEditingController();
  final names = TextEditingController();
  final phoneNo = TextEditingController();

  // Form key
  final _formKey = GlobalKey<FormState>();

  Future<void> _SavedCustomer() async {
    if (!_formKey.currentState!.validate()) return;

    final customer = Customer(
      name: names.text.trim(),
      email: emails.text.trim(),
      password: passwords.text.trim(),
      phone_no: phoneNo.text.trim(),
    );

    // check if phone/email already exists
    final customers = await DataBaseHelper.instance.getCustomers();
    final exists = customers.any((c) => c.phone_no == customer.phone_no);
    if (exists) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Customer already exists")),
      );
      return;
    }

    await DataBaseHelper.instance.insertCustomer(customer);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Your Account has been created")),
    );
    emails.clear();
    passwords.clear();
    names.clear();
    phoneNo.clear();

    Navigator.push(context,
        MaterialPageRoute(builder: (context)=>CustomerListScreen()));
  }

  @override
  void dispose() {
    names.dispose();
    emails.dispose();
    passwords.dispose();
    phoneNo.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFE0C3FC), Color(0xFFFFD6E8)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              padding: const EdgeInsets.all(24),
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white.withOpacity(0.8),
                borderRadius: BorderRadius.circular(20),
              ),
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    children: [
                      const Text(
                        "Sign Up Page",
                        style: TextStyle(
                          fontSize: 30,
                          color: Colors.green,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 40),
                      // Name
                      TextFormField(
                        controller: names,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Name',
                          prefixIcon: const Icon(Icons.person),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                        ),
                        validator: (value) =>
                        value == null || value.isEmpty ? 'Name required' : null,
                      ),
                      const SizedBox(height: 15),
                      // Email
                      TextFormField(
                        controller: emails,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          prefixIcon: const Icon(Icons.email),
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
                            return 'Email required';
                          }
                          if (!RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w]{2,4}$')
                              .hasMatch(value)) {
                            return 'Enter valid email';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 15),
                      // Password
                      TextFormField(
                        keyboardType: TextInputType.visiblePassword,
                        controller: passwords,
                        obscureText: true,
                        decoration: InputDecoration(
                          hintText: "Enter Your Password",
                          prefixIcon: const Icon(Icons.lock),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(20),
                            borderSide: const BorderSide(color: Colors.green),
                          ),
                        ),
                        validator: (value) => value == null || value.length < 6
                            ? 'Password must be at least 6 chars'
                            : null,
                      ),
                      const SizedBox(height: 15),
                      // Phone
                      TextFormField(
                        controller: phoneNo,
                        keyboardType: TextInputType.phone,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Phone Number',
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
                            // 11 digits for Pakistan
                            return 'Enter valid phone number';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20),
                      ElevatedButton(
                        onPressed: _SavedCustomer,
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.green,
                          foregroundColor: Colors.white,
                        ),
                        child: const Text("Sign Up",
                            style: TextStyle(fontSize: 16, color: Colors.white)),
                      ),
                      const SizedBox(height: 12),
                      TextButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => LoginScreen()),
                          );
                        },
                        child: const Text(
                          "Go to login page",
                          style: TextStyle(fontSize: 16, color: Colors.black45),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
class CustomerListScreen extends StatelessWidget {
  const CustomerListScreen({super.key});

  Future<List<Customer>> _loadCustomer() async {
    return await DataBaseHelper.instance.getCustomers();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Customer List")),
      body: FutureBuilder<List<Customer>>(
        future: _loadCustomer(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return const Center(child: Text("No customer found"));
          } else {
            final customers = snapshot.data!;
            return ListView.builder(
              itemCount: customers.length,
              itemBuilder: (context, index) {
                final customer = customers[index];
                return Card(
                  margin: const EdgeInsets.all(16),
                  child: ListTile(
                    leading: const Icon(Icons.person, color: Colors.red),
                    title: Text(customer.name),
                    subtitle: Text(
                      "Email: ${customer.email}\n"
                          "Password: ${customer.password}\n"
                          "Phone: ${customer.phone_no}",
                    ),
                  ),
                );
              },
            );
          }
        },
      ),
    );
  }
}
