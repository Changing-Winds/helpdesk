// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:helpdesk/repositories/firestore_datasource/models/entity.dart';
import 'package:helpdesk/repositories/issue_repository/models/models.dart';

part 'issue.freezed.dart';
part 'issue.g.dart';

@freezed
class Issue with _$Issue {
  const Issue._();

  @Implements<Entity>()
  factory Issue({
    @JsonKey(ignore: true) String? id,
    required String authorID,
    required String title,
    String? abstract,
    required DateTime createdAt,
    DateTime? updatedAt,
    @Default(Criticity.minor) Criticity criticity,
    @Default(Product.flatguide) Product product,
    @Default(Application.adminApp) Application application,
    @Default(Device.windowsDekstop) Device device,
  }) = _Issue;

  factory Issue.fromJson(Map<String, dynamic> json) => _$IssueFromJson(json);
}
