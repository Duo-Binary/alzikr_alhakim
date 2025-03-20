import 'metadata.dart';
import 'record.dart';

class AppVersionInfoModel {
  final Record record;
  Metadata? metadata;

  AppVersionInfoModel({required this.record, this.metadata});

  factory AppVersionInfoModel.fromJson(Map<String, dynamic> json) {
    return AppVersionInfoModel(
      record: Record.fromJson(json['record'] as Map<String, dynamic>),
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
    );
  }
}
