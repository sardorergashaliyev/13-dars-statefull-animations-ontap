import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  bool number = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(),
      body: Stack(
        children: [
          AnimatedPositioned(
            // left: number ? 0 : MediaQuery.of(context).size.width,
            right: number ? 0 : MediaQuery.of(context).size.width - 250,
            top: number ? 0 : MediaQuery.of(context).size.height - 150,
            duration: const Duration(seconds: 5),
            child: Container(
              width: 200,
              height: 200,
              decoration: const BoxDecoration(
                  color: Colors.transparent, shape: BoxShape.circle),
              child: const Image(
                image: AssetImage('assets/quyon.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: GestureDetector(
        onTap: () {
          number = !number;
          setState(() {});
        },
        child: Container(
          height: 64,
          width: 64,
          decoration:
              const BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
          child: const Icon(Icons.add),
        ),
      ),
    );
  }
}
