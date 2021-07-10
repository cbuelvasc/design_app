import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image(image: AssetImage('assets/landscape.jpg')),
          Title(),
          ButtonSection(),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            child: Text(
              'Ex eu id Lorem veniam. Elit officia ex incididunt magna eiusmod sit commodo dolor officia fugiat ex minim est et. Ad excepteur mollit ad sunt. Ex eu eiusmod minim pariatur laborum exercitation laborum. Sit anim consectetur incididunt et ad est sit sunt eiusmod nisi exercitation sit minim nulla. Aute ullamco minim do dolor. Cupidatat reprehenderit elit anim do mollit cupidatat nulla commodo enim est enim. Cillum laboris aliqua minim id sunt minim est in ex nostrud ipsum ullamco. Ullamco amet nisi dolor cupidatat culpa laboris veniam deserunt eiusmod in ullamco. Velit ad incididunt mollit do proident culpa anim do cupidatat esse sunt adipisicing.',
              textAlign: TextAlign.justify,
              softWrap: true,
              style: TextStyle(fontSize: 14),
            ),
          )
        ],
      ),
    );
  }
}

class Title extends StatelessWidget {
  const Title({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Dolor quis mollit enim mollit',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Dolor quis mollit',
                style: TextStyle(color: Colors.black45),
              ),
            ],
          ),
          Expanded(child: Container()),
          Icon(Icons.star, color: Colors.red),
          Text('41'),
        ],
      ),
    );
  }
}

class ButtonSection extends StatelessWidget {
  const ButtonSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          CustonButton(icon: Icons.call, text: 'Call'),
          CustonButton(icon: Icons.map_sharp, text: 'Route'),
          CustonButton(icon: Icons.share, text: 'Share'),
        ],
      ),
    );
  }
}

class CustonButton extends StatelessWidget {
  final IconData icon;
  final String text;

  const CustonButton({Key? key, required this.icon, required this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Icon(this.icon, color: Colors.blue, size: 30),
        Text(this.text, style: TextStyle(color: Colors.blue)),
      ],
    );
  }
}
