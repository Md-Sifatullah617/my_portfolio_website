import 'package:flutter/material.dart';

class MyInfo extends StatelessWidget {
  const MyInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.23,
      child: Container(
        color: const Color(0xff242430),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            const Spacer(flex: 2,),
            const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage("/images/pp.jpg"),
            ),
            const Spacer(),
            Text('Md. Sifatullah', style: Theme.of(context).textTheme.titleSmall,),
            const Text('Flutter Developer & Founder of\nesuIT', textAlign: TextAlign.center, style: TextStyle(fontWeight: FontWeight.w200, height: 1.5),
            ),
            const Spacer(flex: 2,),
          ],
        ),
      ),
    );
  }
}