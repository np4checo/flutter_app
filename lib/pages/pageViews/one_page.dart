import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';

class OnePage extends StatelessWidget {
  const OnePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.red,
          ),
          child: const Center(
            child: Text(
              "Olá, mundo da coluna 1",
              style: TextStyle(
                fontSize: 20,
                color: Colors.white,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Container(
              width: 150,
              height: 150,
              color: Colors.black,
              child: const Center(
                child: Text(
                  "Container 1",
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            Container(
                width: 150,
                height: 150,
                color: Colors.green,
                child: const Center(
                    child: Text(
                  "Container 2",
                  style: TextStyle(color: Colors.white),
                )))
          ],
        )
      ],
    );
  }
}
