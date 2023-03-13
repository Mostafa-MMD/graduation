import 'package:flutter/material.dart';

import '../../components/text/text_button.dart';
import '../home_screen.dart';
import '../navbar_screens/shopping_cart_screen.dart';

class ProductsScreenDetails extends StatefulWidget {
  const ProductsScreenDetails({Key? key}) : super(key: key);
  //static const String detailsProductsRoute = 'details products';
   static const String productsDetailsScreenRoute = 'products details screen';

  @override
  State<ProductsScreenDetails> createState() => _ProductsScreenDetailsState();
}

class _ProductsScreenDetailsState extends State<ProductsScreenDetails> {
  bool isShowMore = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 2.0,
        leading: IconButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, HomeScreen.homeScreenRoute, (route) => false);
          },
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.lightBlue[900]!,
            size: 35.0,
          ),
        ),
        title: Text(
          'Pharmacy',
          style: TextStyle(
            color: Colors.lightBlue[900]!,
            fontWeight: FontWeight.bold,
            fontSize: MediaQuery.of(context).size.width / 12.5,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(context,
                  ShoppingCartScreen.shoppingCartRoute, (route) => false);
            },
            icon: Icon(
              Icons.shopping_cart,
              color: Colors.lightBlue[900]!,
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
                child: Image.asset(
                'assets/images/panadol.jpg',
                  height: 150,// change
            )
            ),
            Row(
              children: [
                Text(
                  'Panadol',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.deepPurple,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Row(
              children: [
                Text(
                  'Price: ',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlue[900]!,
                  ),
                ),
                Text(
                  '35.00',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.lightBlue,
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    "There are many fake or unproven medical products and"
                        " methods that claim to diagnose, prevent or cure COVID-19.[1] "
                        "Fake medicines sold for COVID-19 may not contain the ingredients"
                    "they claim to contain, and may even contain harmful ingredients.[2][1][3]"
                        " In March 2020, the World Health Organization (WHO)"
                        " released a statement recommending against taking any",
                    // maxLines: 8,
                    // overflow: TextOverflow.ellipsis,
                    maxLines: isShowMore ? 2 : null,
                    overflow: TextOverflow.fade,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isShowMore = !isShowMore;
                    });
                  },
                  child: Text(
                    isShowMore ? 'show more' : 'show less',
                    style: const TextStyle(
                      fontSize: 17.5,
                      color: Colors.lightBlue
                    ),
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                ReusableTextButton(
                  color: Colors.lightBlue[900]!,
                  onPressed: () {},
                  text: 'Add To Cart',
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
/*
body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Center(
                child: Image.asset(
              'assets/images/medicine.png',
            )),
            Row(
              children: [
                Text(
                  'NAME Product',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 14,
                    fontWeight: FontWeight.w600,
                    color: Colors.lightBlue[900]!,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Row(
              children: [
                Text(
                  'Price: ',
                  style: TextStyle(
                    fontSize: MediaQuery.of(context).size.width / 20,
                    fontWeight: FontWeight.w600,
                    //color: Colors.lightBlue[900]!,
                  ),
                ),
                Text(
                  '25.00',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.green[700],
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height / 50,
            ),
            Column(
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Text(
                    "There are many fake or unproven medical products and methods that claim to diagnose, prevent or cure COVID-19.[1] Fake medicines sold for COVID-19 may not contain the ingredients"
                    "they claim to contain, and may even contain harmful ingredients.[2][1][3] In March 2020, the World Health Organization (WHO) released a statement recommending against taking any",
                    // maxLines: 8,
                    // overflow: TextOverflow.ellipsis,
                    maxLines: isShowMore ? 2 : null,
                    overflow: TextOverflow.fade,
                  ),
                ),
                TextButton(
                  onPressed: () {
                    setState(() {
                      isShowMore = !isShowMore;
                    });
                  },
                  child: Text(
                    isShowMore ? 'show more' : 'show less',
                    style: const TextStyle(fontSize: 17.5),
                  ),
                ),
              ],
            ),
            Spacer(),
            Column(
              children: [
                ReusableTextButton(
                  color: Colors.lightBlue[900]!,
                  onPressed: () {},
                  text: 'Add To Cart',
                ),
              ],
            )
          ],
        ),
      ),
 */