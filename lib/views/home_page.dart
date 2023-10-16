import 'package:flutter/material.dart';
import 'package:udsp59/features/module_list_widget.dart';
import 'package:udsp59/features/title_widget.dart';

List<Map> modules = [
  {
    "title": "Protection/Alerte",
    "icon": "assets/icons/",
    "content": {
      "Repérer le danger": [
        "Supprimer le danger de manière définitive",
        "Réaliser un dégagement d'urgence",
        "Réaliser un balisage de sécurité",
      ],
      "Contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
    }
  },
  {
    "title": "Malaise",
    "icon": "assets/icons/",
    "content": {
      "Mettre la victime au repos": [
        "Allongée",
        "Demi-assise si difficulté à respirer",
      ],
      "Contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
    }
  },
  {
    "title": "Inconscience",
    "icon": "assets/icons/",
    "content": {
      "Apprécier la conscience": [],
      "Basculer la tête en arrière": [],
      "Apprécier la respiration pendant 10 secondes": [],
      "Mettre en PLS si la victime est inconsciente et respire": [],
      "Contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
      "Couvrir et surveiller la victime": [],
    }
  },
  {
    "title": "Réanimation Cardio-pulmonaire",
    "icon": "assets/icons/",
    "content": {
      "Apprécier la conscience": [],
      "Basculer la tête en arrière": [],
      "Apprécier la respiration pendant 10 secondes": [],
      "Si la respiration est absente, contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
      "Poser un défibrillateur s'il est visuellement disponible": [],
      "Si adulte, effectuer": [
        "30 compressions",
        "2 insufflations",
      ],
      "Si enfant, effectuer": [
        "15 compressions",
        "2 insufflations",
      ],
    }
  },
  {
    "title": "Défibrillateur",
    "icon": "assets/icons/",
    "content": {
      "Allumer l'appareil": [],
      "Suivre les instructions": [],
      "Contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
      "Laisser l'appareil en place jusqu'à l'arrivée des secours": [],
    }
  },
  {
    "title": "Traumatismes",
    "icon": "assets/icons/",
    "content": {
      "Demander à la victime de ne pas bouger": [],
      "Contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
      "Maintenez la tête sans la déplacer si atteinte tête, nuque ou dos": [],
      "Couvrir et surveiller la victime": [],
    }
  },
  {
    "title": "Brûlure",
    "icon": "assets/icons/",
    "content": {
      "Refroidir avec de l'eau tempérée": [
        "Jusqu'à disparition de la douleur pour les brûlures simples",
        "Jusqu'à l'arrivée des secours pour les brûlures graves",
      ],
      "Contacter les secours en cas de brûlures graves": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
      "Aucun produit ne doit être appliqué sans avis médical": [],
    }
  },
  {
    "title": "Hémorragie",
    "icon": "assets/icons/",
    "content": {
      "Appuyer à l'endroit qui saigne": [],
      "Allonger la victime": [],
      "Contacter les secours": [
        "18",
        "112",
        "15",
      ],
      "Ne raccrochez jamais avant accord des secours": [],
      "Si c'est une plaie grave sans hémoragie, position": [
        "Plaie thorax => demi-assise",
        "Plaie abdomen => allongée, jambes relevées",
        "Plaie oeil => allongée, tête calée, yeux fermés",
      ],
    }
  }
];

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const TitleWidget(),
            const SizedBox(
              height: 40,
            ),
            Text(
              "Une URGENCE ?",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
                color: Theme.of(context).colorScheme.tertiary,
              ),
            ),
            const SizedBox(
              height: 5,
            ),
            Text(
              "Appelez directement en cliquant\nsur ce bouton",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 15,
                height: 1.25,
                fontWeight: FontWeight.w400,
                color: Theme.of(context).colorScheme.secondary,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
            const Placeholder(
              fallbackHeight: 180,
            ),
            const SizedBox(
              height: 40,
            ),
            RichText(
              text: TextSpan(
                text: "En attendant, vous\npouvez peut-être",
                style: TextStyle(
                  fontSize: 24,
                  height: 1.25,
                  fontWeight: FontWeight.w400,
                  color: Theme.of(context).colorScheme.primary,
                ),
                children: [
                  TextSpan(
                    text: " AGIR",
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.25,
                      fontWeight: FontWeight.w500,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                  TextSpan(
                    text: " !",
                    style: TextStyle(
                      fontSize: 24,
                      height: 1.25,
                      fontWeight: FontWeight.w400,
                      color: Theme.of(context).colorScheme.primary,
                    ),
                  ),
                ],
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 40,
            ),
            const ModuleListWidget(),
          ],
        ),
      ),
    );
  }
}
