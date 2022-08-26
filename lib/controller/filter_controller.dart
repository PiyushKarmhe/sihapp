import 'package:get/get.dart';

class FilterController extends GetxController {
  RxList selectedYears = [].obs;
  RxList selectedProgram = [].obs;
  RxList selectedLevel = [].obs;
  RxList selectedInstType = [].obs;
  RxList selectedState = [].obs;
  RxList selectedMin = [].obs;
  RxList selectedWomen = [].obs;

  List<String> yearList = [
    "2022-23",
    "2021-22",
    "2020-21",
    "2019-20",
    "2018-19",
    "2017-18",
    "2016-17",
    "2015-16",
    "2014-15",
    "2013-14",
    "2012-13"
  ];
  List<String> programList = <String>[
    'All',
    "Applied Arts and Craft",
    "Architecture and town plan",
    "Architecture and Planning",
    "Architecture",
    "Planning",
    "Design",
    "Town Planning",
    "Engineering and Technology",
    "Management",
    "MCA",
    "Pharmacy",
    "Hotel Management and Catering"
  ];
  List<String> levelList = ["All", "UG", "PG", "Diploma"];
  List<String> instTypeList = [
    "All",
    "Private",
    "Central University",
    "Deemed to be University(Govt)",
    "Deemed to be University(Pvt)",
    "Deemed University(Government)",
    "Deemed University(Private)",
    "Government",
    "Govt aided",
    "Private-Aided",
    "Private-Self Financing",
    "State Government University",
    "State Private University",
    "Unaided - Private",
    "University Managed",
    "University Managed-Govt",
    "University Managed-Private"
  ];
  List<String> stateList = [
    "All",
    "Andaman/Nicobar",
    "Andhra Pradesh",
    "Arunachal Pradesh",
    "Assam",
    "Bihar",
    "Chandigarh",
    "Chhattisgarh",
    "Dadra and Nagar Haveli",
    "Daman and Diu",
    "Delhi",
    "Goa",
    "Gujarat",
    "Haryana",
    "Himachal Pradesh",
    "Jammu and Kashmir",
    "Jharkhand",
    "Karnataka",
    "Kerala",
    "Madhya Pradesh",
    "Maharashtra",
    "Manipur",
    "Meghalaya",
    "Mizoram",
    "Nagaland",
    "Odisha",
    "Orissa",
    "Puducherry",
    "Punjab",
    "Rajasthan",
    "Sikkim",
    "Tamil Nadu",
    "Telangana",
    "Tripura",
    "Uttar Pradesh",
    "Uttarakhand",
    "West Bengal"
  ];
  List<String> minorityList = ["N", "Y"];
  List<String> womenList = ["N", "Y"];
}
