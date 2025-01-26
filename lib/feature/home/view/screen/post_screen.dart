import 'package:app3/feature/home/cubit/cubit/state_cubit.dart';
import 'package:app3/feature/home/cubit/cubit/state_state.dart';
import 'package:app3/feature/home/view/Widgets/appar.dart';
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature/home/view/screen/cards_screen.dart';
import 'package:app3/feature/home/view/screen/success_screen.dart';
import 'package:app3/feature/model/post_data.dart';
import 'package:app3/profile_user/view/screen/profile_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class PostScreen extends StatelessWidget {
  PostScreen({super.key, required this.endpoints});
  final PostDataCatogary postData = PostDataCatogary();
  final String endpoints;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => PostCubit()..getDataPoatCubit(endpoints),
      child: Scaffold(
        drawer: const Drawer(
          width: 350,
          child: profileScreen(),
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
          BottomNavigationBarItem(
              label: 'Card', icon: Icon(Icons.shopping_cart)),
          BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
        ]),
        floatingActionButton: FloatingActionButton(
          backgroundColor: AppColors.textColor,
          onPressed: () {},
          child: const Icon(
            Icons.search,
            color: AppColors.buttonColorWhite,
          ),
        ),
        appBar: appBarHome(),
        body: BlocBuilder<PostCubit, PostState>(
          builder: (context, state) {
            if (state is PostSuccessState) {
              return ListView.builder(
                  itemCount: state.post.length,
                  itemBuilder: (context, index) {
                    return SuccessWidgetPost(
                      postModel: state.post[index],
                    );
                  });
            } else if (state is PostFailureState) {
              return Text(state.error);
            } else {
              return const Center(
                  child: SpinKitChasingDots(
                color: AppColors.textColor,
                size: 200,
              ));
            }
          },
        ),
      ),
    );
  }
}
// CircularProgressIndicator()