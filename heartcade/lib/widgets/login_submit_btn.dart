import 'package:flutter/material.dart';
import 'package:heartcade/blocs/login_bloc.dart';
import 'package:heartcade/blocs/login_state.dart';

class LoginSubmitBtn extends StatelessWidget {
  LoginBloc loginBloc;

  LoginSubmitBtn({this.loginBloc});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return StreamBuilder<ApiResponse<String>>(
        stream: loginBloc.signInStream,
        builder: (context, AsyncSnapshot<ApiResponse<String>> snapshot) {
          if (!snapshot.hasData) return Container();

          if (snapshot.data.status == Status.COMPLETED) {
            print("Login Success");
            return Container();
          } else {
            print("Login Failure");
            return Container();
          }
        });
  }
}
