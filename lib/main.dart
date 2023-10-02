import 'package:flutter/material.dart';
import 'package:khaata/screens/customer_screen.dart';
import 'package:khaata/screens/plots_screen.dart';
import 'package:khaata/screens/transactions_screen.dart';
import 'package:khaata/widgets/customer.dart';
import 'package:khaata/widgets/transactions.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final screens = [
    const CustomersScreen(),
    const PlotsScreen(),
    const TransactionsScreen(),
  ];
  var currentIndex = 0;
  Widget screen = const CustomersScreen();
  void onChange(int index) {
    setState(() {
      currentIndex = index;
      screen = screens[index];
    });
  }

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    const double iconSize = 35;
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
            icon: const Icon(
              Icons.account_circle_outlined,
              size: iconSize,
            ),
          ),
          title: const Text("Welcome User"),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.notifications_none_sharp,
                size: iconSize,
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.settings,
                size: iconSize,
              ),
            ),
          ],
        ),
        body: screen,
        bottomNavigationBar: BottomNavigationBar(
          showUnselectedLabels: false,
          onTap: onChange,
          currentIndex: currentIndex,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person,
                size: iconSize,
              ),
              label: 'Customer',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.house_outlined,
                size: iconSize,
              ),
              label: 'Plots',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.swap_vert,
                size: iconSize,
              ),
              label: 'Transaction',
            ),
          ],
        ),
      ),
    );
  }
}
