import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:helpdesk/repositories/gitlab_datasource/gitlab_datasource_base.dart';
import 'package:helpdesk/repositories/project_repository/models/project.dart';

class IssueRepository extends GitLabDatasource<Project> {
  IssueRepository() : super('projects');

  @override
  Project createfromDocument(DocumentSnapshot doc) {
    Project project = Project.fromDocument(doc);
    return project;
  }

  Query<Object?> allByUserByCreatedAtAsc(String authorID) => collectionRef
      .where('authorID', isEqualTo: authorID)
      .orderBy('createdAt', descending: false);

  Query<Object?> get allBooksByCreatedAtAsc => collectionRef
      .where('type', isEqualTo: 'book')
      .orderBy('createdAt', descending: false);
}
