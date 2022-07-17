import 'package:flutter/material.dart';
import 'package:symptom_checker/profile_widget.dart';
import 'package:symptom_checker/utils/user_info_provider.dart';

import 'consultant_list_page.dart';
import 'models/user.dart';

class SymptomReport extends StatelessWidget {
  const SymptomReport({Key? key}) : super(key: key);

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
          buildReportCard(),
          const SizedBox(height: 24),
          buildBookConsultationWidget(context)
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
        "Report",
        style: TextStyle(color: Colors.grey),
      )
    ],
  );

  Widget buildReportCard() =>  Center(
    child: Card(
      child: SizedBox(
        child: Column(
          children: [
            const SizedBox(height: 24),
            Text(
                "ABHA Number",
              style: TextStyle(fontSize: 25),),
            buildAbhaField(),
            const SizedBox(height: 24),
            Text(
              "Symptom Report",
              style: TextStyle(fontSize: 25),),
            const SizedBox(height: 10),
            buildReportScale(),
            const SizedBox(height: 10),
            Text(
              "Moderate Symptoms of",
              style: TextStyle(fontSize: 18),),
            Text(
              "Breast Cancer",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    ),
  );

  Widget buildAbhaField() => Center(child: TextField(
    style: TextStyle(color: Colors.grey),
  readOnly: true,
  decoration: InputDecoration(
  prefixIcon: Padding(
  padding:  EdgeInsets.all(10.0),
  child: Image.asset(
  './aadhar_verify_true.png',
  width: 40,
  height: 40,
  fit: BoxFit.fill,
  ),
  ),
  label: Text("123456789",
      style: TextStyle(color: Colors.grey)),
  enabled: false,
  enabledBorder:  OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(20.0)),
  borderSide:  BorderSide(
  color: Colors.grey,
  ),
  ),
  focusedBorder: OutlineInputBorder(
  borderRadius: BorderRadius.all(Radius.circular(10.0)),
  borderSide: BorderSide(color: Colors.blue),
  ),
  ),
  ));

  Widget buildReportScale() => Container(
    child: Image.asset(
      './ReportScale.png',
      width: 300,
      height: 40,
      fit: BoxFit.fill,
    ),
  );

  Widget buildBookConsultationWidget(BuildContext context) => Card(
    child: Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("doctor.png"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
        children:  [
          SizedBox(height: 24),
          Text(
              "We suggest you to",
            style: TextStyle(color: Colors.grey, ),
          ),
          Text(
            "Book a",
            style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 24 ),
          ),
          Text(
            "Consultation",
            style: TextStyle(color: Colors.blueGrey, fontWeight: FontWeight.bold, fontSize: 24 ),
          ),
          Text(
            "As yo have moderate symptoms of",
            style: TextStyle(color: Colors.grey, ),
          ),
          Text(
          "Breast Cancer",
          style: TextStyle(color: Colors.grey, fontWeight: FontWeight.bold, fontSize: 18 ),
    ),
          SizedBox(height: 24),
          buildConsultationButton(context),
          SizedBox(height: 20),
        ],
      ),
    ),
  );

  Widget buildConsultationButton(BuildContext context) => ElevatedButton(
    style: ElevatedButton.styleFrom(textStyle: const TextStyle(fontSize: 25, color: Colors.blueGrey)),
    onPressed: () {
      Navigator.of(context).push(MaterialPageRoute(builder: (context) => ConsultantList()));
    },
    child: const Text('Book a Consultation',
        style: TextStyle(fontSize: 24, color: Colors.white)),
  );
}
