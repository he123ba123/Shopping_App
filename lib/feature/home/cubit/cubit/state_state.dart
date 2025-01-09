import 'package:app3/feature/model/post_model.dart';

sealed class PostState {}

final class PostInitial extends PostState {}

final class Postloading extends PostState {
}

final class PostSuccessState extends PostState {
  List<PostModelCatogary> post;
  PostSuccessState({required this.post});
}

final class PostFailureState extends PostState {
  final String error;
  PostFailureState({required this.error});
}
