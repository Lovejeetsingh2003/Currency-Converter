import 'package:flutter/material.dart';

class HomeClass extends StatefulWidget {
  const HomeClass({super.key});

  @override
  State<HomeClass> createState() => _HomeClassState();
}

class _HomeClassState extends State<HomeClass> {
  var dollar = 0.0;
  var pound = 0.0;
  var euro = 0.0;
  var yen = 0.0;
  var franc = 0.0;

  final TextEditingController textEditingController = TextEditingController();

  void convert() {
    dollar = double.parse(textEditingController.text) * 0.012;
    euro = double.parse(textEditingController.text) * 0.011;
    pound = double.parse(textEditingController.text) * 0.0094;
    yen = double.parse(textEditingController.text) * 1.88;
    franc = double.parse(textEditingController.text) * 0.011;
    setState(() {});
  }

  @override
  void dispose() {
    textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Currency Converter",
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Currency Converter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "In Dollar ",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  const Icon(Icons.attach_money),
                  Text(
                    "$dollar",
                    style: const TextStyle(fontSize: 15),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("In Pounds ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Icon(Icons.currency_pound),
                  Text(
                    "$pound",
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("In Euro ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Icon(Icons.euro),
                  Text(
                    "$euro",
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("In Japnese Yen ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Icon(Icons.currency_yen),
                  Text(
                    "$yen",
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("In Swis Franc ",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  const Icon(Icons.currency_franc),
                  Text(
                    "$franc",
                    style: const TextStyle(fontSize: 15),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: textEditingController,
                style: const TextStyle(color: Colors.black),
                decoration: InputDecoration(
                  hintText: 'Please enter the amount in INR.',
                  hintStyle: const TextStyle(
                    color: Colors.black,
                  ),
                  prefixIcon: const Icon(Icons.currency_rupee),
                  prefixIconColor: Colors.black,
                  suffix: const Text(
                    "Rupees.",
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  fillColor: Colors.white,
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                keyboardType:
                    const TextInputType.numberWithOptions(decimal: true),
              ),
            ),
            const SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: convert,
                style: TextButton.styleFrom(
                  backgroundColor: Colors.black,
                  foregroundColor: Colors.white,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
                child: const Text('Convert'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
