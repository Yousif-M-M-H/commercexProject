import 'package:flutter/material.dart';
import '../../controller/splash_controller/splash_controller_file.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SplashController controller = SplashController(context);
    controller.initialize(); 

    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.network(
              "https://th.bing.com/th/id/R.45d155a27e298f98e275ea0b2a31350d?rik=CdabfVAPKp3GCQ&pid=ImgRaw&r=0",
              width: 90,
              height: 90,
            ),
          ),
          const SizedBox(height: 10),
          const Text(
            "Ecommerce UI theme",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: Colors.deepPurple,
            ),
          ),
        ],
      ),
    );
  }
}
