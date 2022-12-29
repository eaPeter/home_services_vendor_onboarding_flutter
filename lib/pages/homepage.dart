import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({
    super.key,
  });

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              const SizedBox(height: 24),
              GestureDetector(
                onTap: () {},
                child: Icon(Icons.adaptive.arrow_back),
              ),
              const SizedBox(height: 18),
              Row(children: [
                Container(
                  height: 48,
                  width: 48,
                  decoration: const BoxDecoration(
                    color: Colors.black, shape: BoxShape.circle,
                    // image: DecorationImage(image: AssetImage('assetName'),),
                  ),
                ),
                const SizedBox(width: 14),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Good Morning 👋'),
                    Text('Redeemer Adjei'),
                  ],
                )
              ]),
              const SizedBox(height: 26),
              Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    height: 150,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(30),
                      // image: DecorationImage(image: AssetImage('assetName'),),
                    ),
                  ),
                  const SizedBox(height: 26),
                  Image.asset(
                    'assets/images/Electrician.png',
                    height: 280,
                  ),
                  const SizedBox(height: 24),
                  Text('Are you a professional?'),
                  Text('Are you looking at generating extra income?'),
                  const SizedBox(height: 24),
                  InkWell(
                    onTap: () =>
                        Navigator.pushNamed(context, '/create_artisan_page1'),
                    child: Container(
                      height: 50,
                      width: double.infinity,
                      alignment: Alignment.center,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                        color: Colors.red,
                      ),
                      child: Text(
                        'Create artisan profile',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }
}
