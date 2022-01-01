import 'package:flutter/material.dart';
import 'package:flutter_application_1/Vpn_mobile_app/ui/vpn_home_page.dart';

class VpnMobileApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: VpnHomePage(),
    );
  }
}
