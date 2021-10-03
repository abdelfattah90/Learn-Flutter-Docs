import 'package:flutter/material.dart';

import '../../widgets.dart';

class RoundedRectanglePage extends StatelessWidget {
  const RoundedRectanglePage({Key? key}) : super(key: key);
  final urlImage =
      'https://images.unsplash.com/photo-1630700246857-3113649eb3b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80';

  final urlImage2 =
      'https://images.unsplash.com/photo-1627490764473-2b58242bbc2f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Rounded Rectangle Opacity'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('ClipRRect height, width'),
              ClipRRect(
                borderRadius: BorderRadius.circular(15.0),
                child: Image(
                  image: NetworkImage(urlImage),
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              dividerLine(),
              const Text('CircleAvatar Image'),
              CircleAvatar(
                  radius: 50, backgroundImage: NetworkImage(urlImage2)),
              dividerLine(),
              const Text('CircleAvatar Text'),
              const CircleAvatar(
                backgroundColor: Colors.green,
                child: Text('AH', style: TextStyle(color: Colors.white)),
              ),
              dividerLine(),
              const Text('ClipOval height, width'),
              ClipOval(
                child: Image.network(urlImage,
                    height: 100, width: 100, fit: BoxFit.cover),
              ),
              dividerLine(),
              const Text('Container BoxDecoration'),
              Container(
                width: 100.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover, image: NetworkImage(urlImage2)),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.redAccent,
                ),
              ),
              dividerLine(),
              const Text('Container BoxDecoration Opacity'),
              Container(
                width: 100.0,
                height: 150.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.5), BlendMode.dstATop),
                      image: NetworkImage(urlImage2)),
                  borderRadius: const BorderRadius.all(Radius.circular(8.0)),
                  color: Colors.black,
                ),
              ),
              dividerLine(),
              const Text('Container with Opacity'),
              Opacity(
                opacity: 0.6,
                child: Container(
                  width: 100.0,
                  height: 150.0,
                  color: Colors.blue,
                  alignment: Alignment.center,
                  child: const Text('Opacity = 0.6'),
                ),
              ),
              dividerLine(),
              const Text('LinearGradient'),
              Opacity(
                opacity: 0.7,
                child: Container(
                  decoration: const BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          colors: [Colors.red, Colors.blue])),
                  alignment: Alignment.center,
                  child: const Text(
                    'LinearGradient',
                    style: TextStyle(fontSize: 40, color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
