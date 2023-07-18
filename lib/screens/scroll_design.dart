import 'package:flutter/material.dart';

class ScrollDesignScreen extends StatelessWidget {
  const ScrollDesignScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
              stops: [0.5, 0.5],
              colors: [Color(0XFF5EE8C5), Color(0XFF30BAD6)])),
      child: PageView(
        scrollDirection: Axis.vertical,
        physics: const BouncingScrollPhysics(),
        children: const [
          _PageOne(),
          _PageTwo(),
        ],
      ),
    ));
  }
}

class _PageTwo extends StatelessWidget {
  const _PageTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: const Color(0XFF30BAD6),
      child: Center(
          child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
            backgroundColor: Colors.blueGrey, shape: const StadiumBorder()),
        child: const Text(
          'Bienvenido',
          style: TextStyle(color: Colors.white),
        ),
      )),
    );
  }
}

class _PageOne extends StatelessWidget {
  const _PageOne({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: const [_Background(), _MainContent()],
    );
  }
}

class _MainContent extends StatelessWidget {
  const _MainContent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const textStyle = TextStyle(
        fontSize: 60, fontWeight: FontWeight.bold, color: Colors.white);

    return SafeArea(
      bottom: false,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const Text(
            '11',
            style: textStyle,
          ),
          const Text(
            'Miercoles',
            style: textStyle,
          ),
          Expanded(child: Container()),
          const Icon(
            Icons.keyboard_arrow_down_outlined,
            size: 100,
            color: Colors.white,
          ),
        ],
      ),
    );
  }
}

class _Background extends StatelessWidget {
  const _Background({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.topCenter,
        color: const Color(0XFF30BAD6),
        child: const Image(image: AssetImage('assets/scroll-1.png')));
  }
}
