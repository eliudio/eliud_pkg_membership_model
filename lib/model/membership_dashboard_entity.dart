/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 membership_dashboard_entity.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'dart:collection';
import 'dart:convert';
import 'package:eliud_core_helpers/base/entity_base.dart';
import 'package:eliud_core_main/model/entity_export.dart';
import 'package:eliud_pkg_etc_model/model/entity_export.dart';

class MembershipDashboardEntity implements EntityBase {
  final String? appId;
  final String? description;
  final List<MemberActionEntity>? memberActions;
  final StorageConditionsEntity? conditions;

  MembershipDashboardEntity({
    required this.appId,
    this.description,
    this.memberActions,
    this.conditions,
  });

  MembershipDashboardEntity copyWith({
    String? documentID,
    String? appId,
    String? description,
    List<MemberActionEntity>? memberActions,
    StorageConditionsEntity? conditions,
  }) {
    return MembershipDashboardEntity(
      appId: appId ?? this.appId,
      description: description ?? this.description,
      memberActions: memberActions ?? this.memberActions,
      conditions: conditions ?? this.conditions,
    );
  }

  List<Object?> get props => [
        appId,
        description,
        memberActions,
        conditions,
      ];

  @override
  String toString() {
    String memberActionsCsv =
        (memberActions == null) ? '' : memberActions!.join(', ');

    return 'MembershipDashboardEntity{appId: $appId, description: $description, memberActions: MemberAction[] { $memberActionsCsv }, conditions: $conditions}';
  }

  static MembershipDashboardEntity? fromMap(Object? o,
      {Map<String, String>? newDocumentIds}) {
    if (o == null) return null;
    var map = o as Map<String, dynamic>;

    var memberActionsFromMap = map['memberActions'];
    List<MemberActionEntity> memberActionsList;
    if (memberActionsFromMap != null) {
      memberActionsList = (map['memberActions'] as List<dynamic>)
          .map((dynamic item) => MemberActionEntity.fromMap(item as Map,
              newDocumentIds: newDocumentIds)!)
          .toList();
    } else {
      memberActionsList = [];
    }
    var conditionsFromMap = map['conditions'];
    if (conditionsFromMap != null) {
      conditionsFromMap = StorageConditionsEntity.fromMap(conditionsFromMap,
          newDocumentIds: newDocumentIds);
    }

    return MembershipDashboardEntity(
      appId: map['appId'],
      description: map['description'],
      memberActions: memberActionsList,
      conditions: conditionsFromMap,
    );
  }

  @override
  Map<String, Object?> toDocument() {
    final List<Map<String?, dynamic>>? memberActionsListMap =
        memberActions != null
            ? memberActions!.map((item) => item.toDocument()).toList()
            : null;
    final Map<String, dynamic>? conditionsMap =
        conditions != null ? conditions!.toDocument() : null;

    Map<String, Object?> theDocument = HashMap();
    if (appId != null) {
      theDocument["appId"] = appId;
    } else {
      theDocument["appId"] = null;
    }
    if (description != null) {
      theDocument["description"] = description;
    } else {
      theDocument["description"] = null;
    }
    if (memberActions != null) {
      theDocument["memberActions"] = memberActionsListMap;
    } else {
      theDocument["memberActions"] = null;
    }
    if (conditions != null) {
      theDocument["conditions"] = conditionsMap;
    } else {
      theDocument["conditions"] = null;
    }
    return theDocument;
  }

  @override
  MembershipDashboardEntity switchAppId({required String newAppId}) {
    var newEntity = copyWith(appId: newAppId);
    return newEntity;
  }

  static MembershipDashboardEntity? fromJsonString(String json,
      {Map<String, String>? newDocumentIds}) {
    Map<String, dynamic>? generationSpecificationMap = jsonDecode(json);
    return fromMap(generationSpecificationMap, newDocumentIds: newDocumentIds);
  }

  String toJsonString() {
    return jsonEncode(toDocument());
  }

  @override
  Future<Map<String, Object?>> enrichedDocument(
      Map<String, Object?> theDocument) async {
    return theDocument;
  }
}
