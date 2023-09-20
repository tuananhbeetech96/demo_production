
import 'package:flutter/material.dart';
import 'package:music_app/core/constants/constants.dart';
import '../../../blocs/login/login_bloc.dart';
import '../base_screen_state.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends BaseScreenState<LoginScreen, LoginBloc, LoginState> {
  final _usernameController = TextEditingController();
  final _passwordController = TextEditingController();

  @override
  void dispose() {
    _usernameController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget buildContent(BuildContext context) {
    const textEmail = Text(
        "メールアドレス:",
        softWrap: true,
        style: TextStyle(fontSize: 16)
    );

    const textPassword = Text(
        "パスワード:",
        softWrap: true,
        style: TextStyle(fontSize: 16)
    );

    final textLogin = Container(
      margin: const EdgeInsets.only(bottom: 30.0),
      child: const Text(
        "ログイン",
        softWrap: true,
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)
      ),
    );

    final email = ValueListenableBuilder(
        valueListenable: _usernameController,
      builder: (context, value, child) {
        return TextFormField(
          keyboardType: TextInputType.emailAddress,
          autofocus: false,
          onChanged: (value) {
            bloc.add(OnChangeTextUser(value));
          },
          controller: _usernameController,
          obscureText: false,
          decoration: InputDecoration(
              hintText: 'Enter your email...',
              suffixIcon: value.text.isNotEmpty ? IconButton(
                onPressed: (){
                  _usernameController.clear();
                  bloc.add(OnChangeTextUser(''));
                },
                icon: const Icon(Icons.cancel, color: Colors.grey),
              ): null ,
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        );
      }
    );

    final password = ValueListenableBuilder(
      valueListenable: _passwordController,
      builder: (context, value, child) {
        return TextFormField(
          autofocus: false,
          obscureText: true,
          controller: _passwordController,
          decoration: InputDecoration(
            hintText: 'Enter your password...',
            suffixIcon: value.text.isNotEmpty ? IconButton(
              onPressed: (){
                _passwordController.clear();
              },
              icon: const Icon(Icons.cancel, color: Colors.grey),
            ): null ,
            contentPadding: const EdgeInsets.fromLTRB(20.0, 10.0, 20.0, 10.0),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(10.0)),
          ),
        );
      }
    );

    final loginButton = ElevatedButton(
      child: const Text('ログイン'),
      onPressed: () {
        bloc.add(GetLoginEvent(_usernameController.text.trim(), _passwordController.text.trim()));
      },
    );

    portraitOrientation(){
      return SingleChildScrollView(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            textLogin,
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: textEmail,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0, right: 20.0),
              child: email,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Container(
                margin: const EdgeInsets.only(left: 20),
                child: textPassword,
              ),
            ),
            Container(
              margin: const EdgeInsets.only(left: 20.0, top: 10.0, bottom: 20.0, right: 20.0),
              child: password,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: loginButton,
              ),
            )
          ],
        ),
      );
    }

    landscapeOrientation(){
      return SingleChildScrollView(
        child:  Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            textLogin,
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child:
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: textEmail,
                    )),
                Expanded(
                    flex: 5,
                    child:
                    Container(
                      padding: const EdgeInsets.all(20.0),
                      child: email,
                    )),
              ],
            ),
            Row(
              children: [
                Expanded(
                    flex: 1,
                    child:
                    Container(
                      padding: const EdgeInsets.only(left: 20.0),
                      child: textPassword,
                    )),
                Expanded(
                    flex: 5,
                    child: Container(
                      padding: const EdgeInsets.all(20.0),
                      child: password,
                    )),
              ],
            ),
            Align(
              alignment: Alignment.centerRight,
              child: Container(
                margin: const EdgeInsets.only(right: 20),
                child: loginButton,
              ),
            )
          ],
        ),
      );
    }

    return Center(
      child: OrientationBuilder(
        builder: (context, orientation){
          if(orientation == Orientation.landscape){
            return landscapeOrientation();
          } else {
            return portraitOrientation();
          }
        },
      ),
    );
  }

  @override
  void onStateListener(BuildContext context, LoginState state) {
    super.onStateListener(context, state);
    if(state.success){
      Navigator.pushReplacementNamed(context, RouteConstants.productManagement);
    }
  }
}


