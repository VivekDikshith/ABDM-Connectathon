import 'package:flutter/material.dart';
import 'package:symptom_checker/models/user.dart';
import 'package:symptom_checker/profile_widget.dart';
import 'package:symptom_checker/response_capture_form.dart';
import 'package:symptom_checker/utils/user_info_provider.dart';

class SymptomChecker extends StatefulWidget {
  const SymptomChecker({Key? key}) : super(key: key);

  @override
  State<SymptomChecker> createState() => _SymptomCheckerState();
}

class _SymptomCheckerState extends State<SymptomChecker> {
  @override
  Widget build(BuildContext context) {
    final user = UserInfoProvider.userInfo;

    return Scaffold(
      body: ListView(
        physics: BouncingScrollPhysics(),
        children: [
          ProfileWidget(imagePath: user.imagePath),
          const SizedBox(height: 24),
          buildName(user),
          const SizedBox(height: 24),
          ResponseCaptureForm()
        ],
      ),
    );
  }

  Widget buildName(User user) => Column(
    children: [
      Text(
        user.fullName,
        style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24),
      ),
      const SizedBox(height: 4),
      Text(
        "Symptom Checker",
        style: TextStyle(color: Colors.grey),
      )
    ],
  );


}
