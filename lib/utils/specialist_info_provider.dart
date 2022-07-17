import 'dart:convert';

import '../models/specialist_info.dart';
import 'package:http/http.dart' as http;

class SpecialistInfoProvider
{
  Future<List<SpecialistInfo>> getAllSpecialists  () async {
    List<SpecialistInfo> specInfo = [];
var body = {
  "Name": "Vivek"
};


    final response = await http
        .post(Uri.parse('https://karkinos-in-innovation-hspa.herokuapp.com/searchphysician'), body: json.encode(body));

    try{

      if (response.statusCode == 200) {
        dynamic responseBody = jsonDecode(response.body) ;
        for(var i =0; i< responseBody['list'].length; i++)
        {

          if(responseBody['list'][i]['message']['catalog']['fulfillments'].length >0)
          {
            for(var j=0; j < responseBody['list'][i]['message']['catalog']['fulfillments'].length; j++)
              {
                specInfo.add(SpecialistInfo.fromJson(responseBody['list'][i]['message']['catalog']['fulfillments'][j]['agent']));
              }
          }
        }
      } else {
        // If the server did not return a 200 OK response,
        // filling with default data
        var spec1 = SpecialistInfo(name: "Dr. Marisela R. Enders", consultationFee: "500", designation: "Oncologist",
            knownLanguages: ["English", "Kannada"], location: "Bangalore", qualifications: ["MBBS", "MS", "DNB"], exp: "21");


        var spec2 = SpecialistInfo(name: "Dr. Enders R. Marisela", consultationFee: "499", designation: "Oncologist",
            knownLanguages: ["English", "Kannada", "Hindi"], location: "Chennai", qualifications: ["MBBS", "MS"], exp: "25");

        specInfo.add(spec1);
        specInfo.add(spec2);
      }
    }catch(e)
    {
    }



    return specInfo;
  }
}