import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:final_app/models/history_model.dart';

abstract class Services { 
  Future<List<HistoryModel>> gethistory();
}

//class CalculatorService extends Services { 
 // @override 
 // Future<List<HistoryModel>> gethistory() async { 
  //  QuerySnapshot snapshot = 
   // await FirebaseFirestore.instance.collection('Calculator_History').get();

    //AllHistoryModel historyModel = AllHistoryModel.fromSnapshot(snapshot);
    //return historyModel.historyModel;//
  
