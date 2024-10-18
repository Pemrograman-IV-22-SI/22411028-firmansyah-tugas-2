import 'package:flutter/material.dart';
import 'package:tugas_22/page_1.dart';
import 'package:tugas_22/page_2.dart';
import 'package:tugas_22/page_3.dart';
import 'package:tugas_22/page_4.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  static String routes = '/home';
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Text(
                'Belajar Widget Flutter',
                style: TextStyle(color: Colors.white70),
              ),
            ],
          ),
          backgroundColor: Colors.black87,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pushNamed(context, Page1.routes),
                    child: Column(
                      children: [
                        Image.network(
                          'https://cdn.quicksell.co/-My6FfBpPDhAjmjgfvus/products/-N5c__s2HpW_u56phapb.jpg',
                          width: 200,
                          height: 200,
                        ),
                        const Text('sepeda motor'),
                      ],
                    ),
                  ),
                  Column(children: [
                    GestureDetector(
                      onTap: () => Navigator.pushNamed(context, Page2.routes),
                      child: Image.network(
                        'https://img.inews.co.id/media/600/files/inews_new/2020/05/12/Screenshot_20200512_195105_Instagram.jpg',
                        width: 200,
                        height: 200,
                      ),
                    ),
                    const Text('motor sport')
                  ]),
                ],
              ),
              const SizedBox(
                width: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      GestureDetector(
                          onTap: () =>
                              Navigator.pushNamed(context, Page3.routes),
                          child: Image.network(
                            'https://imgcdn.oto.com/large/gallery/exterior/88/2824/kawasaki-klx-150-slant-rear-view-full-image-275678.jpg',
                            width: 200,
                            height: 200,
                          )),
                      const Text('motor Ducati'),
                    ],
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pushNamed(context, Page4.routes),
                        child: Image.network(
                          "https://i.pinimg.com/564x/d1/84/ac/d184ac6dc8a740e366cfb711bff449a6.jpg",
                          width: 200,
                          height: 200,
                        ),
                      ),
                      const Text('Ducati'),
                    ],
                  )
                ],
              )
            ],
          ),
        ));
  }
}
