import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class ProjectsPage extends StatelessWidget {
  const ProjectsPage({super.key});

  @override
  Widget build(BuildContext context) {
    const imgList = <String>[
      'assets/apetito.png',
      'assets/bookshop_design.png',
      'assets/randomize_design.png',
      'assets/timely_design.png',
      'assets/weather_design.png',
    ];
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        title: Row(
          children: const [
            Text('Projects'),
          ],
        ),
      ),
      body: ListView(
        children: [
          const Gap(50),
          const ListTile(
            title: Text(
              'Beginner projects',
              style: TextStyle(fontSize: 26),
            ),
          ),
          const Gap(20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('These are some projects I made over the time while I was learning how Flutter works. Some were finished, others were not.'),
          ),
          const Gap(20),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 15),
            child: Text('Better description for all the projects will be added soon, as well as my more recent ones.'),
          ),
          const Gap(20),
          SizedBox(
            height: 500,
            child: CarouselSlider(
              options: CarouselOptions(
                autoPlay: true,
              ),
              items: imgList
                  .map(
                    (item) => Center(
                      child: Image.asset(
                        item,
                        fit: BoxFit.fitHeight,
                        width: 500,
                      ),
                    ),
                  )
                  .toList(),
            ),
          ),
        ],
      ),
    );
  }
}
