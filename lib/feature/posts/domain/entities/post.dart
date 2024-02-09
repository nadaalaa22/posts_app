import 'package:equatable/equatable.dart';
// first thing to do from api
//Is basically a mini model , It has only the things I need to work with from the API
class Post extends Equatable {
  final int id;
  final String title;
  final String body;

  const Post({required this.id, required this.title, required this.body});

  @override
  List<Object?> get props => [id, title, body];

}