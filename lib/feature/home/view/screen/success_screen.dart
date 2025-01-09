import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature/home/view/screen/details.dart';
import 'package:app3/feature/model/post_model.dart';
import 'package:flutter/material.dart';

class SuccessWidgetPost extends StatelessWidget {
  const SuccessWidgetPost({
    super.key,
    required this.postModel,
  });
  final PostModelCatogary postModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Card(
            //margin: const EdgeInsets.all(9.0),
            child: ListTile(
              leading: Image(
                image: NetworkImage(postModel.image),
                width: 100,
                height: 400,
                fit: BoxFit.cover,
              ),
              title: Text(postModel.title,
                  style: const TextStyle(
                      fontWeight: FontWeight.w600,
                      color: Color.fromARGB(255, 45, 17, 57))),
              subtitle: Row(
                children: [
                  Text(
                    ' Price :${postModel.price.toString()} \$ ',
                    style: const TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                  const SizedBox(
                    width: 50,
                  ),
                  IconButton(
                      onPressed: () {},
                      icon:
                          const Icon(Icons.star, color: AppColors.buttonColor)),
                  Text(
                    "${postModel.rating.rate}",
                    style: const TextStyle(
                        color: AppColors.textColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  ),
                ],
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => details(postModel: postModel)),
                );
              },
            ),
          ),
        ),
      ],
    );
  }
}
