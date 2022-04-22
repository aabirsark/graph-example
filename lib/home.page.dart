import 'package:flutter/material.dart';
import 'package:graphs/graphs/bar.graph.dart';
import 'package:graphs/graphs/line.graph.dart';
import 'package:graphs/graphs/pie.graph.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pie Chart example"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: const [
            AspectRatio(
                aspectRatio: 1.6,
                child: Padding(
                  padding: EdgeInsets.all(8.0),
                  child: PieGraph(),
                )),
            SizedBox(
              height: 30,
            ),
            INfo(
              colr: Colors.indigoAccent,
              label: "Code",
            ),
            SizedBox(
              height: 10,
            ),
            INfo(
              colr: Colors.redAccent,
              label: "Study",
            ),
            SizedBox(
              height: 10,
            ),
            INfo(
              colr: Colors.greenAccent,
              label: "Sleep",
            ),
            SizedBox(
              height: 10,
            ),
            INfo(
              colr: Colors.yellowAccent,
              label: "Insta",
            ),
          ],
        ),
      ),
    );
  }
}

class INfo extends StatelessWidget {
  const INfo({
    Key? key,
    required this.colr,
    required this.label,
  }) : super(key: key);

  final Color colr;
  final String label;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        CircleAvatar(
          backgroundColor: colr,
          radius: 9,
        ),
        const SizedBox(
          width: 10,
        ),
        Text(label)
      ],
    );
  }
}
