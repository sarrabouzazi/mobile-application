import 'package:pfe/models/activity_model.dart';

class Formation {
  String imageUrl;
  String name;
  String desc;

  Formation({
    required this.imageUrl,
    required this.name,
    required this.desc,
  });

  get length => null;
}


final List<Formation> formations = [
  Formation(
    imageUrl: 'images/Implementer.png',
    name: 'PECB_ISO_27001_Lead_Implementer',
    desc:        ' 1 Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d\'un système d\'information ou d\'une organisation. L\'évaluation fournit des recommandations d\'amélioration, ce qui permet à l\'organisation d\'atteindre un objectif de sécurité qui atténue les risques.',

  ),
  Formation(
    imageUrl: 'images/Auditor.png',
    name: 'PECB_ISO_27001_Lead_Auditor',
    desc:        ' 2 Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d\'un système d\'information ou d\'une organisation. L\'évaluation fournit des recommandations d\'amélioration, ce qui permet à l\'organisation d\'atteindre un objectif de sécurité qui atténue les risques.',

  ),
  Formation(
    imageUrl: 'images/Risk_Manager.png',
    name: 'PECB_ISO_27005_Risk_Manager',
    desc:        '3 Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d\'un système d\'information ou d\'une organisation. L\'évaluation fournit des recommandations d\'amélioration, ce qui permet à l\'organisation d\'atteindre un objectif de sécurité qui atténue les risques.',

  ),
];
