import 'package:app3/home/catogeryCard/home/view/screen/details.dart';
import 'package:app3/home/catogeryCard/model/post_model.dart';
import 'package:flutter/material.dart';

class SuccessWidgetPost extends StatelessWidget {
  const SuccessWidgetPost({
    super.key,
    required this.postModel,
  });
  final PostModelCatogary postModel;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => details(postModel: postModel),
          ),
        );
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          border: Border.all(color: Colors.grey.withOpacity(0.2)),
          color: Colors.white,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: SizedBox(
                width: 120,
                height: 150,
                child: Image.network(
                  postModel.image,
                  width: double.infinity,
                  fit: BoxFit.fill,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8.0),
              child: Text(
                postModel.title,
                style: const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: Color.fromARGB(255, 45, 17, 57)),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'Price: ${postModel.price} \$',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                        color: Colors.red),
                  ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.star,
                    color: Colors.yellow,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: Text(
                    "${postModel.rating.rate}",
                    style: const TextStyle(
                        fontWeight: FontWeight.bold, fontSize: 14),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





 // Center(
        //   child: Card(
        //     //margin: const EdgeInsets.all(9.0),
        //     child: ListTile(
        //       leading: Image(
        //         image: NetworkImage(postModel.image),
        //         width: 100,
        //         height: 400,
        //         fit: BoxFit.cover,
        //       ),
        //       title: Text(postModel.title,
        //           style: const TextStyle(
        //               fontWeight: FontWeight.w600,
        //               color: Color.fromARGB(255, 45, 17, 57))),
        //       subtitle: Row(
        //         children: [
        //           Text(
        //             ' Price :${postModel.price.toString()} \$ ',
        //             style: const TextStyle(
        //                 color: AppColors.textColor,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 16),
        //           ),
        //           const SizedBox(
        //             width: 50,
        //           ),
        //           IconButton(
        //               onPressed: () {},
        //               icon:
        //                   const Icon(Icons.star, color: AppColors.buttonColor)),
        //           Text(
        //             "${postModel.rating.rate}",
        //             style: const TextStyle(
        //                 color: AppColors.textColor,
        //                 fontWeight: FontWeight.bold,
        //                 fontSize: 16),
        //           ),
        //         ],
        //       ),
        //       onTap: () {
        //         Navigator.push(
        //           context,
        //           MaterialPageRoute(
        //               builder: (context) => details(postModel: postModel)),
        //         );
        //       },
        //     ),
        //   ),
        // ),