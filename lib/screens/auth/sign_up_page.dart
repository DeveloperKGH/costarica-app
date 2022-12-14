import 'package:costarica_app/screens/auth/sign_up_complete_page.dart';
import 'package:costarica_app/theme/style/colors.dart';
import 'package:costarica_app/theme/style/text_style.dart';
import 'package:costarica_app/theme/widgets/app_bar.dart';
import 'package:costarica_app/theme/widgets/text_form_field.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:flutter/material.dart';

class SignUpPage extends ConsumerStatefulWidget {
  const SignUpPage({super.key});
  static String get routeName => 'sign_up_process';
  static String get routeLocation => '/$routeName';
  @override
  ConsumerState<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends ConsumerState<SignUpPage> {
  late TextEditingController _emailController;
  late FocusNode _emailFocusNode;
  late TextEditingController _passwordController;
  late FocusNode _passwordFocusNode;
  late TextEditingController _nameController;
  late FocusNode _nameFocusNode;

  @override
  void initState() {
    _emailController = TextEditingController();
    _emailFocusNode = FocusNode();
    _passwordController = TextEditingController();
    _passwordFocusNode = FocusNode();
    _nameController = TextEditingController();
    _nameFocusNode = FocusNode();
    super.initState();
  }

  @override
  void dispose() {
    _emailController.dispose();
    _emailFocusNode.dispose();
    _passwordController.dispose();
    _passwordFocusNode.dispose();
    _nameController.dispose();
    _nameFocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(),
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
                    '????????????',
                    style: Theme.of(context).textTheme.headline5,
                    textAlign: TextAlign.left,
                  ),
                ),
                SizedBox(height: 40),
                Text(
                  '????????? ??????',
                  style: regular13,
                ),
                SizedBox(height: 8),
                CSTextFormField.clear(
                  controller: _nameController,
                  focusNode: _nameFocusNode,
                  decoration: InputDecoration(
                    hintText: '????????? ??????',
                    suffixIcon: _nameController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _nameController.clear(),
                            child: Icon(Icons.cancel, color: kCosGray150),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '????????? ??????',
                  style: regular13,
                ),
                SizedBox(height: 8),
                CSTextFormField.clear(
                  controller: _emailController,
                  focusNode: _emailFocusNode,
                  decoration: InputDecoration(
                    hintText: '????????? ??????',
                    suffixIcon: _emailController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _emailController.clear(),
                            child: Icon(Icons.cancel, color: kCosGray150),
                          ),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  '????????????',
                  style: regular13,
                ),
                SizedBox(height: 8),
                CSTextFormField.clear(
                  controller: _passwordController,
                  focusNode: _passwordFocusNode,
                  decoration: InputDecoration(
                    hintText: '????????????',
                    suffixIcon: _passwordController.text.isNotEmpty
                        ? null
                        : InkWell(
                            onTap: () => _passwordController.clear(),
                            child: Icon(Icons.cancel, color: kCosGray150),
                          ),
                  ),
                ),
                SizedBox(height: 40),
                ElevatedButton(
                  onPressed: () => context.replace(SignUpCompletePage.routeLocation),
                  child: Text('????????????'),
                ),
                SizedBox(height: 10),
                Text.rich(TextSpan(
                  text: '???????????? ??? Costarica ????????? ',
                  style: regular13,
                  children: [
                    TextSpan(
                      text: '????????????',
                      style: TextStyle(
                        color: kCosLink,
                      ),
                    ),
                    TextSpan(
                      text: ' ??? ',
                    ),
                    TextSpan(
                      text: '???????????? ?????? ??????',
                      style: TextStyle(
                        color: kCosLink,
                      ),
                    ),
                    TextSpan(
                      text: '??? ???????????? ?????????.',
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
