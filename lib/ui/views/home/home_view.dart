import 'package:flutter/material.dart';
import 'package:stacked/stacked.dart';
import 'package:zoom_clone/ui/common/app_colors.dart';
import 'package:zoom_clone/ui/common/ui_helpers.dart';

import '../../common/components/HomeMeetingButton.dart';
import 'home_viewmodel.dart';

class HomeView extends StackedView<HomeViewModel> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    HomeViewModel viewModel,
    Widget? child,
  ) {

    return Scaffold(
      backgroundColor: kcBackgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        automaticallyImplyLeading: false,
        elevation: 0,
        title: const Text("Meet & Chat",style: TextStyle(color: Colors.white),),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: 20,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                HomeMeetingButton(onPressed: (){},text: "New Meeting",icon:Icons.videocam),
                HomeMeetingButton(onPressed: (){},text: "Join Meeting",icon:Icons.add_box_rounded),
                HomeMeetingButton(onPressed: (){},text: "Schedule",icon:Icons.calendar_today),
                HomeMeetingButton(onPressed: (){},text: "Share Screen",icon:Icons.arrow_upward_rounded)
              ],
            ),

          ),
        const Expanded(
            child:Center(
              child: Text("Create/Join Meetings with just a click!",style: TextStyle(fontWeight: FontWeight.bold,color: Colors.grey),),))
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: footerColor,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          onTap: viewModel.onPageChanged,
          currentIndex: viewModel.page,
          items:const [
        BottomNavigationBarItem(backgroundColor: footerColor,icon: Icon(Icons.comment_bank),label: "Meet § Char"),
        BottomNavigationBarItem(backgroundColor: footerColor,icon: Icon(Icons.lock_clock),label: "Meetings"),
        BottomNavigationBarItem(backgroundColor: footerColor,icon: Icon(Icons.person_outline),label: "Contacts"),
        BottomNavigationBarItem(backgroundColor: footerColor,icon: Icon(Icons.settings_outlined),label: "Settings")
       ]
     ),

    );
  }

  @override
  HomeViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      HomeViewModel();
}
