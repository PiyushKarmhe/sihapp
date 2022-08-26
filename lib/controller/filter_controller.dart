import 'package:get/get.dart';

class FilterController extends GetxController {
  RxList selectedYears = [].obs;
  RxList selectedProgram = [].obs;
  RxList selectedLevel = [].obs;
  RxList selectedInstType = [].obs;
  RxList selectedState = [].obs;
  RxList selectedMin = [].obs;
  RxList selectedWomen = [].obs;
  RxList selectedProgramHn = [].obs;
  RxList selectedInstTypeHn = [].obs;
  RxList selectedStateHn = [].obs;

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
  List<String> hnProgram = [
    "सब",
    "अनुप्रयुक्त कला शिल्प",
    "टाउन एंड सिटी प्लानिंग",
    "वास्तुकला और योजना",
    "योजना",
    "डिज़ाइन",
    "नगर नियोजन",
    "इंजीनियरिंग और प्रौद्योगिकी",
    "मैनेजमेंट",
    "कम्प्यूटर एप्लीकेशन में स्नातकोत्तर",
    "फार्मेसी",
    "होटल मैनेजमेंट"
  ];
  List<String> hnInstList = [
    "सब",
    "निजी",
    "केंद्रीय विश्वविद्यालय",
    "मानद विश्वविद्यालय (GOVT)",
    "मानद विश्वविद्यालय (PVT)",
    "सहायता प्राप्त",
    "निजी-स्व-वित्तपोषण",
    " राज्य सरकार विश्वविद्यालय",
    " राज्य निजी विश्वविद्यालय",
    "गैर सहायता प्राप्त - निजी",
    "विश्वविद्यालय प्रबंधित",
    "विश्वविद्यालय प्रबंधित-सरकारी",
    "विश्वविद्यालय प्रबंधित-निजी"
  ];
  List<String> hnState = [
    "सब",
    "आंध्र प्रदेश",
    "अरुणाचल प्रदेश",
    "असम",
    "छत्तीसगढ़",
    "गोवा",
    "गुजरात",
    "हरियाणा",
    "हिमाचल प्रदेश",
    "झारखण्ड",
    "कर्नाटक",
    "केरल",
    "मध्यप्रदेश",
    "महाराष्ट्र",
    "मणिपुर",
    "मेघालय",
    "मिजोरम",
    "नागालैंड",
    "ओडिशा",
    "पंजाब",
    "राजस्थान",
    "सिक्किम",
    "तमिलनाडु",
    "तेलंगाना",
    "त्रिपुरा",
    "उत्तरप्रदेश",
    "पश्चिम बंगाल"
  ];
}
