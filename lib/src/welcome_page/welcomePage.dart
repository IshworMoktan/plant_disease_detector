import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Welcome'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Choose your language:',
              style: TextStyle(fontSize: 18),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to the Nepali language page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => NepaliHomePage(),
                        ),
                      );
                    },
                    child: const Text('नेपाली 🇳🇵'),
                  ),
                ),
                SizedBox(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                    onPressed: () {
                      // Navigate to the English language page
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => EnglishHomePage(),
                        ),
                      );
                    },
                    child: const Text('English 🇺🇸'),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class NepaliHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('नेपाली'),
      ),
      body: Center(
        child: Text(
          'नेपाली भाषामा स्वागत छ!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}

class EnglishHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('English'),
      ),
      body: Center(
        child: Text(
          'Welcome in English!',
          style: TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
