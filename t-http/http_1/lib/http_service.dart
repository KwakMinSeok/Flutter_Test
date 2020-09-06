import 'dart:convert';

import 'package:http/http.dart';

import 'post_model.dart';
class HttpService {
  final String posturl= "https://jsonplaceholder.typicode.com/posts";
  Future <void> deletePost(int id) async{
    Response res = await delete("$posturl/$id");
    if(res.statusCode==200){
      print('deleted');
    }
  }
  Future<List<Post>> getPost() async{
    Response response = await get(posturl);
    if(response.statusCode==200){
      List<dynamic> listbody = jsonDecode(response.body);
      List<Post> posts= listbody.map((dynamic item)=>Post.fromJson(item)).toList();
    return posts;
    
    }
    else{
      throw 'cant get the post';
    }
  }
}