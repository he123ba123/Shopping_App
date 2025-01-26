import 'package:app3/feature/home/view/Widgets/appar.dart';
import 'package:app3/feature/home/view/Widgets/colors.dart';
import 'package:app3/feature/home/view/screen/post_screen.dart';
import 'package:app3/home_lab_catogry/view/screens/lap_catogery_cart.dart';
import 'package:flutter/material.dart';

class CardView extends StatelessWidget {
  const CardView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appBarHome(),
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Icon(
                Icons.shopping_cart,
                color: AppColors.textColor,
                size: 150,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 30, left: 10, right: 10, bottom: 5),
              child: Center(
                child: SizedBox(
                  width: 400,
                  height: 90,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ListTile(
                          title: const Text(
                            "Electronics",
                            style: TextStyle(
                              fontSize: 23,
                              color: AppColors.textColor,
                            ),
                          ),
                          leading: const Icon(
                            Icons.computer_rounded,
                            color: AppColors.textColor,
                            size: 50,
                          ),
                          // Image.network(
                          //     "https://fakestoreapi.com/img/81Zt42ioCgL._AC_SX679_.jpg"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                        endpoints: 'electronics',
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 5),
              child: Center(
                child: SizedBox(
                  width: 400,
                  height: 90,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ListTile(
                          title: const Text(
                            "Jewelery",
                            style: TextStyle(
                              fontSize: 23,
                              color: AppColors.textColor,
                            ),
                          ),
                          leading: const Icon(
                            Icons.diamond,
                            color: AppColors.textColor,
                            size: 50,
                          ),
                          // Image.network(
                          //   "https://fakestoreapi.com/img/51UDEzMJVpL._AC_UL640_QL65_ML3_.jpg",
                          //   // width: 70,
                          //   // height: 70,
                          // ),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                        endpoints: 'jewelery',
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                  top: 10, left: 10, right: 10, bottom: 5),
              child: Center(
                child: SizedBox(
                  width: 400,
                  height: 90,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ListTile(
                          title: const Text(
                            "Men clothing",
                            style: TextStyle(
                              fontSize: 23,
                              color: AppColors.textColor,
                            ),
                          ),
                          leading: const Icon(
                            Icons.shopping_bag,
                            color: AppColors.textColor,
                            size: 50,
                          ),
                          //     Image.network(
                          //      "https://fakestoreapi.com/img/81fPKd-2AYL._AC_SL1500_.jpg"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                        endpoints: "men's%20clothing",
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              child: Center(
                child: SizedBox(
                  width: 400,
                  height: 90,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ListTile(
                          title: const Text(
                            "Women clothing",
                            style: TextStyle(
                              fontSize: 23,
                              color: AppColors.textColor,
                            ),
                          ),
                          leading: const Icon(
                            Icons.local_mall,
                            color: AppColors.textColor,
                            size: 50,
                          ),
                          // Image.network(
                          //  "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => PostScreen(
                                        endpoints: "women's%20clothing",
                                      )),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.only(top: 5, left: 10, right: 10, bottom: 5),
              child: Center(
                child: SizedBox(
                  width: 400,
                  height: 90,
                  child: Card(
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Center(
                        child: ListTile(
                          title: const Text(
                            "Laptobs",
                            style: TextStyle(
                              fontSize: 23,
                              color: AppColors.textColor,
                            ),
                          ),
                          leading: const Icon(
                            Icons.laptop_chromebook_outlined,
                            color: AppColors.textColor,
                            size: 50,
                          ),
                          // Image.network(
                          //  "https://fakestoreapi.com/img/51Y5NI-I5jL._AC_UX679_.jpg"),
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const lapCatogryScreen()),
                            );
                          },
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
