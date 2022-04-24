import 'package:pfe/models/activity_model.dart';

class Service {
  String imageUrl;
  String name;
  List<Activity> activities;

  Service({
    required this.imageUrl,
    required this.name,
    required this.activities,
  });
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

List<Service> services = [
  Service(
    imageUrl: 'images/audit.png',
    name: 'Audit de la sécurité',
    activities: activities,
  ),
  Service(
    imageUrl: 'images/conseil.png',
    name: 'Conseil et expertise',
    activities: activities,
  ),
  Service(
    imageUrl: 'images/management.png',
    name: 'Management de la sécurisation de l’information',
    activities: activities,
  ),
  Service(
    imageUrl: 'images/Gouvernance.png',
    name: 'Gouvernance de la sécurité de l’information',
    activities: activities,
  ),
  Service(
    imageUrl: 'images/Continuité.png',
    name: 'Continuité d’activité ISO 22301 :2019',
    activities: activities,
  ),
  Service(
    imageUrl: 'images/Sensibilisation.png',
    name: 'Sensibilisation à la sécurité',
    activities: activities,
  ),
];
