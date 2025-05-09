// minhdu_organisation.cypher
// Cypher script to model the administrative structure of Ministère de l'Administration Territoriale (MINAT) based on Decree No. 2019/030, 23 Jan 2019

// Create top-level node for the Ministry
CREATE (minat:ministry {
  name: "Ministère de l'Administration Territoriale",
  mission: "Élaborer et mettre en œuvre la politique du Gouvernement en matière d'administration du territoire, de protection civile et de suivi des questions électorales."
})

// Create nodes for top-level units
CREATE (sp:secretariat_particulier {
  name: "Secrétariat Particulier",
  mission: "Gérer les affaires réservées du Ministre."
})
CREATE (ct:conseillers_techniques {
  name: "Conseillers Techniques",
  mission: "Effectuer toutes missions confiées par le Ministre."
})
CREATE (ig:inspection_generale {
  name: "Inspection Générale",
  mission: "Évaluer les performances des services, contrôler administrativement les services centraux et déconcentrés, informer le Ministre sur le fonctionnement et le rendement des services, et mettre en œuvre la stratégie de lutte contre la corruption."
})
CREATE (ac:administration_centrale {
  name: "Administration Centrale",
  mission: "Coordonner les activités administratives centrales du Ministère."
})
CREATE (sd:services_deconcentres {
  name: "Services Déconcentrés",
  mission: "Exécuter les missions du Ministère au niveau local, organisés par des textes particuliers."
})

// Create nodes for Inspection Générale sub-units
CREATE (igat:inspecteur_general_admin_territoriale {
  name: "Inspecteur Général de l'Administration Territoriale",
  mission: "Superviser les contrôles et évaluations liés à l'administration territoriale."
})
CREATE (igqe:inspecteur_general_questions_electorales {
  name: "Inspecteur Général des Questions Électorales",
  mission: "Superviser les contrôles et évaluations liés aux questions électorales."
})
CREATE (igs:inspecteur_general_services {
  name: "Inspecteur Général des Services",
  mission: "Superviser les contrôles et évaluations des services du Ministère."
})

// Create node for Secrétariat Général
CREATE (sg:secretariat_general {
  name: "Secrétariat Général",
  mission: "Coordonner l'action des services de l'Administration Centrale et des Services Locaux, définir les procédures internes, assurer la formation du personnel, et veiller à la célérité dans le traitement des dossiers."
})

// Create nodes for units attached to Secrétariat Général
CREATE (daj:division_affaires_juridiques {
  name: "Division des Affaires Juridiques",
  mission: "Préparer les projets de textes législatifs et réglementaires, fournir des avis juridiques, assurer la légalité des actes, suivre le contentieux électoral, et gérer les recours gracieux."
})
CREATE (despc:division_etudes_statistiques_planification_cooperation {
  name: "Division des Etudes, des Statistiques, de la Planification et de la Coopération",
  mission: "Réaliser des études, centraliser et diffuser des données statistiques, suivre la coopération, et rechercher des opportunités de coopération dans les domaines de l'administration territoriale, de la protection civile et des élections."
})
CREATE (dscg:division_suivi_controle_gestion {
  name: "Division du Suivi et du Contrôle de Gestion",
  mission: "Suivre les activités des services locaux, synthétiser les programmes d'actions, participer à la planification stratégique, et élaborer le rapport annuel de performance."
})
CREATE (dsi:division_systemes_information {
  name: "Division des Systèmes d'Information",
  mission: "Mettre en œuvre les stratégies informatiques, développer et maintenir les applications et réseaux, et assurer la sécurité informatique du Ministère."
})
CREATE (dcrp:division_communication_relations_publiques {
  name: "Division de la Communication et des Relations Publiques",
  mission: "Mettre en œuvre la stratégie de communication, promouvoir l'image du Ministère, organiser les cérémonies, et rédiger les publications."
})
CREATE (dtpb:division_traduction_promotion_bilinguisme {
  name: "Division de la Traduction et de la Promotion du Bilinguisme",
  mission: "Traduire les documents, contrôler la qualité des traductions, constituer une banque de données terminologiques, et promouvoir le bilinguisme."
})
CREATE (sdacl:sous_direction_accueil_courrier_liaison {
  name: "Sous-Direction de l'Accueil, du Courrier et de Liaison",
  mission: "Gérer l'accueil, le courrier, et la relance des services pour le traitement des dossiers."
})
CREATE (cda:centre_documentation_archives {
  name: "Centre de Documentation et des Archives",
  mission: "Concevoir un système de classement, collecter et conserver la documentation, et gérer les archives physiques et numériques."
})

// Create sub-units for Division des Affaires Juridiques
CREATE (cer:cellule_etudes_reglementation {
  name: "Cellule des Etudes et de la Réglementation",
  mission: "Préparer les projets de textes, fournir des avis juridiques, et codifier les textes législatifs et réglementaires."
})
CREATE (crc:cellule_requetes_contentieux {
  name: "Cellule des Requêtes et du Contentieux",
  mission: "Suivre le contentieux électoral, étudier les recours administratifs, et représenter l'Etat en justice."
})

// Create sub-units for Division des Etudes, des Statistiques, de la Planification et de la Coopération
CREATE (ces:cellule_etudes_statistiques {
  name: "Cellule des Etudes et des Statistiques",
  mission: "Réaliser des études de faisabilité, centraliser et diffuser des données statistiques, et constituer des banques de données."
})
CREATE (cpp:cellule_planification_projets {
  name: "Cellule de la Planification et des Projets",
  mission: "Planifier et suivre les projets, réaliser des études prospectives, et assurer la veille stratégique."
})
CREATE (cc:cellule_cooperation {
  name: "Cellule de la Coopération",
  mission: "Suivre la coopération, gérer les accords et conventions, et coordonner les programmes d'aide."
})

// Create sub-units for Division du Suivi et du Contrôle de Gestion
CREATE (cs:cellule_suivi {
  name: "Cellule de Suivi",
  mission: "Suivre les activités des services locaux et synthétiser les programmes d'actions et rapports d'activités."
})
CREATE (ccg:cellule_controle_gestion {
  name: "Cellule du Contrôle de Gestion",
  mission: "Veiller à la cohérence des objectifs, participer à la planification, et élaborer le rapport annuel de performance."
})

// Create sub-units for Division des Systèmes d'Information
CREATE (ced:cellule_etudes_developpements {
  name: "Cellule des Etudes et des Développements",
  mission: "Définir les standards informatiques, concevoir les systèmes, et assurer la veille technologique."
})
CREATE (csem:cellule_suivi_exploitation_maintenance {
  name: "Cellule du Suivi de l'Exploitation et de la Maintenance",
  mission: "Suivre l'exploitation et la maintenance des systèmes informatiques, et gérer le parc informatique."
})

// Create sub-units for Division de la Communication et des Relations Publiques
CREATE (ccom:cellule_communication {
  name: "Cellule de Communication",
  mission: "Mettre en œuvre la stratégie de communication, concevoir les messages, et rédiger les publications."
})
CREATE (crp:cellule_relations_publiques {
  name: "Cellule des Relations Publiques",
  mission: "Gérer le protocole, promouvoir l'image du Ministère, et produire les supports de promotion."
})

// Create sub-units for Division de la Traduction et de la Promotion du Bilinguisme
// (No sub-units specified in the document, so only the division is created)

// Create sub-units for Sous-Direction de l'Accueil, du Courrier et de Liaison
CREATE (sao:service_accueil_orientation {
  name: "Service de l'Accueil et de l'Orientation",
  mission: "Recevoir les dossiers, accueillir et informer les usagers, et contrôler la conformité des dossiers."
})
CREATE (scl:service_courrier_liaison {
  name: "Service du Courrier et de Liaison",
  mission: "Enregistrer et coder les dossiers, ventiler le courrier, et reproduire les actes signés."
})
CREATE (sr:service_relance {
  name: "Service de la Relance",
  mission: "Enregistrer les requêtes des usagers et relancer les services pour le traitement des dossiers."
})

// Create sub-units for Centre de Documentation et des Archives
CREATE (sdoc:service_documentation {
  name: "Service de la Documentation",
  mission: "Appliquer le système de classement, collecter et diffuser la documentation écrite, photographique et numérique."
})
CREATE (sfa:service_fichier_archives {
  name: "Service du Fichier et des Archives",
  mission: "Collecter, centraliser et conserver les archives, et concevoir un système d'archivage physique et numérique."
})
CREATE (biblio:bibliotheque {
  name: "Bibliothèque",
  mission: "Codifier les documents, achalander les manuels et revues, et suivre les consultations des documents."
})

// Relationships for top-level hierarchy
CREATE (minat)-[:MANAGES]->(sp)
CREATE (minat)-[:MANAGES]->(ct)
CREATE (minat)-[:MANAGES]->(ig)
CREATE (minat)-[:MANAGES]->(ac)
CREATE (minat)-[:MANAGES]->(sd)
CREATE (sp)-[:REPORTS_TO]->(minat)
CREATE (ct)-[:REPORTS_TO]->(minat)
CREATE (ig)-[:REPORTS_TO]->(minat)
CREATE (ac)-[:REPORTS_TO]->(minat)
CREATE (sd)-[:REPORTS_TO]->(minat)

// Relationships for Inspection Générale
CREATE (ig)-[:MANAGES]->(igat)
CREATE (ig)-[:MANAGES]->(igqe)
CREATE (ig)-[:MANAGES]->(igs)
CREATE (igat)-[:REPORTS_TO]->(ig)
CREATE (igqe)-[:REPORTS_TO]->(ig)
CREATE (igs)-[:REPORTS_TO]->(ig)

// Relationships for Administration Centrale
CREATE (ac)-[:MANAGES]->(sg)
CREATE (sg)-[:REPORTS_TO]->(ac)

// Relationships for Secrétariat Général and its attached units
CREATE (sg)-[:MANAGES]->(daj)
CREATE (sg)-[:MANAGES]->(despc)
CREATE (sg)-[:MANAGES]->(dscg)
CREATE (sg)-[:MANAGES]->(dsi)
CREATE (sg)-[:MANAGES]->(dcrp)
CREATE (sg)-[:MANAGES]->(dtpb)
CREATE (sg)-[:MANAGES]->(sdacl)
CREATE (sg)-[:MANAGES]->(cda)
CREATE (daj)-[:REPORTS_TO]->(sg)
CREATE (despc)-[:REPORTS_TO]->(sg)
CREATE (dscg)-[:REPORTS_TO]->(sg)
CREATE (dsi)-[:REPORTS_TO]->(sg)
CREATE (dcrp)-[:REPORTS_TO]->(sg)
CREATE (dtpb)-[:REPORTS_TO]->(sg)
CREATE (sdacl)-[:REPORTS_TO]->(sg)
CREATE (cda)-[:REPORTS_TO]->(sg)

// Relationships for Division des Affaires Juridiques
CREATE (daj)-[:MANAGES]->(cer)
CREATE (daj)-[:MANAGES]->(crc)
CREATE (cer)-[:REPORTS_TO]->(daj)
CREATE (crc)-[:REPORTS_TO]->(daj)

// Relationships for Division des Etudes, des Statistiques, de la Planification et de la Coopération
CREATE (despc)-[:MANAGES]->(ces)
CREATE (despc)-[:MANAGES]->(cpp)
CREATE (despc)-[:MANAGES]->(cc)
CREATE (ces)-[:REPORTS_TO]->(despc)
CREATE (cpp)-[:REPORTS_TO]->(despc)
CREATE (cc)-[:REPORTS_TO]->(despc)

// Relationships for Division du Suivi et du Contrôle de Gestion
CREATE (dscg)-[:MANAGES]->(cs)
CREATE (dscg)-[:MANAGES]->(ccg)
CREATE (cs)-[:REPORTS_TO]->(dscg)
CREATE (ccg)-[:REPORTS_TO]->(dscg)

// Relationships for Division des Systèmes d'Information
CREATE (dsi)-[:MANAGES]->(ced)
CREATE (dsi)-[:MANAGES]->(csem)
CREATE (ced)-[:REPORTS_TO]->(dsi)
CREATE (csem)-[:REPORTS_TO]->(dsi)

// Relationships for Division de la Communication et des Relations Publiques
CREATE (dcrp)-[:MANAGES]->(ccom)
CREATE (dcrp)-[:MANAGES]->(crp)
CREATE (ccom)-[:REPORTS_TO]->(dcrp)
CREATE (crp)-[:REPORTS_TO]->(dcrp)

// Relationships for Sous-Direction de l'Accueil, du Courrier et de Liaison
CREATE (sdacl)-[:MANAGES]->(sao)
CREATE (sdacl)-[:MANAGES]->(scl)
CREATE (sdacl)-[:MANAGES]->(sr)
CREATE (sao)-[:REPORTS_TO]->(sdacl)
CREATE (scl)-[:REPORTS_TO]->(sdacl)
CREATE (sr)-[:REPORTS_TO]->(sdacl)

// Relationships for Centre de Documentation et des Archives
CREATE (cda)-[:MANAGES]->(sdoc)
CREATE (cda)-[:MANAGES]->(sfa)
CREATE (cda)-[:MANAGES]->(biblio)
CREATE (sdoc)-[:REPORTS_TO]->(cda)
CREATE (sfa)-[:REPORTS_TO]->(cda)
CREATE (biblio)-[:REPORTS_TO]->(cda)