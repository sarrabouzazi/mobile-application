import 'package:flutter/material.dart';
import '../models/Formationmodel.dart';
import '../models/iconhelper.dart';


class Utils {

  static GlobalKey<NavigatorState> mainListNav = GlobalKey();
  static GlobalKey<NavigatorState> mainAppNav = GlobalKey();

  static List<Formationmodel> getFormationmodel() {
    return [
      Formationmodel(
          color:Colors.transparent,
          name:"PECB_ISO_27001_Lead_Implementer ",
          icon:IconFontHelper.MEATS,
          img:"Implementer",
          price: 100,

          subFormationmodels:[],
          desc:"Une évaluation de la sécurité est effectuée pour identifier la posture de sécurité actuelle d\'un système d\'information ou d\'une organisation. L\'évaluation fournit des recommandations d\'amélioration, ce qui permet à l\'organisation d\'atteindre un objectif de sécurité qui atténue les risques.",
      ),
      Formationmodel(
          color:Colors.transparent,
          name:"PECB_ISO_27001_Lead_Auditor ",
          icon:IconFontHelper.MEATS,
          img:"Auditor",
           price: 120,
          subFormationmodels:[],
          desc:"Maitrisez la conduite d’un audit relatif à un système de management de la sécurité de l’information et devenez certifié Lead Auditor ISO 27001 ",

      ),
      Formationmodel(
          color:Colors.transparent,
          name:"PECB_ISO_27005_Risk_Manager ",
          icon:IconFontHelper.MEATS,
          price: 150,
          desc:"Lors de la certification ISO 27005 vous allez apprécier et analyser des Risques du Système d’Information pour devenir Risk Manager ISO 27005 certifié. ",
          img:"Risk_Manager",
          subFormationmodels:[]
      )
    ];
  }}