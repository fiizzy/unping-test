import 'package:get/get.dart';
import '../../../controllers/personal_information.dart';
import '../../../controllers/team_infomration.dart';
import '../../../utils/form_persistence.dart';

void teamInformationInformationListener() {
  TeamInformationController teamInformationController = Get.find();
  final PersistFormData persistFormData = PersistFormData();

  //Initialize listener to the form field changes
  teamInformationController.teamNameTextController.addListener(() {
    //set formData persistence here
    persistFormData.persistedTeamNameData =
        teamInformationController.teamNameTextController.text;
  });

  teamInformationController.teamSizeTextController.addListener(() {
    persistFormData.persistedTeamSizeData =
        teamInformationController.teamSizeTextController.text;
  });
  teamInformationController.roleTextController.addListener(() {
    persistFormData.persistedRoleData =
        teamInformationController.roleTextController.text;
  });
}
