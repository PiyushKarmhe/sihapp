import 'dart:convert';
import 'dart:developer';

import 'package:flutter/services.dart';
import 'package:get/get.dart';

class DbController extends GetxController {
  dynamic year = [];
  dynamic program = [];
  dynamic level = [];
  dynamic institutionType;
  dynamic state;
  dynamic minority;
  dynamic women;
  dynamic institute;
  dynamic student;
  dynamic instStat;
  dynamic data;
  Future<void> readJson() async {
    try {
      final String response =
          await rootBundle.loadString('assets/sihdata.json');
      data = await json.decode(response);
      year = data["Year"] ?? '#';
      program = data["Program"] ?? '#';
      level = data["Level"] ?? '#';
      institutionType = data["Institution_Type"] ?? '#';
      state = data["State"] ?? '#';
      minority = data["Minority"] ?? '#';
      women = data["Women"] ?? '#';
      institute = data["Institute"] ?? '#';
      student = data["Student"] ?? '#';
      instStat = data["newInst"] ?? '#';
    } catch (e) {
      log("Error" + e.toString());
    }
  }

  List satistics(List l) {
    //function
    List<String> insti = [];
    int ti = 0, ni = 0, ci = 0, tin = 0, ge = 0, be = 0, f = 0, sp = 0, p = 0;
    for (int i = 0; i < year.length; i++) {
      print("in1");
      //  &&
      //     (l[1].contains(level[i]) || l[1].length == 0) &&
      //     (l[2].contains(state[i]) || l[2].length == 0) &&
      //     (l[3].contains(women[i]) || l[3].length == 0) &&
      //     (l[4].contains(program[i]) || l[4].length == 0) &&
      //     (l[5].contains(institutionType[i]) || l[5].length == 0) &&
      //     (l[6].contains(minority[i]) || l[6].length == 0)
      if ((l[0].contains(year[i]) || l[0].length == 0) &&
          (l[1].contains(level[i]) || l[1].length == 0) &&
          (l[2].contains(state[i]) || l[2].length == 0) &&
          (l[3].contains(women[i]) || l[3].length == 0) &&
          (l[4].contains(program[i]) || l[4].length == 0) &&
          (l[5].contains(institutionType[i]) || l[5].length == 0) &&
          (l[6].contains(minority[i]) || l[6].length == 0)) {
        print("in");
        if (women[i] == "Y" && student[i] == "Y") {
          ++ge;
        }
        if (women[i] == "N" && student[i] == "Y") {
          ++be;
        }
        if (student[i] == "N") {
          ++f;
        } else if (student[i] == "PN" || student[i] == "PP") {
          ++sp;
        } else if (student[i] == "PP") {
          ++p;
        }
        insti.add(institute[i]);
        // print(instStat.length);
        if (instStat[i] == "N") {
          ++ni;
        } else if (instStat[i] == "C") {
          ++ci;
        }
      }
    }
    tin = ge + be;
    ti = insti.toSet().length;
    return [ti, ni, ci, tin, ge, be, f, sp, p];
  }

  @override
  void onInit() async {
    // TODO: implement onInit
    await readJson();
    var res = satistics([
      [],
      [],
      [],
      [],
      ["Architecture"],
      [],
      []
    ]);
    print(res);
    print([
      [],
      [],
      [],
      [],
      ["Architecture"],
      [],
      []
    ]);
    super.onInit();
  }
}
