import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:my_diary/controllers/user_controller.dart';

class ChangeUsernameScreen extends StatefulWidget {
  const ChangeUsernameScreen({Key? key}) : super(key: key);

  @override
  State<ChangeUsernameScreen> createState() => _ChangeUsernameScreenState();
}

class _ChangeUsernameScreenState extends State<ChangeUsernameScreen> {
  final UserController _userController = Get.find(tag: "user_controller");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextField(
              onChanged: (value) {
                if (value != "") {
                  _userController.changeUsername(value);
                }
              },
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () {
                  //Navigation.pop() ile aynı, geriye döndürüyor.
                  Get.back();
                },
                child: Text("change_username".tr))
          ],
        ),
      ),
    );
  }
}
