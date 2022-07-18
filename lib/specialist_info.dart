import 'package:flutter/material.dart';
import 'package:symptom_checker/profile_widget.dart';
import 'package:symptom_checker/utils/specialist_info_provider.dart';

import 'models/specialist_info.dart';

class SpecialistInFo extends StatelessWidget {

  final SpecialistInfo specialistInfo;
  const SpecialistInFo({required this.specialistInfo, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: Column(
          children: [
            buildOption("${this.specialistInfo.exp} Years Exp.", false, Alignment.topRight, Colors.white),
            Row(
                children: [
                  Column(
                    children: [
                      ProfileWidget(imagePath: './assets/doctor.png')
                    ],
                  ),
                  const SizedBox(width: 24),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: getQualificationWidgets(),
                      ),
                      const SizedBox(height: 6),
                      Text(
                        this.specialistInfo.name,
                        style: TextStyle(color: Color(0xFF093863), fontWeight: FontWeight.bold, fontSize: 24 ),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        children: getKnowLanguageWidgets(),
                      )
                    ],
                  )
                ],
            ),
            const SizedBox(height: 12),
            Row(
              children: [
                buildOption(this.specialistInfo.designation, true, Alignment.centerLeft, Colors.deepOrange),
                const SizedBox(width: 42),
                buildLocation()
              ],
            ),
            const SizedBox(height: 24),
            Row(
              children: [
                buildConsultationFee(),
              ],
            ),

            buildOption("Book Now", false, Alignment.bottomRight, Color(0xFF093863)),
          ],
        ),
      ),
    );
  }

  List<Widget> getQualificationWidgets()
  {
    List<Widget> list =[];
    for(var i = 0; i < this.specialistInfo.qualifications.length; i++){
      list.add(new Text(this.specialistInfo.qualifications[i]+", "));
    }
    return list;
  }

  List<Widget> getKnowLanguageWidgets(){
    List<Widget> list = [];
    for(var i = 0; i < this.specialistInfo.knownLanguages.length; i++){
      list.add(buildOption(this.specialistInfo.knownLanguages[i], false, Alignment.centerLeft, Colors.white70));
    }
    return list;
  }

  Widget buildOption(String optionName, bool isSelected, Alignment allignment, Color colors)
  {
    return Container(
      alignment: allignment,
        child: ChoiceChip(
            padding: EdgeInsets.only(left: 5, right: 5),
            label: Text(
                optionName,
                style: TextStyle(
                    color: isSelected || (optionName == 'Book Now')
                        ? Colors.white
                        :Color(0xFF5D5D5D),
                    fontFamily: 'Montserrat_regular',
                    fontSize: 14.0
                )
            ),
            backgroundColor: colors,
            selectedColor: Color(0xFF0F4391),
            shape: StadiumBorder(
                side: BorderSide(
                  color: Color(0xFFD2D2D2),
                )),
            elevation: 0,
            selected: false,
            onSelected:(selected) {
            }
        )
    );
  }

  Widget buildLocation()
  {
    return Wrap(
      children: [
        Icon(Icons.location_on_outlined),
        Text(this.specialistInfo.location)
      ],
    );
  }

  Widget buildConsultationFee()
  {
   return Wrap(
     crossAxisAlignment: WrapCrossAlignment.start,
     children: [
       Text('~₹ ', style: TextStyle(fontWeight: FontWeight.bold)),
       Text(this.specialistInfo.consultationFee.toString(), style: TextStyle(fontWeight: FontWeight.bold),),
       Text(" Consultation Fee")
     ],
   );
  }
}
