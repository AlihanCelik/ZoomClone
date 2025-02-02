import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zoom_clone/ui/common/components/CustomButton.dart';

import '../../common/app_colors.dart';
import 'login_viewmodel.dart';

class LoginView extends StackedView<LoginViewModel> {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: kcBackgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Start or join a meeting",
              style: TextStyle(fontSize: 24,fontWeight: FontWeight.bold,color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(40.0),
              child: Icon(Icons.video_camera_front,size: 150,color: Colors.white),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: CustomButton(text: "Google Sign In", onPressed:(){}),
            )
          ],
        ),
      )
    );

  }

  @override
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      LoginViewModel();
}
