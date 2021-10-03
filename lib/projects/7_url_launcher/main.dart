import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class UrlLauncherPlugin extends StatefulWidget {
  const UrlLauncherPlugin({Key? key}) : super(key: key);

  @override
  _UrlLauncherPluginState createState() => _UrlLauncherPluginState();
}

class _UrlLauncherPluginState extends State<UrlLauncherPlugin> {
  final String google = 'https://www.google.com/';

  String url = '';
  final String youtube = 'https://youtube.com/';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Url Launcher")),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.start, children: [
          const Text('Go to URL use async await'),
          TextButton(
              child: const Text(
                'Google',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () async => await launch(google)),
          const SizedBox(height: 40),
          const Text(
              'Go to URL use  async await canLaunch try catch url = \' \' '),
          TextButton(
            child: const Text(
              'Google',
              style: TextStyle(fontSize: 20),
            ),
            onPressed: () async {
              try {
                await canLaunch(url)
                    ? await launch(url)
                    : throw 'Could not launch $google';
              } catch (err) {
                //Text('');
                // print('Caught error: $err');
                setState(() {
                  url = 'notFound';
                });
              }
            },
          ),
          Text(url),
          const SizedBox(height: 40),
          const Text('Open YouTube in own App'),
          TextButton(
              child: const Text(
                'YouTube',
                style: TextStyle(fontSize: 20),
              ),
              onPressed: () async => await launch(youtube,
                  forceWebView: true, enableJavaScript: true)),
        ]),
      ),
    );
  }
}




// onPressed: () async => await canLaunch(google)
//                 ? await launch(google)
//                 : throw 'Could not launch $google'),
