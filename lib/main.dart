import 'package:flutter/material.dart';
import 'package:khaata/widgets/customer.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final screens = [const Customers()]; 
  var currentIndex = 0;
  void onChange(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.account_circle_outlined),
          ),
          title: const Text("Welcome User"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.notifications_none_sharp),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.settings),
            ),
          ],
        ),
        body: const Customers(),
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          onTap: onChange,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Customer',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.house_outlined),
              label: 'Plots',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.swap_vert),
              label: 'Transaction',
            ),
          ],
        ),
      ),
    );
  }
}
