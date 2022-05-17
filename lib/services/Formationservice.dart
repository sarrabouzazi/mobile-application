import 'package:cloud_firestore/cloud_firestore.dart';
import '../models/Formationmodel.dart';

import '../models/Formationpart.dart';


class FormationmodelService {

  FirebaseFirestore? _instance;

  List<Formationmodel> _Formationmodels = [];

  List<Formationmodel> getFormationmodels() {
    return _Formationmodels;
  }

  Future<void> getFormationmodelsCollectionFromFirebase() async {
    _instance = FirebaseFirestore.instance;
    CollectionReference Formationmodels = _instance!.collection('orilla_fresca_data');

    DocumentSnapshot snapshot = await Formationmodels.doc('Formationmodels').get();
    if (snapshot.exists) {
      Map<String, dynamic> data = snapshot.data() as Map<String, dynamic>;
      var FormationmodelsData = data['Formationmodels'] as List<dynamic>;
      FormationmodelsData.forEach((catData) {
        Formationmodel cat = Formationmodel.fromJson(catData);
        _Formationmodels.add(cat);
      });
    }
  }


}