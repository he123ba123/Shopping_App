import 'package:app3/core/widgets/BottomNavigatorBar.dart';
import 'package:app3/home/auth/view/widgets/border.dart';
import 'package:app3/home/catogeryCard/home/view/Widgets/appar.dart';
import 'package:app3/home/catogeryCard/home/view/Widgets/colors.dart';
import 'package:app3/home/catogeryCard/home/view/screen/post_screen.dart';
import 'package:app3/home/lap_catogry/view/screens/lap_catogery_cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
      bottomNavigationBar: const BottomNavigatorBar(),
      // bottomNavigationBar: BottomNavigationBar(items: const [
      //   BottomNavigationBarItem(
      //       label: 'Home', icon: Icon(Icons.home, color: AppColors.textColor)),
      //   BottomNavigationBarItem(
      //       label: 'Card',
      //       icon: Icon(
      //         Icons.shopping_cart,
      //         color: AppColors.buttonColorGray,
      //       )),
      //   BottomNavigationBarItem(
      //       label: 'Profile',
      //       icon: Icon(
      //         Icons.person,
      //         color: AppColors.buttonColorGray,
      //       )),
      // ]),
      body: Column(
        children: [
          Column(
            children: [
              Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Search',
                          prefixIcon: const Icon(Icons.search),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(50),
                          ),
                          enabledBorder: border(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            radius: 20,
                          ),
                          focusedBorder: border(
                            color: const Color.fromARGB(255, 255, 255, 255),
                            radius: 20,
                          ),
                          fillColor: Colors.grey[200],
                          filled: true,
                        ),
                      ),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 15, right: 30),
                    child: Icon(
                      Icons.menu,
                      size: 30,
                    ),
                  )
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(left: 20, bottom: 20),
                child: Row(
                  children: [
                    SizedBox(
                      height: 30,
                      child: Text(
                        "Category",
                        style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: AppColors.textBlack),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 170,
                              child: Container(
                                color: Colors.white,
                                child: Image.network(
                                  "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 185,
                              child: Card(
                                child: ListTile(
                                  trailing: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: AppColors.textColor,
                                  ),
                                  title: const Center(
                                      child: Text(
                                    "Electronics",
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostScreen(
                                          endpoints: 'electronics',
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 170,
                              child: Container(
                                color: Colors.white,
                                child: Image.network(
                                  "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 170,
                              child: Card(
                                child: ListTile(
                                  trailing: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: AppColors.textColor,
                                  ),
                                  title: const Center(
                                      child: Text(
                                    "Jewelry",
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostScreen(
                                          endpoints: 'jewelery',
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 170,
                              child: Container(
                                color: Colors.white,
                                child: Image.network(
                                  "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 170,
                              child: Card(
                                child: ListTile(
                                  trailing: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: AppColors.textColor,
                                  ),
                                  title: const Center(
                                      child: Text(
                                    "Men",
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostScreen(
                                          endpoints: "men's%20clothing",
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Spacer(),
                        Column(
                          children: [
                            SizedBox(
                              height: 150,
                              width: 170,
                              child: Container(
                                color: Colors.white,
                                child: Image.network(
                                  "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg",
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: 170,
                              child: Card(
                                child: ListTile(
                                  trailing: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: AppColors.textColor,
                                  ),
                                  title: const Center(
                                      child: Text(
                                    "Women",
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => PostScreen(
                                          endpoints: "women's%20clothing",
                                        ),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 100,
                              width: 170,
                              child: Container(
                                color: Colors.white,
                                child: Image.network(
                                  "https://res.cloudinary.com/dzh2hde2n/image/upload/v1684434772/mrwpga7k3mpobwpfxqd8.png",
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 170,
                              child: Card(
                                child: ListTile(
                                  trailing: const Icon(
                                    Icons.arrow_circle_right_rounded,
                                    color: AppColors.textColor,
                                  ),
                                  title: const Center(
                                      child: Text(
                                    "Laptops",
                                    style: TextStyle(
                                        color: AppColors.textBlack,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 18),
                                  )),
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            const lapCatogryScreen(),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}






              // const Padding(
              //   padding: EdgeInsets.all(8.0),
              //   child: Icon(
              //     Icons.shopping_cart,
              //     color: AppColors.textColor,
              //     size: 150,
              //   ),
              // ),
              //------------------------------------------------------------------------------------------------
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 30, left: 10, right: 10, bottom: 5),
              //   child: Center(
              //     child: SizedBox(
              //       width: 400,
              //       height: 90,
              //       child: Card(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Center(
              //             child: ListTile(
              //               title: const Text(
              //                 "Electronics",
              //                 style: TextStyle(
              //                   fontSize: 23,
              //                   color: AppColors.textColor,
              //                 ),
              //               ),
              //               leading: const Icon(
              //                 Icons.computer_rounded,
              //                 color: AppColors.textColor,
              //                 size: 50,
              //               ),
              //               // Image.network(
              //               //     "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg"),
              //               onTap: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => PostScreen(
              //                             endpoints: 'electronics',
              //                           )),
              //                 );
              //               },
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 10, left: 10, right: 10, bottom: 5),
              //   child: Center(
              //     child: SizedBox(
              //       width: 400,
              //       height: 90,
              //       child: Card(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Center(
              //             child: ListTile(
              //               title: const Text(
              //                 "Jewelery",
              //                 style: TextStyle(
              //                   fontSize: 23,
              //                   color: AppColors.textColor,
              //                 ),
              //               ),
              //               leading: const Icon(
              //                 Icons.diamond,
              //                 color: AppColors.textColor,
              //                 size: 50,
              //               ),
              //               // Image.network(
              //               //   "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
              //               //   // width: 70,
              //               //   // height: 70,
              //               // ),
              //               onTap: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => PostScreen(
              //                             endpoints: 'jewelery',
              //                           )),
              //                 );
              //               },
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding: const EdgeInsets.only(
              //       top: 10, left: 10, right: 10, bottom: 5),
              //   child: Center(
              //     child: SizedBox(
              //       width: 400,
              //       height: 90,
              //       child: Card(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Center(
              //             child: ListTile(
              //               title: const Text(
              //                 "Men clothing",
              //                 style: TextStyle(
              //                   fontSize: 23,
              //                   color: AppColors.textColor,
              //                 ),
              //               ),
              //               leading: const Icon(
              //                 Icons.shopping_bag,
              //                 color: AppColors.textColor,
              //                 size: 50,
              //               ),
              //               //     Image.network(
              //               //      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
              //               onTap: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => PostScreen(
              //                             endpoints: "men's%20clothing",
              //                           )),
              //                 );
              //               },
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding:
              //       const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              //   child: Center(
              //     child: SizedBox(
              //       width: 400,
              //       height: 90,
              //       child: Card(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Center(
              //             child: ListTile(
              //               title: const Text(
              //                 "Women clothing",
              //                 style: TextStyle(
              //                   fontSize: 23,
              //                   color: AppColors.textColor,
              //                 ),
              //               ),
              //               leading: const Icon(
              //                 Icons.local_mall,
              //                 color: AppColors.textColor,
              //                 size: 50,
              //               ),
              //               // Image.network(
              //               //  "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"),
              //               onTap: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) => PostScreen(
              //                             endpoints: "women's%20clothing",
              //                           )),
              //                 );
              //               },
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              // Padding(
              //   padding:
              //       const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              //   child: Center(
              //     child: SizedBox(
              //       width: 400,
              //       height: 90,
              //       child: Card(
              //         child: Padding(
              //           padding: const EdgeInsets.all(8.0),
              //           child: Center(
              //             child: ListTile(
              //               title: const Text(
              //                 "Laptobs",
              //                 style: TextStyle(
              //                   fontSize: 23,
              //                   color: AppColors.textColor,
              //                 ),
              //               ),
              //               leading: const Icon(
              //                 Icons.laptop_chromebook_outlined,
              //                 color: AppColors.textColor,
              //                 size: 50,
              //               ),
              //               // Image.network(
              //               //  "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"),
              //               onTap: () {
              //                 Navigator.push(
              //                   context,
              //                   MaterialPageRoute(
              //                       builder: (context) =>
              //                           const lapCatogryScreen()),
              //                 );
              //               },
              //             ),
              //           ),
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
 


  // Padding(
  //                     padding: const EdgeInsets.only(
  //                         bottom: 20, right: 20, left: 20, top: 10),
  //                     child: SizedBox(
  //                       height: 150,
  //                       width: 150,
  //                       child: Container(
  //                         color: Colors.white,
  //                         child: Image.network(
  //                             "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg"),
  //                       ),
  //                     ),
  //                   ),