import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:kicks_sneakerapp/application/bussiness_logic/bloc/auth_bloc.dart';
import 'package:kicks_sneakerapp/application/presentation/routes/routes.dart';
import 'package:kicks_sneakerapp/application/presentation/utils/colors.dart';

class ScreenHome extends StatelessWidget {
  const ScreenHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: [
            TextField(
              style: TextStyle(color: kBlack),
              decoration: InputDecoration(
                  prefixIcon: Icon(Icons.search),
                  filled: true,
                  fillColor: kGrey,
                  contentPadding: EdgeInsets.symmetric(vertical: 14.0),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(50),
                      borderSide: BorderSide.none)),
            ),
            ElevatedButton(
                onPressed: () {
                  context.read<AuthBloc>().add( AuthEvent.signOut());
                  Navigator.pushNamedAndRemoveUntil(
                      context, Routes.signInPage, (route) => false);
                },
                child: Text("Log out"))
          ],
        ),
      ),
    ));
  }
}
