import 'package:app3/favourite/cubit/favourite_cubit.dart';
import 'package:app3/favourite/cubit/favourite_state.dart';
import 'package:app3/favourite/view/widgets/appBar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => FavoriteCubit()..getAllFavourite(),
      child: Scaffold(
        appBar: appBarFavourite(),
        body: BlocBuilder<FavoriteCubit, FavoriteState>(
          builder: (context, state) {
            if (state is FavoriteGetSucces) {
              return ListView.builder(
                  itemCount: state.list.length,
                  itemBuilder: (BuildContext context, int index) {
                    return Padding(
                      padding: const EdgeInsets.only(top: 1.8, bottom: 1.8),
                      child: Column(
                        children: [
                          Card(
                            child: ListTile(
                              title: Text(state.list[index].name),
                              trailing: IconButton(
                                  onPressed: () {
                                    FavoriteCubit.get(context)
                                        .favoriteService
                                        .delete(
                                            productId: state.list[index].id);
                                  },
                                  icon: const Icon(Icons.delete)),
                              leading: SizedBox(
                                  height: 100,
                                  width: 100,
                                  child:
                                      Image.network(state.list[index].image)),
                              subtitle: Text(
                                  " Price :${state.list[index].price.toString()}\$"),
                            ),
                          ),
                        ],
                      ),
                    );
                  });
            }
            return SizedBox();
          },
        ),
      ),
    );
  }
}
