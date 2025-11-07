import 'package:flutter/material.dart';
import 'package:uts/splashscreen2.dart';

class Splashscreen1 extends StatelessWidget {
  const Splashscreen1({super.key});

  @override
  Widget build(BuildContext context) {
    final cs = Theme.of(context).colorScheme;
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 50),
            Container(
              width: 250,
              height: 250,
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: cs.surface,
                image: const DecorationImage(
                  image: AssetImage('images/assets/image1.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Selamat Datang ',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: cs.primary,
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Ini Adalah Aplikasi Bertema Cyan yang dibuat oleh Yasmin',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                fontWeight: FontWeight.normal,
                color: cs.primary,
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cs.primary,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cs.onSurface,
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  width: 10,
                  height: 10,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: cs.onSurface,
                  ),
                ),
              ],
            ),
            SizedBox(height: 50),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 30),
              child: SizedBox(
                height: 48,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const Splashscreen2(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: cs.primary,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50.0,
                      vertical: 15.0,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                    ),
                  ),
                  child: Text(
                    'Continue',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: cs.onPrimary,
                    ),
                  ),
                ),
              ),
            ),

            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
