import 'package:hive/hive.dart';

part 'history_model_Adapter.dart';

@HiveType(typeId: 0)
class HistoryModel extends HiveObject {
  @HiveField(0)
  late String title;
  @HiveField(1)
  late String subtitle;
}