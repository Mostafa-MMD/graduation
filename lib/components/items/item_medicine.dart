import 'package:flutter/material.dart';

import '../../screens/products_screen_details/products_screen_details.dart';

class ItemMedicine extends StatelessWidget {
  ItemMedicine({
    required this.image,
    required this.name,
    required this.price,
    required this.available,
  });
  String image;
  String name;
  String price;
  String available;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamedAndRemoveUntil(
            context, ProductsScreenDetails.productsDetailsScreenRoute, (route) => false);
      },
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(35),
            //color: Colors.deepPurple[50],
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                blurRadius: 2,
                color: Colors.black54,
              )
            ],
        ),
        child: Container(
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              Positioned(
                top: -5,
                child: Padding(
                  padding:  EdgeInsets.all(9),
                  child: Container(
                    height: MediaQuery.of(context).size.height / 9,
                    child: Image.asset(image),
                  ),
                ),
              ),
              // SizedBox(height:MediaQuery.of(context).size.height/10),
              Positioned(
                bottom: 0,
                child: Column(
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width / 20.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.deepPurple
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Row(
                          children: [
                            Text(
                              'price: ',
                              style: TextStyle(
                                fontSize:
                                MediaQuery.of(context).size.width / 22.0,
                                color: Colors.lightBlue[900]!,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                            Text(
                              price,
                              style: TextStyle(
                                fontSize:
                                  MediaQuery.of(context).size.width / 22.0,
                                color: Colors.lightBlue,
                                fontWeight: FontWeight.w700,
                              ),
                            ),
                          ],
                        ),
                        Text(
                          available,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width / 23.0,
                            color: Colors.indigo[400],
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
