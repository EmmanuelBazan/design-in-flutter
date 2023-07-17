import 'package:flutter/material.dart';

class BasicDesignScreen extends StatelessWidget {
  const BasicDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: const [
          Image(image: AssetImage('assets/landscape.png')),

          //^ Title seccion
          _TitleSeccion(),

          //^ Buttons seccion
          _ButtonSeccion(),

          //^ Description secction
          _DescriptionSeccion()
        ],
      ),
    );
  }
}

class _DescriptionSeccion extends StatelessWidget {
  const _DescriptionSeccion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      child: const Text(
          textAlign: TextAlign.justify,
          'Adipisicing laborum excepteur in veniam do consequat cillum non. Elit sit fugiat occaecat do esse eiusmod excepteur excepteur excepteur ea eu ea nulla esse. In id consequat eiusmod id aute occaecat. Culpa labore laboris exercitation eu. Laborum duis ea officia ex aliqua velit proident consequat. Deserunt fugiat irure et do nisi in Lorem dolor ea ipsum sit deserunt ea non.'),
    );
  }
}

class _ButtonSeccion extends StatelessWidget {
  const _ButtonSeccion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const [
          _CustomButton(
            icon: Icons.phone,
            title: 'CALL',
          ),
          _CustomButton(
            icon: Icons.location_on_sharp,
            title: 'ROUTE',
          ),
          _CustomButton(
            icon: Icons.share,
            title: 'SHARE',
          ),
        ],
      ),
    );
  }
}

class _CustomButton extends StatelessWidget {
  final IconData icon;
  final String title;

  const _CustomButton({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Column(
          children: [Icon(icon), Text(title)],
        ));
  }
}

class _TitleSeccion extends StatelessWidget {
  const _TitleSeccion({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Text(
                'Oeschinen Lake Campground',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('Kandersteg, Switzerland')
            ],
          ),
          Spacer(),
          const Icon(
            Icons.star,
            color: Colors.orange,
          ),
          const Text('41')
        ],
      ),
    );
  }
}
