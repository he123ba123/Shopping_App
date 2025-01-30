import 'package:app3/home/catogeryCard/home/cubit/cubit/state_state.dart';
import 'package:app3/home/catogeryCard/model/post_data.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class PostCubit extends Cubit<PostState> {
  PostCubit() : super(PostInitial());
  final PostDataCatogary postData = PostDataCatogary();

  getDataPoatCubit(String endpoints) async {
    emit(Postloading());
    var response = await postData.getPostData(endpoints: endpoints);
    print(response);
    emit(PostSuccessState(post: response));
  }
}
