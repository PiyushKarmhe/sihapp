import 'package:get/get.dart';

class FilterController extends GetxController {
  RxList selectedYears = [].obs;
  RxList selectedProgram = [].obs;
  RxList selectedLevel = [].obs;
  RxList selectedInstType = [].obs;

  List<String> yearList = ["2020", " 2021", "2022"];
  List<String> programList = <String>[
    'All',
    "Applied Arts and Craft",
    "Architecture and town plan"
  ];
  List<String> levelList = ["All", "UG", "PG"];
  List<String> instTypeList = [
    "All",
    "Applied Arts and Craft",
    "Architecture and town Plan"
  ];
}
