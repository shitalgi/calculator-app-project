import 'package:flutter/material.dart';

void main() {
  runApp(const CalcuApp());
}

class CalcuApp extends StatelessWidget {
  const CalcuApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Calcu App",
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TextEditingController controllerP = TextEditingController();
  TextEditingController controllerT = TextEditingController();
  TextEditingController controllerR = TextEditingController();
  double interest = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 85, 0, 34),
        elevation: 6,
        centerTitle: true,
        title: const Text(
          "Calculator App",
          style: TextStyle(color: Colors.white, fontSize: 26),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // i = p*t*r /100
            const Text(
              "Principle",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            TextField(
              controller: controllerP,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 12),
            const Text(
              "Time",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            TextField(
              controller: controllerT,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 12),
            const Text(
              "Rate",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
            ),
            TextField(
              controller: controllerR,
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(border: OutlineInputBorder()),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 50, vertical: 8),
                    backgroundColor: Color.fromARGB(255, 101, 54, 0),
                  ),
                  onPressed: () {
                    interest = (double.parse(controllerP.text) *
                            double.parse(controllerT.text) *
                            double.parse(controllerR.text)) /
                        100;
                    setState(() {});
                    print(interest);
                  },
                  child: const Text(
                    'Calculate',
                    style: TextStyle(fontSize: 26, color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              "Interest : $interest",
              style: const TextStyle(fontSize: 22),
            )
          ],
        ),
      ),
    );
  }
}
