import 'package:flutter/material.dart';
import 'package:http_1/http_service.dart';
import 'package:http_1/post_detail.dart';
import 'post_model.dart';
import 'post_model.dart';

class PostPage extends StatelessWidget {
  final HttpService httpService = HttpService();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Posts'),
        ),
        body: FutureBuilder(
          future: httpService.getPost(),
          builder: (BuildContext context, AsyncSnapshot<List<Post>> snapshot) {
            if (snapshot.hasData) {
              List<Post> posts = snapshot.data;
              return ListView(
                  children: posts
                      .map((e) => ListTile(
                          title: Text(e.id.toString()),
                          subtitle: Text(e.title),
                          onTap: () =>
                              Navigator.of(context).push(MaterialPageRoute(
                                  builder: (context) => PostDetail(
                                        post: e,
                                      )))))
                      .toList());
            }
            return Center(child: CircularProgressIndicator());
          },
        ));
  }
}
