import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';

import 'package:url_launcher/url_launcher.dart';
import 'package:animated_float_action_button/animated_floating_action_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkTheme = false;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: _isDarkTheme ? ThemeData.dark() : ThemeData.light(),
      home: SettingsPage(
        isDarkTheme: _isDarkTheme,
        onThemeToggle: (value) {
          setState(() {
            _isDarkTheme = value;
          });
        },
      ),
    );
  }
}

class SettingsPage extends StatelessWidget {
  final bool isDarkTheme;
  final ValueChanged<bool> onThemeToggle;
  final GlobalKey<AnimatedFloatingActionButtonState> fabKey = GlobalKey();
  SettingsPage({
    super.key,
    required this.isDarkTheme,
    required this.onThemeToggle,
  });
  Widget add() {
    return FloatActionButtonText(
      onPressed: () {
        fabKey.currentState?.animate();
      },
      icon: Icons.car_rental,
      text: "Rent Cars",
      textLeft: -130,
    );
  }

  Widget image() {
    return FloatActionButtonText(
      onPressed: () {
        fabKey.currentState?.animate();
      },
      icon: Icons.favorite_rounded,
      textLeft: -130,
      text: "Favorites",
    );
  }

  Widget inbox() {
    return FloatActionButtonText(
      onPressed: () {
        fabKey.currentState?.animate();
      },
      icon: Icons.support_agent_sharp,
      textLeft: -130,
      text: "Contact Us",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false, // Remove the back arrow
        title: const Text('Settings'),
      ),
      body: Stack(
        children: [
          ListView(
            padding: const EdgeInsets.all(16.0),
            children: [
              ListTile(
                title: const Text('Contact Us'),
                trailing: const Icon(Icons.contact_mail, color: Colors.blue),
                onTap: () => _showContactUs(context),
              ),
              ListTile(
                title: const Text('Privacy Policy'),
                trailing: const Icon(Icons.privacy_tip, color: Colors.green),
                onTap: () => _showPrivacyPolicy(context),
              ),
              SwitchListTile(
                title: const Text('Notifications'),
                value: true,
                onChanged: (value) {
                  // No function needed for the toggle
                },
              ),
              SwitchListTile(
                title: const Text('Dark Theme'),
                value: isDarkTheme,
                onChanged: onThemeToggle,
              ),
              const Divider(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Store Information',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.purple),
                ),
              ),
              const ListTile(
                title: Text('Store Name: hlx ',
                    style: TextStyle(color: Colors.purple)),
              ),
              const ListTile(
                title: Text('Address: 123 Flutter St, Dart City',
                    style: TextStyle(color: Colors.purple)),
              ),
              const ListTile(
                title: Text('Phone: +96176565298',
                    style: TextStyle(color: Colors.purple)),
              ),

            ],
          ),
        ],
      ),
      floatingActionButton: AnimatedFloatingActionButton(
          key: fabKey,
          fabButtons: <Widget>[
            add(),
            image(),
            inbox(),
          ],
          colorStartAnimation: Colors.black,
          colorEndAnimation: Colors.red,
          animatedIconData: AnimatedIcons.menu_close
          //To principal button
          ),
    );
  }

  void _showContactUs(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Contact Us',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
              ),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () => _launchURL('mailto:<hassanmoussa70181281@gmail.com>?subject=<Welcome to hlx app>&body=<body>'),
                child: const Text(
                  'Email: hassanmoussa70181281@gmail.com',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () => _launchURL('tel:+96176565298'),
                child: const Text(
                  'Phone: (961) 76565298',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 8.0),
              GestureDetector(
                onTap: () => _launchURL(
                    'https://maps.google.com/?q=123 Flutter St, Dart City'),
                child: const Text(
                  'Address: 123 Flutter St, Dart City',
                  style: TextStyle(
                      color: Colors.blue, decoration: TextDecoration.underline),
                ),
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _showPrivacyPolicy(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (context) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Privacy Policy',
                style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green),
              ),
              const SizedBox(height: 8.0),
              const Text(
                'This is the privacy policy of My Awesome Store. We value your privacy and ensure that your data is secure.',
                style: TextStyle(color: Colors.green),
              ),
              const SizedBox(height: 16.0),
              Align(
                alignment: Alignment.centerRight,
                child: ElevatedButton(
                  child: const Text('Close'),
                  onPressed: () => Navigator.of(context).pop(),
                ),
              ),
            ],
          ),
        );
      },
    );
  }

  void _launchURL(String url) async {
    if (await canLaunch(url)) {
      await launch(url);
    } else {
      throw 'Could not launch $url';
    }
  }
}
