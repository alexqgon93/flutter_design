import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Image(image: AssetImage('assets/landscape.jpg')),
          const Title(),
          const ButtonSection(),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: const Text(
              'Nisi voluptate in pariatur minim exercitation est sunt ullamco fugiat dolor. Sunt id veniam et sint adipisicing anim exercitation reprehenderit dolore. Proident dolore sit ad Lorem dolore deserunt adipisicing anim deserunt proident culpa ipsum aliqua. Elit pariatur in in anim reprehenderit nostrud dolor. Consectetur ex ex occaecat dolore sit eiusmod nulla veniam laboris. Eu veniam occaecat incididunt adipisicing pariatur reprehenderit dolore veniam. Exercitation officia Lorem elit exercitation magna minim.',
              textAlign: TextAlign.justify,
            ),
          ),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: const [
          CustomButton(text: 'CALL', icon: Icons.call),
          CustomButton(text: 'ROUTE', icon: Icons.navigation_sharp),
          CustomButton(text: 'SHARE', icon: Icons.share),
        ],
      ),
    );
  }
}

class CustomButton extends StatelessWidget {
  final String text;
  final IconData icon;
  const CustomButton({
    super.key,
    required this.text,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Icon(icon, color: Colors.blue, size: 30),
      const SizedBox(height: 10),
      Text(text, style: const TextStyle(color: Colors.blue))
    ]);
  }
}

class Title extends StatelessWidget {
  const Title({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 30),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Kandersteg, Switzerland',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          const Icon(Icons.star, color: Colors.red),
          const Text('41')
        ],
      ),
    );
  }
}
