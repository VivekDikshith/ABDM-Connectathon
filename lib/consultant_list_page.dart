import 'package:flutter/material.dart';
import 'package:symptom_checker/search_bar.dart';
import 'package:symptom_checker/specialist_info.dart';
import 'package:symptom_checker/utils/specialist_info_provider.dart';

import 'models/specialist_info.dart';

class ConsultantList extends StatefulWidget {
  const ConsultantList({Key? key}) : super(key: key);

  @override
  State<ConsultantList> createState() => _ConsultantListState();
}

class _ConsultantListState extends State<ConsultantList> {
  late Future<List<SpecialistInfo>> futureSpecInfo;

  @override
  void initState() {
    super.initState();
    futureSpecInfo = SpecialistInfoProvider().getAllSpecialists();
  }

  @override
  Widget build(BuildContext context) {

    return FutureBuilder<List<SpecialistInfo>>(
        future: futureSpecInfo,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return  Scaffold(
              body: ListView(
                physics: BouncingScrollPhysics(),
                children: [
                  const SizedBox(height: 16),
                  Text("Top",style: TextStyle(color: Colors.grey, fontSize: 16),),
                  Text("Specialist  Doctors",style: TextStyle(color: Colors.blueGrey, fontSize: 22, fontWeight: FontWeight.bold),),
                  const SizedBox(height: 24),
                  SearchBarWidget(
                    searchBarHintText: "Search",
                    onTextChanged: (text) {
                    },
                  ),
                  const SizedBox(height: 24),
                  Column(
                    children: getSpecialistWidgets(snapshot.data??[]),
                  )
                ],
              ),
            );
          }

          return const CircularProgressIndicator();
        }
    );


  }

  List<Widget> getSpecialistWidgets(List<SpecialistInfo> data)
  {
    List<Widget> list = [];

    for(var i=0;i< data.length; i++)
      {
        list.add(SpecialistInFo(specialistInfo: data[i]));
      }

    return list;
  }
}
