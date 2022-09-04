import 'package:costarica_app/widgets/base_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Container(
            width: 360.0,
            height: 640.0,
            child: Stack(
              children: [
                Positioned(
                    left: 16.0,
                    top: 200.0,
                    width: 56.0,
                    height: 20.0,
                    child: Text(
                      '이메일 주소',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xfff8f8f8),
                      ),
                    )),
                Positioned(
                  left: 16.0,
                  top: 226.0,
                  width: 328.0,
                  height: 50.0,
                  child: BaseTextField(
                    hintText: '이메일 또는 사용자 이름',
                  ),
                ),
                Positioned(
                    left: 16.0,
                    top: 296.0,
                    width: 56.0,
                    height: 20.0,
                    child: Text(
                      '비밀번호',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 12.0,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xfff8f8f8),
                      ),
                    )),
                Positioned(
                  left: 16.0,
                  top: 322.0,
                  width: 328.0,
                  height: 50.0,
                  child: BaseTextField(
                    hintText: '비밀번호',
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
