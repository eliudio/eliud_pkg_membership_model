/*
       _ _           _ 
      | (_)         | |
   ___| |_ _   _  __| |
  / _ \ | | | | |/ _` |
 |  __/ | | |_| | (_| |
  \___|_|_|\__,_|\__,_|
                       
 
 membership_dashboard_form_event.dart
                       
 This code is generated. This is read only. Don't touch!

*/

import 'package:equatable/equatable.dart';
import 'package:meta/meta.dart';
import 'package:eliud_core_main/model/model_export.dart';
import 'package:eliud_pkg_etc_model/model/model_export.dart';
import 'package:eliud_pkg_membership_model/model/model_export.dart';

@immutable
abstract class MembershipDashboardFormEvent extends Equatable {
  const MembershipDashboardFormEvent();

  @override
  List<Object?> get props => [];
}

class InitialiseNewMembershipDashboardFormEvent
    extends MembershipDashboardFormEvent {}

class InitialiseMembershipDashboardFormEvent
    extends MembershipDashboardFormEvent {
  final MembershipDashboardModel? value;

  @override
  List<Object?> get props => [value];

  InitialiseMembershipDashboardFormEvent({this.value});
}

class InitialiseMembershipDashboardFormNoLoadEvent
    extends MembershipDashboardFormEvent {
  final MembershipDashboardModel? value;

  @override
  List<Object?> get props => [value];

  InitialiseMembershipDashboardFormNoLoadEvent({this.value});
}

class ChangedMembershipDashboardDocumentID
    extends MembershipDashboardFormEvent {
  final String? value;

  ChangedMembershipDashboardDocumentID({this.value});

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'ChangedMembershipDashboardDocumentID{ value: $value }';
}

class ChangedMembershipDashboardAppId extends MembershipDashboardFormEvent {
  final String? value;

  ChangedMembershipDashboardAppId({this.value});

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'ChangedMembershipDashboardAppId{ value: $value }';
}

class ChangedMembershipDashboardDescription
    extends MembershipDashboardFormEvent {
  final String? value;

  ChangedMembershipDashboardDescription({this.value});

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'ChangedMembershipDashboardDescription{ value: $value }';
}

class ChangedMembershipDashboardMemberActions
    extends MembershipDashboardFormEvent {
  final List<MemberActionModel>? value;

  ChangedMembershipDashboardMemberActions({this.value});

  @override
  List<Object?> get props => [value];

  @override
  String toString() =>
      'ChangedMembershipDashboardMemberActions{ value: $value }';
}

class ChangedMembershipDashboardConditions
    extends MembershipDashboardFormEvent {
  final StorageConditionsModel? value;

  ChangedMembershipDashboardConditions({this.value});

  @override
  List<Object?> get props => [value];

  @override
  String toString() => 'ChangedMembershipDashboardConditions{ value: $value }';
}
