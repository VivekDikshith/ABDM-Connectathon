class SpecialistInfo
{
  final String name;
  final List<String> qualifications;
  final List<String> knownLanguages;
  final String designation;
  final String location;
  final String consultationFee;
  final String exp;

   const SpecialistInfo({required this.name, required this.consultationFee, required this.designation,
  required this.knownLanguages, required this.location, required this.qualifications, required this.exp});

   factory SpecialistInfo.fromJson(Map<String, dynamic> json)
   {
     var infoObj = json;
     return SpecialistInfo(
         name: infoObj['name'],
         qualifications: [infoObj['tags']['@abdm/gov/in/education']],
         knownLanguages : [infoObj['tags']['@abdm/gov/in/languages']],
         designation: infoObj['tags']['@abdm/gov/in/speciality'],
         location: "Info Missing",
         consultationFee: infoObj['tags']['@abdm/gov/in/first_consultation'],
       exp: infoObj['tags']['@abdm/gov/in/experience']
     );
   }
}