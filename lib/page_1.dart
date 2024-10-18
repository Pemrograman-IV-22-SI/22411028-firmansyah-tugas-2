import 'package:flutter/material.dart';
import 'package:tugas_22/home.dart';

class Page1 extends StatelessWidget {
  const Page1({super.key});
  static String routes = "/page_1";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Page 1',
              style: TextStyle(color: Colors.white70),
            ),
          ],
        ),
        backgroundColor: Colors.black87,
      ),
      body: Center(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          GestureDetector(
            onTap: () => Navigator.pushNamed(context, MyHomePage.routes),
            child: Column(
              children: [
                Image.network(
                  'https://cdn.quicksell.co/-My6FfBpPDhAjmjgfvus/products/-N5c__s2HpW_u56phapb.jpg',
                  width: 200,
                  height: 200,
                ),
                const Text(
                  'motor ',
                  style: TextStyle(fontSize: 20),
                ),
              ],
            ),
          )
        ])
      ])),
    );
  }
}
