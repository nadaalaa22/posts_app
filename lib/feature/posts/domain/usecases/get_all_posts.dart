import '../repositories/posts_repository.dart';
import 'package:dartz/dartz.dart';

import '../../../../core/error/failures.dart';
import '../entities/post.dart';
//فكرة ال call اني اخلي ال class يعامل معاملة ال function فاقدر اناديه زي ما بنادي اي function
class GetAllPostsUsecase {
  final PostsRepository repository;

  GetAllPostsUsecase(this.repository);

  Future<Either<Failure, List<Post>>> call() async {
    return await repository.getAllPosts();
  }
}