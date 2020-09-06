import 'package:flutter/material.dart';
import 'package:http_1/http_service.dart';

import 'post_model.dart';

class PostDetail extends StatelessWidget {
  final Post post;
  final HttpService httpService;
  PostDetail({@required this.post,this.httpService});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: ()async{
           await httpService.deletePost(post.id);
           Navigator.of(context).pop();
        },
      ),
      appBar: AppBar(title: Text(post.title),),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Card(
            child: Column(children: [
              ListTile(title: Text("Title"),
              subtitle: Text(post.title),
              ),
              ListTile(title: Text("ID"),
              subtitle: Text("${post.id}"),
              ),
              ListTile(title: Text("Body"),
              subtitle: Text(post.body),
              ),
              ListTile(title: Text("UserID"),
              subtitle: Text("${post.userid}"),
              ),
            ],),

          ),
        ),
      )
    );
  }
}