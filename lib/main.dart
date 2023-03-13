import 'package:flutter/material.dart';
import 'package:graduation/screens/drawer_screens/screens/about_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/date_bake_up_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/general_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/help_and_support_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/rate_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/reports_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/settings_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/share_app_screen.dart';
import 'package:graduation/screens/drawer_screens/screens/user_information_screen.dart';
import 'package:graduation/screens/home_screen.dart';
import 'package:graduation/screens/navbar_screens/invoice_screen.dart';
import 'package:graduation/screens/navbar_screens/main_nav_screen.dart';
import 'package:graduation/screens/navbar_screens/orders_screen.dart';
import 'package:graduation/screens/navbar_screens/shopping_cart_screen.dart';
import 'package:graduation/screens/products_screen_details/products_screen_details.dart';
import 'package:graduation/screens/sign_screens/forget_screen.dart';
import 'package:graduation/screens/sign_screens/forgotten_password_screen.dart';
import 'package:graduation/screens/sign_screens/login_screen.dart';
import 'package:graduation/screens/sign_screens/register_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const LoginScreen(),
      routes: {
        LoginScreen.loginScreenRoute: (context) => const LoginScreen(),
        RegisterScreen.registerScreenRoute: (context) => const RegisterScreen(),
        ForgetScreen.forgetScreenRoute: (context) => const ForgetScreen(),
        ForgottenPasswordScreen.forgottenPasswordScreenRoute: (context) =>
            const ForgottenPasswordScreen(),
        HomeScreen.homeScreenRoute: (context) => const HomeScreen(),
        MainScreen.mainScreenRoute: (context) => const MainScreen(),
        ShoppingCartScreen.shoppingCartRoute: (context) =>
            const ShoppingCartScreen(),
        OrdersScreen.ordersScreenRoute: (context) => const OrdersScreen(),
        ProductsScreenDetails.productsDetailsScreenRoute: (context) =>
            const ProductsScreenDetails(),
        GeneralScreen.generalScreenRoute: (context) => const GeneralScreen(),
        DateBakeUpScreen.dateBakeUpScreenRoute: (context) =>
            const DateBakeUpScreen(),
        ReportsScreen.reportsScreenRoute: (context) => ReportsScreen(), //const
        AboutScreen.aboutScreenRoute: (context) => const AboutScreen(),
        SettingsScreen.settingsScreenRoute: (context) => const SettingsScreen(),
        ShareAppScreen.shareAppScreenRoute: (context) => const ShareAppScreen(),
        HelpAndSupportScreen.helpAndSupportScreenRoute: (context) =>
            const HelpAndSupportScreen(),
        RateScreen.rateScreenRoute: (context) => const RateScreen(),
        InvoiceScreen.invoiceScreenRoute: (context) => const InvoiceScreen(),
        UserInformationScreen.userInformationScreenRoute: (context) =>
            const UserInformationScreen(),
      },
    );
  }
}
