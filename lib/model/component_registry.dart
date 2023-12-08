/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 model/component_registry.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import '../model/internal_component.dart';
import 'package:eliud_core_main/apis/registryapi/component/component_spec.dart';
import 'abstract_repository_singleton.dart';
import 'package:eliud_core_main/apis/registryapi/component/component_constructor.dart';
import 'package:eliud_core_main/apis/apis.dart';

import 'membership_dashboard_component_selector.dart';

/* 
 * Component registry contains a list of components
 */
class ComponentRegistry {
  /* 
   * Initialise the component registry
   */
  init(
    ComponentConstructor membershipDashboardComponentConstructorDefault,
    ComponentEditorConstructor membershipDashboardComponentEditorConstructor,
  ) {
    Apis.apis()
        .getRegistryApi()
        .addInternalComponents('eliud_pkg_membership_model', [
      "membershipDashboards",
    ]);

    Apis.apis().getRegistryApi().addDropDownSupporter(
        "membershipDashboards", DropdownButtonComponentFactory());
    Apis.apis().getRegistryApi().register(
        componentName: "membershipDashboards",
        componentConstructor: membershipDashboardComponentConstructorDefault);
    Apis.apis()
        .getRegistryApi()
        .addComponentSpec('eliud_pkg_membership_model', 'membership', [
      ComponentSpec(
          'membershipDashboards',
          membershipDashboardComponentConstructorDefault,
          MembershipDashboardComponentSelector(),
          membershipDashboardComponentEditorConstructor,
          ({String? appId}) => membershipDashboardRepository(appId: appId)!),
    ]);
    Apis.apis().getRegistryApi().registerRetrieveRepository(
        'eliud_pkg_membership_model',
        'membershipDashboards',
        ({String? appId}) => membershipDashboardRepository(appId: appId)!);
  }
}
