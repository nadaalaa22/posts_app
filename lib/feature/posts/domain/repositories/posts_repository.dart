import '../../../../core/error/failures.dart';
import '../entities/post.dart';
import 'package:dartz/dartz.dart';

// imp in repo in data
//     It’s actually what links the data layer with the domain layer,
//     - here where you can check if the device has internet connection or not
//     - it’s an abstract class in domain layer and you should implement it in data layer
//     - we include all use cases in it
abstract class PostsRepository {
  Future<Either<Failure, List<Post>>> getAllPosts();
  //unit replace void هيرجع فاضي
  Future<Either<Failure, Unit>> deletePost(int id);
  Future<Either<Failure, Unit>> updatePost(Post post);
  Future<Either<Failure, Unit>> addPost(Post post);
}