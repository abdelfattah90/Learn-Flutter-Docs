import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:transparent_image/transparent_image.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../widgets.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({Key? key}) : super(key: key);
  final urlImage =
      'https://images.unsplash.com/photo-1630700246857-3113649eb3b6?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=1000&q=80';

  final urlImage2 =
      'https://images.unsplash.com/photo-1627490764473-2b58242bbc2f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=800&q=80';

  final unsplash = 'https://unsplash.com';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarWidget('Image'),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Transparent Image Package'),
              FadeInImage.memoryNetwork(
                image: urlImage,
                placeholder: kTransparentImage,
                fadeInCurve: Curves.easeIn,
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
              const Text('Cached Images'),
              CachedNetworkImage(
                placeholder: (context, url) =>
                    const CircularProgressIndicator(),
                imageUrl: urlImage2,
              ),
              dividerLine(),
              const Text('Asset Image'),
              const Image(
                image: AssetImage('assets/flutter_ui/laravel.png'),
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
              dividerLine(),
              const Text('width 200'),
              const Image(
                width: 200,
                height: 100,
                image: AssetImage('assets/flutter_ui/laravel.png'),
                fit: BoxFit.cover,
              ),
              dividerLine(),
              const Text('Network Image'),
              Image(
                image: NetworkImage(urlImage),
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
              ),
              dividerLine(),
              const Text('Ink Image'),
              Ink.image(
                image: NetworkImage(urlImage),
                width: double.infinity,
                height: 100,
                fit: BoxFit.cover,
                child: InkWell(
                  child: const Text('unsplash.com',
                      style: TextStyle(color: Colors.white)),
                  onTap: () async => await launch(unsplash),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
// dividerLine(),
//             const Text('Stack CircleAvatar Image'),
//             Stack(
//               alignment: const Alignment(0.6, 0.6),
//               children: [
//                 const CircleAvatar(
//                   backgroundImage: AssetImage('assets/flutter_ui/laravel.png'),
//                   radius: 100,
//                 ),
//                 Container(
//                   padding: const EdgeInsets.all(5.0),
//                   decoration: const BoxDecoration(
//                       color: Colors.black45,
//                       borderRadius: BorderRadius.all(Radius.circular(10))),
//                   child: const Text(
//                     'Ahmed',
//                     style: TextStyle(
//                       fontSize: 20,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.white,
//                     ),
//                   ),
//                 ),
//               ],
//             ),