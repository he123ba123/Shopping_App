// import 'package:app3/feature/home/view/Widgets/colors.dart';
// import 'package:app3/feature/model/post_model.dart';
// import 'package:flutter/material.dart';

// // ignore: camel_case_types
// class details extends StatelessWidget {
//   const details({
//     super.key,
//     required this.postModel,
//   });
//   final PostModelCatogary postModel;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(
//           postModel.category,
//           style: const TextStyle(
//               fontSize: 25,
//               fontWeight: FontWeight.bold,
//               color: AppColors.buttonColorWhite),
//         ),
//         toolbarHeight: 80,
//         centerTitle: true,
//         //backgroundColor: const Color.fromARGB(255, 210, 193, 238),
//         backgroundColor: AppColors.textColor,
//         shape: const RoundedRectangleBorder(
//           borderRadius: BorderRadius.vertical(
//             bottom: Radius.circular(30.0),
//           ),
//         ),
//       ),
//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           const SizedBox(
//             height: 30.5,
//           ),
//           Container(
//             height: 250,
//             decoration: const BoxDecoration(
//               color: AppColors.buttonColorWhite,
//             ),
//             child: SizedBox(
//               width: 450,
//               height: 250,
//               child: Image(
//                 image: NetworkImage(postModel.image),
//                 width: 150,
//                 height: 200,
//                 // fit: BoxFit.cover,
//               ),
//             ),
//           ),
//           const SizedBox(
//             height: 20,
//           ),
//           Container(
//             height: 424,
//             width: 500,
//             decoration: const BoxDecoration(
//                 // color: Color.fromARGB(255, 210, 193, 238),
//                 color: AppColors.textColor,
//                 borderRadius: BorderRadius.only(
//                     topLeft: Radius.circular(30),
//                     topRight: Radius.circular(30))),
//             child: Column(
//               children: [
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
//                   child: SizedBox(
//                     width: 400,
//                     child: Text(postModel.title,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 19,
//                             // color: Color.fromARGB(255, 45, 17, 57)
//                             color: AppColors.buttonColorWhite)),
//                   ),
//                 ),
//                 Padding(
//                   padding: const EdgeInsets.only(
//                       left: 20.0, right: 20.0, top: 10, bottom: 10),
//                   child: SizedBox(
//                     width: 400,
//                     child: Text(postModel.description,
//                         style: const TextStyle(
//                             fontWeight: FontWeight.w500,
//                             //  color: Color.fromARGB(255, 45, 17, 57)
//                             color: AppColors.buttonColorWhite)),
//                   ),
//                 ),
//                 Row(
//                   children: [
//                     Padding(
//                       padding: const EdgeInsets.only(left: 20.0, right: 150.0),
//                       child: Text(
//                         ' Price :${postModel.price.toString()} \$ ',
//                         style: const TextStyle(
//                             color: AppColors.textBlack,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20),
//                       ),
//                     ),
//                     const SizedBox(
//                       width: 20,
//                     ),
//                     IconButton(
//                         onPressed: () {},
//                         icon: const Icon(
//                           Icons.star,
//                           size: 25,
//                           color: AppColors.buttonColor,
//                         )),
//                     Padding(
//                       padding: const EdgeInsets.only(right: 20.0),
//                       child: Text(
//                         "${postModel.rating.rate}",
//                         style: const TextStyle(
//                             color: AppColors.textBlack,
//                             fontWeight: FontWeight.bold,
//                             fontSize: 20),
//                       ),
//                     ),
//                   ],
//                 ),
//                 Padding(
//                   padding:
//                       const EdgeInsets.only(left: 20.0, right: 20.0, top: 10),
//                   child: Center(
//                     child: ElevatedButton.icon(
//                       onPressed: () {
//                         // Add your onPressed code here!
//                       },
//                       icon: const Icon(Icons.shopping_cart),
//                       label: const Text('Buy Now'),
//                       style: ElevatedButton.styleFrom(
//                         padding: const EdgeInsets.symmetric(
//                             horizontal: 20, vertical: 10),
//                         textStyle: const TextStyle(fontSize: 20),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature/model/post_model.dart';
import 'package:flutter/material.dart';

// ignore: camel_case_types
class details extends StatelessWidget {
  const details({
    super.key,
    required this.postModel,
  });
  final PostModelCatogary postModel;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(items: const [
        BottomNavigationBarItem(label: 'Home', icon: Icon(Icons.home)),
        BottomNavigationBarItem(label: 'Card', icon: Icon(Icons.shopping_cart)),
        BottomNavigationBarItem(label: 'Profile', icon: Icon(Icons.person)),
      ]),
      appBar: AppBar(
        title: Text(
          postModel.category,
          style: const TextStyle(
              fontSize: 25,
              fontWeight: FontWeight.bold,
              color: AppColors.buttonColorWhite),
        ),
        toolbarHeight: 80,
        centerTitle: true,
        backgroundColor: AppColors.textColor,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(30.0),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(
              height: 30.5,
            ),
            Container(
              height: 250,
              decoration: const BoxDecoration(
                color: AppColors.buttonColorWhite,
              ),
              child: SizedBox(
                width: 450,
                height: 250,
                child: Image(
                  image: NetworkImage(postModel.image),
                  width: 150,
                  height: 200,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: double.infinity,
              decoration: const BoxDecoration(
                  color: AppColors.textColor,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
              child: Column(
                children: [
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(postModel.title,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 19,
                              color: AppColors.buttonColorWhite)),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 10, bottom: 10),
                    child: SizedBox(
                      width: double.infinity,
                      child: Text(postModel.description,
                          style: const TextStyle(
                              fontWeight: FontWeight.w500,
                              color: AppColors.buttonColorWhite)),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 20.0),
                          child: Text(
                            ' Price :${postModel.price.toString()} \$ ',
                            style: const TextStyle(
                                color: AppColors.textBlack,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.star,
                            size: 25,
                            color: AppColors.buttonColor,
                          )),
                      Padding(
                        padding: const EdgeInsets.only(right: 20.0),
                        child: Text(
                          "${postModel.rating.rate}",
                          style: const TextStyle(
                              color: AppColors.textBlack,
                              fontWeight: FontWeight.bold,
                              fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  Padding(
                    padding:
                        const EdgeInsets.only(left: 20.0, right: 20.0, top: 20),
                    child: Center(
                      child: ElevatedButton.icon(
                        onPressed: () {
                          // Add your onPressed code here!
                        },
                        icon: const Icon(Icons.shopping_cart),
                        label: const Text('Buy Now'),
                        style: ElevatedButton.styleFrom(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 20, vertical: 10),
                          textStyle: const TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
