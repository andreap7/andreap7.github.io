// ignore_for_file: inference_failure_on_instance_creation

import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:portfolio/projects/projects.dart';
import 'package:rive/rive.dart';

class PorfolioPage extends StatelessWidget {
  const PorfolioPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: const _DrawerIcon(),
      ),
      drawer: const _Drawer(),
      body: const _Content(),
    );
  }
}

class _Content extends StatelessWidget {
  const _Content();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      children: [
        const Gap(40),
        Center(
          child: Stack(
            alignment: Alignment.bottomRight,
            children: [
              Stack(
                alignment: Alignment.center,
                children: [
                  CircleAvatar(
                    backgroundColor: Colors.purple.shade900,
                    radius: 122,
                  ),
                  const CircleAvatar(
                    backgroundImage: NetworkImage(
                      'https://media.licdn.com/dms/image/C4E03AQHHNNcc_8EDEA/profile-displayphoto-shrink_800_800/0/1638125876837?e=1682553600&v=beta&t=Ujqop7TNVOfLozT5R9jh-Wyj4d6dinZYNflF88CXAqo',
                      scale: 20,
                    ),
                    radius: 120,
                  ),
                ],
              ),
              Positioned(
                right: 20,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CircleAvatar(
                      radius: 27,
                      backgroundColor: Colors.purple.shade900,
                    ),
                    const CircleAvatar(
                      radius: 25,
                      backgroundColor: Colors.white,
                      child: Text('👋', style: TextStyle(fontSize: 30)),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        const Gap(40),
        const Text(
          'Hey there, my name is Andrea.',
          style: TextStyle(fontSize: 24),
        ),
        const Gap(40),
        const Text(
          'I am a Flutter developer with a passion for creating beautiful and user-friendly apps.',
          style: TextStyle(fontSize: 24),
        ),
        const Gap(20),
        const Text(
          'I also enjoy exploring UX/UI design to ensure my apps are not only functional but also visually appealing.',
          style: TextStyle(fontSize: 24),
        ),
        const Gap(40),
        const Text(
          'This website is still in the process of being built, so be sure to check in once in a while.',
          style: TextStyle(fontSize: 24),
        ),
        const Gap(40),
        const Text(
          'Thank you for your patience.',
          style: TextStyle(fontSize: 24),
        ),
      ],
    );
  }
}

class _Drawer extends StatelessWidget {
  const _Drawer();

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Gap(100),
          ListTile(
            title: const Text('Home', style: TextStyle(fontSize: 26)),
            onTap: () => Navigator.of(context).pop(),
          ),
          ListTile(
            title: const Text('Projects', style: TextStyle(fontSize: 26)),
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (_) => const ProjectsPage()),
            ),
          ),
          ListTile(
            title: const Text('Contact me!', style: TextStyle(fontSize: 26)),
            onTap: () {},
          ),
          const Spacer(),
          const Flexible(
            child: RiveAnimation.asset(
              'assets/woman_in_field.riv',
              fit: BoxFit.fitHeight,
            ),
          ),
        ],
      ),
    );
  }
}

class _DrawerIcon extends StatelessWidget {
  const _DrawerIcon();

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: const Icon(Icons.menu),
      onPressed: () => Scaffold.of(context).openDrawer(),
    );
  }
}
