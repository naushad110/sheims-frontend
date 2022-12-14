import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          // ignore: prefer_const_constructors
          title: Text(
            'Salary Management System',
            // ignore: prefer_const_constructors
            style: TextStyle(
              fontSize: 21,
              fontWeight: FontWeight.bold,
            ),
          ),
          centerTitle: true,
          backgroundColor: Color.fromARGB(255, 255, 93, 82),
        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const SalaryItems(),
              // ignore: prefer_const_constructors
              SizedBox(
                height: 20,
              ),
              const Templets(),
              const SalarySlip(),
            ],
          ),
        ),
      ),
    );
  }
}

//
//  Salary Items Widget
//
//
class SalaryItems extends StatelessWidget {
  const SalaryItems({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(border: Border.all(width: 1)),
      child: Center(
        child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
          Container(
              // margin: const EdgeInsets.only(left: 200, bottom: 20, top: 10),
              child: const Text(
            'Salary Items',
            style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
          )),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(6),
                child: const Center(
                    child: Text(
                  'ID:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter ID Number"),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                width: 20,
              ),
              Container(
                margin: const EdgeInsets.all(6),
                child: const Center(
                    child: Text(
                  'BPS:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Enter BPS"),
                ),
              ),
            ],
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: const EdgeInsets.all(6),
                child: const Center(
                    child: Text(
                  'department:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: "Enter Your Department"),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                width: 20,
              ),
              Container(
                margin: const EdgeInsets.all(6),
                child: const Center(
                    child: Text(
                  'Job-Type:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Enter Job-Type"),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                margin: EdgeInsets.all(6),
                child: const Center(
                    child: Text(
                  'Job-Nature:',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Job-Nature"),
                ),
              ),
              // ignore: prefer_const_constructors
              SizedBox(
                width: 20,
              ),
              Container(
                margin: const EdgeInsets.all(6),
                child: const Center(
                    child: Text(
                  'Status',
                  style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                )),
              ),
              Container(
                margin: const EdgeInsets.all(6),
                height: 40,
                width: 200,
                decoration:
                    BoxDecoration(borderRadius: BorderRadius.circular(17)),
                child: const TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(), hintText: "Enter status"),
                ),
              ),
            ],
          ),
          Container(
            width: 150,
            height: 30,
            margin: const EdgeInsets.only(bottom: 5),
            child: ElevatedButton(
                onPressed: () {},
                style: const ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll(
                      Color.fromARGB(255, 250, 94, 83)),
                ),
                // ignore: prefer_const_constructors
                child: Center(
                  child: const Text(
                    'Submit Items',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                )),
          )
        ]),
      ),
    );
  }
}

//
// Templeta
//
//
class Templets extends StatelessWidget {
  const Templets({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(border: Border.all(width: 1)),
      padding: const EdgeInsets.only(bottom: 30),
      child: Column(children: [
        Container(
          padding: const EdgeInsets.all(20),
          child: const Text('Salary Managment Template',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 26.0,
              )),
        ),
        Table(
          border: TableBorder.all(
            color: Colors.black,
          ),
          columnWidths: const {
            0: FlexColumnWidth(1),
            1: FlexColumnWidth(2),
            2: FlexColumnWidth(4),
            3: FlexColumnWidth(3),
            4: FlexColumnWidth(4),
            5: FlexColumnWidth(2.5),
            6: FlexColumnWidth(3),
          },
          children: const [
            TableRow(children: [
              Center(
                child: Text(
                  "ID",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "BPS",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Departments",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Job Type",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Job Nature",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Status",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: Text(
                  "Salary",
                  style: TextStyle(fontSize: 15.0, fontWeight: FontWeight.bold),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: Text(
                  "101",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "BPS-01",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Adminsrtaration",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "admin",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "dailly based",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Active",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "15000",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: Text(
                  "102",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "BPS-02",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Software Enigineering",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Teaching",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Full Time",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Active",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "30000",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: Text(
                  "103",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "BPS-03",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Data Sceince",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Clrek",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "daily based",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Active",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "20000",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ]),
            TableRow(children: [
              Center(
                child: Text(
                  "104",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "BPS-04",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Cyber Secuirty",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Teaching",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Contrat Based",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "Active",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Center(
                child: Text(
                  "18000",
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
            ]),
          ],
        ),
      ]),
    );
  }
}

//
//  Salary slip
//
//

class SalarySlip extends StatelessWidget {
  const SalarySlip({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(top: 80),
        padding: EdgeInsets.all(7),
        decoration:
            BoxDecoration(border: Border.all(color: Colors.black, width: 1)),
        child: Column(children: [
          Container(
            margin: const EdgeInsets.all(5),
            child: const Text('Salary Slip',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20.0,
                )),
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "ID:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "101",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                width: 180,
              ),
              const Text(
                "Department:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Administration",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Name:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Ali",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                width: 160,
              ),
              const Text(
                "Bank Name:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "HBL",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Account No:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "111122233344",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                width: 40,
              ),
              const Text(
                "Address:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "Kurram Parachinar",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Amount",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "15000",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                width: 130,
              ),
              const Text(
                "Transaction Id",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "23466889",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                'Month:',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                'Feb',
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
              const SizedBox(
                width: 150,
              ),
              const Text(
                "Date of transaction:",
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              const Text(
                "07-March-2022",
                style: TextStyle(
                  fontSize: 15.0,
                ),
              ),
            ],
          ),
        ]));
  }
}
