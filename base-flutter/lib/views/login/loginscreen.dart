import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:ints/views/bottomNavigationbar/bottomNavigationBar_controller.dart';
import 'package:ints/views/bottomNavigationbar/btm_navigation_bar.dart';
import 'package:ticket_widget/ticket_widget.dart';
import 'login_binding.dart';

class LoginScreen extends GetView<LoginController> {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.green,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  ' Welcome to ArrowSpeed',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 27,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: Text(
                    'Login to using your account to sign in',
                    style: TextStyle(
                        fontSize: 18,
                        color: Colors.white,
                        fontWeight: FontWeight.w600),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                TicketWidget(
                  width: 350,
                  height: 450,
                  isCornerRounded: true,
                  padding: EdgeInsets.all(20),
                  child: TicketData(),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class TicketData extends StatelessWidget {
  const TicketData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                'Đăng nhập tài khoản',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 20.0),
              _buildTextField('Tên gian hàng:', obscureText: true),
              const SizedBox(height: 10.0),
              _buildTextField('Tên tài khoản:'),
              const SizedBox(height: 10.0),
              _buildTextField('Mật khẩu:', obscureText: true),
              const SizedBox(height: 20.0),
              _buildLoginButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildTextField(String labelText, {bool obscureText = false}) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: TextField(
        obscureText: obscureText,
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: const TextStyle(fontSize: 18.0, color: Colors.black),
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 16.0),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return Container(
      width: double.infinity,
      height: 60.0,
      child: ElevatedButton(
        onPressed: () {
          Get.lazyPut(() => BottomBarController());
          Get.to(BottomBarScreen());
          Get.to(() => BottomBarScreen());
        },
        style: ElevatedButton.styleFrom(
          primary: Color(0xff042f40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.0),
          ),
        ),
        child: const Text(
          'Đăng Nhập',
          style: TextStyle(
            fontSize: 21.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
