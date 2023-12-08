/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/internal_component.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:eliud_core_main/apis/registryapi/component/component_constructor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:eliud_core_helpers/query/query_tools.dart';

import 'package:eliud_pkg_membership_model/model/membership_dashboard_list_bloc.dart';
//import 'package:eliud_pkg_membership_model/model/membership_dashboard_list.dart';
import 'package:eliud_pkg_membership_model/model/membership_dashboard_dropdown_button.dart';
import 'package:eliud_pkg_membership_model/model/membership_dashboard_list_event.dart';

import 'package:eliud_pkg_membership_model/model/abstract_repository_singleton.dart';
import 'package:eliud_core_main/model/model_export.dart';

typedef DropdownButtonChanged = Function(String? value, int? privilegeLevel);

class DropdownButtonComponentFactory implements ComponentDropDown {
  @override
  dynamic getModel({required AppModel app, required String id}) {
    return null;
  }

  @override
  bool supports(String id) {
    if (id == "membershipDashboards") return true;
    return false;
  }

  @override
  Widget createNew(
      {Key? key,
      required AppModel app,
      required String id,
      int? privilegeLevel,
      Map<String, dynamic>? parameters,
      String? value,
      DropdownButtonChanged? trigger,
      bool? optional}) {
    if (id == "membershipDashboards") {
      return DropdownButtonComponent(
          app: app,
          componentId: id,
          value: value,
          privilegeLevel: privilegeLevel,
          trigger: trigger,
          optional: optional);
    }

    return Text("Id $id not found");
  }
}

typedef Changed = Function(String? value, int? privilegeLevel);

class DropdownButtonComponent extends StatelessWidget {
  final AppModel app;
  final String? componentId;
  final String? value;
  final Changed? trigger;
  final bool? optional;
  final int? privilegeLevel;

  DropdownButtonComponent(
      {required this.app,
      this.componentId,
      this.privilegeLevel,
      this.value,
      this.trigger,
      this.optional});

  @override
  Widget build(BuildContext context) {
    if (componentId == 'membershipDashboards') {
      return _membershipDashboardBuild(context);
    }
    return Text('Component with componentId == $componentId not found');
  }

  Widget _membershipDashboardBuild(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<MembershipDashboardListBloc>(
          create: (context) => MembershipDashboardListBloc(
            eliudQuery: EliudQuery(theConditions: [
              EliudQueryCondition('conditions.privilegeLevelRequired',
                  isEqualTo: privilegeLevel ?? 0),
              EliudQueryCondition('appId', isEqualTo: app.documentID),
            ]),
            membershipDashboardRepository:
                membershipDashboardRepository(appId: app.documentID)!,
          )..add(LoadMembershipDashboardList()),
        )
      ],
      child: MembershipDashboardDropdownButtonWidget(
          app: app,
          value: value,
          privilegeLevel: privilegeLevel,
          trigger: trigger,
          optional: optional),
    );
  }
}
