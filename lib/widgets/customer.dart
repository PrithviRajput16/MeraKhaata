import 'package:flutter/material.dart';
import 'package:khaata/data/customer_details.dart';

class Customers extends StatelessWidget {
  const Customers({super.key});

  @override
  Widget build(BuildContext context) {
    final cList = customers;
    return ListView.builder(
        itemCount: cList.length,
        itemBuilder: (context, index) {
          return Card(
            margin: const EdgeInsets.fromLTRB(20, 5, 20, 5),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            "Name: ",
                          ),
                          Text(
                            "${cList[index]['name']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Amount Due: "),
                          Text(
                            "${cList[index]['premium']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          const Text("Plot Number: "),
                          Text(
                            "${cList[index]['p_no']}",
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const Spacer(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "RS ${cList[index]['total_price']}",
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          );
        });
  }
}
