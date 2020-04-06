import 'package:chooper_learn/data/post_api_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; 
import 'package:chooper_learn/home_page.dart';

void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Provider(
    create: (_) => PostApiService.create(), 
    dispose: (_,PostApiService service) => service.client.dispose(),
    child: MaterialApp(
      title: 'Chopper',
      home: HomePage(),
    ),
    );
  }
}