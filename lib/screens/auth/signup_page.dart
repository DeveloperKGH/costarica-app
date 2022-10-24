import 'package:costarica_app/theme/colors.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  late TextEditingController _emailController;
  late TextEditingController _passwordController;
  late TextEditingController _nameController;

  @override
  void initState() {
    _emailController = TextEditingController();
    _passwordController = TextEditingController();
    _nameController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    _nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.close),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 28.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 36),
                SizedBox(
                  width: Size.infinite.width,
                  child: Text(
                    '회원가입',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '사용자 이름',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    hintText: '사용자 이름',
                    suffixIcon: _nameController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _nameController.clear(),
                            child: Icon(Icons.cancel, color: Color(0xFFBDBDBD)),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '이메일 주소',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _emailController,
                  decoration: InputDecoration(
                    hintText: '이메일 주소',
                    suffixIcon: _emailController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _emailController.clear(),
                            child: Icon(Icons.cancel, color: Color(0xFFBDBDBD)),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '비밀번호',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                ),
                SizedBox(height: 8),
                TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    hintText: '비밀번호',
                    suffixIcon: _passwordController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _passwordController.clear(),
                            child: Icon(Icons.cancel, color: Color(0xFFBDBDBD)),
                          ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => context.go('/login'),
                  child: Text('회원가입'),
                ),
                SizedBox(height: 10),
                Text.rich(TextSpan(
                  text: '회원가입 시 Costarica 서비스 ',
                  style: TextStyle(
                    fontSize: 13.0,
                  ),
                  children: [
                    TextSpan(
                      text: '이용약관',
                      style: TextStyle(
                        color: kCosTextLink,
                      ),
                    ),
                    TextSpan(
                      text: ' 및 ',
                    ),
                    TextSpan(
                      text: '개인정보 보호 정책',
                      style: TextStyle(
                        color: kCosTextLink,
                      ),
                    ),
                    TextSpan(
                      text: '에 동의하게 됩니다.',
                    ),
                  ],
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
