import 'package:pfe/models/activity_model.dart';

class Formation {
  String imageUrl;
  String name;
  List<Activity> activities;
  Formation({
    required this.imageUrl,
    required this.name,
    required this.activities,
  });

  get length => null;
}

List<Activity> activities = [
  Activity(
    imageUrl: 'images/audit.png',
    name:
        'Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d\'un système d\'information ou d\'une organisation. L\'évaluation fournit des recommandations d\'amélioration, ce qui permet à l\'organisation d\'atteindre un objectif de sécurité qui atténue les risques.',
  ),
  Activity(
    imageUrl: 'images/stmarksbasilica.jpg',
    name:
        'Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d\'un système d\'information ou d\'une organisation. L\'évaluation fournit des recommandations d\'amélioration, ce qui permet à l\'organisation d\'atteindre un objectif de sécurité qui atténue les risques.',
  ),
];
final List<Formation> formations = [
  Formation(
    imageUrl: 'images/Implementer.png',
    name: 'PECB_ISO_27001_Lead_Implementer',
    activities: activities,
  ),
  Formation(
    imageUrl: 'images/Auditor.png',
    name: 'PECB_ISO_27001_Lead_Auditor',
    activities: activities,
  ),
  Formation(
    imageUrl: 'images/Risk_Manager.png',
    name: 'PECB_ISO_27005_Risk_Manager',
    activities: activities,
  ),
];
