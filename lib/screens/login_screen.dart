import 'package:costarica_app/screens/sign_up_screen.dart';
import 'package:costarica_app/widgets/base_app_bar.dart';
import 'package:costarica_app/widgets/base_button.dart';
import 'package:costarica_app/widgets/base_check_box.dart';
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
      appBar: BaseAppBar(isBackButton: false, isCloseButton: true),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 140, 0, 8),
                child: Container(
                  width: 59,
                  height: 20,
                  child: const FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '이메일 주소',
                      overflow: TextOverflow.visible,
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        fontSize: 13.0,
                        fontWeight: FontWeight.w400,
                        color: const Color(0xfff8f8f8),
                        letterSpacing: -0.32,
                      ),
                    ),
                  ),
                )),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: BaseTextField(hintText: '이메일', isPassword: false)),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 8),
              child: Container(
                width: 45,
                height: 20,
                child: const FittedBox(
                  fit: BoxFit.contain,
                  child: Text(
                    '비밀번호',
                    overflow: TextOverflow.visible,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w400,
                      color: const Color(0xfff8f8f8),
                      letterSpacing: -0.32,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 20),
                child: BaseTextField(hintText: '비밀번호', isPassword: true)),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 0, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  BaseCheckBox(),
                  Padding(
                      padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                      child: Text('자동로그인',
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.w500,
                            color: const Color(0xfff8f8f8),
                            letterSpacing: -0.32,
                          )))
                ],
              ),
            ),
            Padding(
                padding: const EdgeInsets.fromLTRB(16, 0, 16, 12),
                child: BaseButton(text: '로그인')),
            Padding(
              padding: const EdgeInsets.fromLTRB(0, 0, 0, 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    onPressed: () {},
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text('비밀번호 재설정',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xfff8f8f8),
                          letterSpacing: -0.32,
                        )),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(12, 0, 12, 0),
                    child: SizedBox(
                      height: 8,
                      child: VerticalDivider(
                        width: 0,
                        color: const Color(0xff6d6d6d),
                        thickness: 1,
                      ),
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => SignUpScreen()),
                      );
                    },
                    style: TextButton.styleFrom(
                      minimumSize: Size.zero,
                      padding: EdgeInsets.zero,
                      tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                    ),
                    child: Text('회원가입',
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: FontWeight.w500,
                          color: const Color(0xfff8f8f8),
                          letterSpacing: -0.32,
                        )),
                  )
                ],
              ),
            ),
            Divider(
              color: const Color(0xff333333),
              thickness: 1,
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(33, 13, 40, 13),
                      child: Image.asset(
                        'assets/images/kakaologo.png',
                        width: 26,
                        height: 24,
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 23,
                      child: const FittedBox(
                          fit: BoxFit.none,
                          child: Text(
                            '카카오로 로그인',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff101010),
                              letterSpacing: -0.32,
                            ),
                          )),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffE8CF3F),
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  padding: EdgeInsets.zero,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: ElevatedButton(
                onPressed: () {},
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(33, 13, 40, 13),
                      child: Image.asset(
                        'assets/images/glogo.png',
                        width: 24,
                        height: 24,
                      ),
                    ),
                    Container(
                      width: 160,
                      height: 23,
                      child: const FittedBox(
                          fit: BoxFit.none,
                          child: Text(
                            '구글로 로그인',
                            overflow: TextOverflow.visible,
                            textAlign: TextAlign.left,
                            style: TextStyle(
                              fontSize: 15.0,
                              fontWeight: FontWeight.w500,
                              color: const Color(0xff101010),
                              letterSpacing: -0.32,
                            ),
                          )),
                    )
                  ],
                ),
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xffE2E2E2),
                  minimumSize: Size.fromHeight(50),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(4.0)),
                  padding: EdgeInsets.zero,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
