import 'package:flutter/material.dart';
import 'package:tugas_22/home.dart';

class Page3 extends StatelessWidget {
  const Page3({super.key});
  static String routes = "/page_3";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          children: [
            Text(
              'Page 3',
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
                  "https://imgcdn.oto.com/large/gallery/exterior/88/2824/kawasaki-klx-150-slant-rear-view-full-image-275678.jpg",
                  width: 300,
                  height: 300,
                ),
                const Text('motor klx', style: TextStyle(fontSize: 20),),
              ],
            ),
          )
        ])
      ])),
    );
  }
}