// File: minfopra_organisation.cypher
// Cypher script for the administrative structure of the Ministère de la Fonction Publique et de la Réforme Administrative (Decree No. 2012/537, 19 Nov 2012)

// Take note for services deconcentres (sd) and 
// Delegations regionale (dr)
//
// Create top-level node
CREATE (minfopra:ministere_fonction_publique_reforme_administrative {
  name: "Ministère de la Fonction Publique et de la Réforme Administrative",
  mission: "Élaborer, mettre en œuvre et évaluer la politique du gouvernement en matière de fonction publique et de réforme administrative, gérer les fonctionnaires et agents de l'État, coordonner la formation, et améliorer l'efficacité des services publics."
})

// Create top-level administrative units
CREATE (sp:secretariat_particulier {
  name: "Secrétariat Particulier",
  mission: "Gérer les affaires réservées du Ministre."
})
CREATE (ct1:conseiller_technique {
  name: "Conseiller Technique 1",
  mission: "Effectuer les missions confiées par le Ministre."
})
CREATE (ct2:conseiller_technique {
  name: "Conseiller Technique 2",
  mission: "Effectuer les missions confiées par le Ministre."
})
CREATE (spr:secretariat_permanent_reforme_administrative {
  name: "Secrétariat Permanent à la Réforme Administrative",
  mission: "Assister le Ministre dans l'organisation et la réforme administratives pour améliorer le rapport coût-rendement et la qualité des services publics."
})
CREATE (ig:inspection_generale {
  name: "Inspection Générale",
  mission: "Évaluer les performances des services, contrôler leur fonctionnement, informer le Ministre sur la qualité et le rendement, et lutter contre la corruption."
})
CREATE (ac:administration_centrale {
  name: "Administration Centrale",
  mission: "Coordonner les services centraux pour la mise en œuvre des politiques de fonction publique et de réforme administrative."
})
CREATE (sd:services_deconcentres {
  name: "Services Déconcentrés",
  mission: "Superviser et coordonner les activités régionales en matière de fonction publique et de réforme administrative."
})

// Create Secrétariat Permanent sub-units
CREATE (das:division_administrations_souverainete {
  name: "Division des Administrations de Souveraineté",
  mission: "Élaborer et conduire des projets de réforme administrative pour les administrations de souveraineté, renforcer la gestion, et évaluer les performances."
})
CREATE (dat:division_administrations_techniques {
  name: "Division des Administrations Techniques",
  mission: "Élaborer et conduire des projets de réforme administrative pour les administrations techniques, renforcer la gestion, et évaluer les performances."
})
CREATE (daes:division_administrations_economiques_sociales {
  name: "Division des Administrations Economiques et Sociales",
  mission: "Élaborer et conduire des projets de réforme administrative pour les administrations économiques et sociales, renforcer la gestion, et évaluer les performances."
})
CREATE (cec:cellule_etudes_cooperation_technologies {
  name: "Cellule des Etudes, de la Coopération et des Nouvelles Technologies",
  mission: "Rechercher des partenariats, former les ressources humaines, et moderniser les administrations via les technologies de l'information."
})
CREATE (sag:service_affaires_generales {
  name: "Service des Affaires Générales",
  mission: "Gérer le courrier, le personnel, le matériel, le budget, et la maintenance du Secrétariat Permanent à la Réforme Administrative."
})

// Create Inspection Générale sub-units
CREATE (insp1:inspecteur {
  name: "Inspecteur 1",
  mission: "Assister l'Inspecteur Général dans le contrôle et l'évaluation des services."
})
CREATE (insp2:inspecteur {
  name: "Inspecteur 2",
  mission: "Assister l'Inspecteur Général dans le contrôle et l'évaluation des services."
})

// Create Administration Centrale sub-units
CREATE (sg:secretariat_general {
  name: "Secrétariat Général",
  mission: "Coordonner les services centraux et déconcentrés, définir les procédures, assurer la formation, et gérer les archives et la documentation."
})
CREATE (ddrhe:direction_developpement_ressources_humaines {
  name: "Direction du Développement des Ressources Humaines de l'Etat",
  mission: "Élaborer la politique de développement des ressources humaines, organiser les concours, et coordonner la formation des agents publics."
})
CREATE (dgc:direction_gestion_carrieres {
  name: "Direction de la Gestion des Carrières",
  mission: "Élaborer la politique de gestion des carrières, suivre les carrières des agents, et gérer les retraites et commissions paritaires."
})
CREATE (ddc:division_discipline_contentieux {
  name: "Division de la Discipline et du Contentieux",
  mission: "Instruire les dossiers disciplinaires, gérer le contentieux de la fonction publique, et assurer le secrétariat du Conseil de Discipline."
})
CREATE (drpce:division_reglementation_prospective_controle_effectifs {
  name: "Division de la Règlementation, de la Prospective et du Contrôle des Effectifs",
  mission: "Élaborer les textes réglementaires, planifier les besoins en ressources humaines, et contrôler les effectifs des personnels de l'État."
})
CREATE (dag:direction_affaires_generales {
  name: "Direction des Affaires Générales",
  mission: "Gérer les ressources humaines, le budget, les marchés publics, et la maintenance des biens du ministère."
})

// Create Secrétariat Général sub-units
CREATE (dcns:division_coordination_nationale_sigipes {
  name: "Division de la Coordination Nationale du SIGIPES",
  mission: "Administrer le Système Informatique de Gestion Intégrée des Personnels de l'État et de la Solde, et assurer la fiabilité du fichier des personnels."
})
CREATE (dsi:division_systemes_information {
  name: "Division des Systèmes d'Information",
  mission: "Concevoir le schéma directeur informatique, gérer les systèmes d'information, et promouvoir l'e-gouvernement."
})
CREATE (cc:cellule_communication {
  name: "Cellule de Communication",
  mission: "Mettre en œuvre la stratégie de communication, promouvoir l'image du ministère, et organiser les conférences de presse."
})
CREATE (cs:cellule_suivi {
  name: "Cellule de Suivi",
  mission: "Suivre les activités des services centraux et déconcentrés, et synthétiser les rapports d'activités."
})
CREATE (ct:cellule_traduction {
  name: "Cellule de Traduction",
  mission: "Traduire les documents, contrôler la qualité des traductions, et constituer une banque de données terminologiques."
})
CREATE (sdacl:sous_direction_accueil_courrier_liaison {
  name: "Sous-Direction de l'Accueil, du Courrier et de Liaison",
  mission: "Accueillir et orienter les usagers, gérer le courrier, et relancer les services pour le traitement des dossiers."
})
CREATE (sdfcd:sous_direction_fichier_central_documentation {
  name: "Sous-Direction du Fichier Central et de la Documentation",
  mission: "Mettre à jour le fichier des personnels, gérer les dossiers individuels, et conserver les actes signés."
})

// Create representative sub-units under Divisions/Directions
CREATE (cep:section_etudes_prospective {
  name: "Section des Etudes et de la Prospective",
  mission: "Réaliser des études prospectives, planifier les réformes, et coordonner les projets de réforme administrative."
})
CREATE (sdc:sous_direction_concours {
  name: "Sous-Direction des Concours",
  mission: "Organiser les concours administratifs, gérer les archives des concours, et satisfaire les besoins en ressources humaines."
})
CREATE (cd:cellule_discipline {
  name: "Cellule de la Discipline",
  mission: "Instruire les dossiers disciplinaires et assurer le secrétariat du Conseil Permanent de Discipline."
})
CREATE (sdps:sous_direction_personnels_solde_pensions {
  name: "Sous-Direction des Personnels, de la Solde et des Pensions",
  mission: "Gérer les personnels, la solde, les pensions, et les dossiers disciplinaires du ministère."
})

// Create Services Déconcentrés (example for one region)
CREATE (dr:delegation_regionale {
  name: "Délégation Régionale",
  mission: "Superviser les activités régionales, organiser les concours, gérer les personnels, et améliorer la qualité du service aux usagers."
})
CREATE (srf:service_recrutement_formation {
  name: "Service des Recrutements et de la Formation",
  mission: "Planifier les besoins en ressources humaines, organiser les concours, et suivre la formation des personnels."
})
CREATE (sfd:service_fichier_discipline {
  name: "Service du Fichier et de la Discipline",
  mission: "Mettre à jour le fichier des personnels et instruire les dossiers disciplinaires."
})
CREATE (sag_dr:service_affaires_generales {
  name: "Service des Affaires Générales",
  mission: "Gérer les personnels, le budget, le courrier, et les biens de la Délégation Régionale."
})

// Create relationships
// Ministère -> Top-level units
CREATE (minfopra)-[:MANAGES]->(sp)
CREATE (minfopra)-[:MANAGES]->(ct1)
CREATE (minfopra)-[:MANAGES]->(ct2)
CREATE (minfopra)-[:MANAGES]->(spr)
CREATE (minfopra)-[:MANAGES]->(ig)
CREATE (minfopra)-[:MANAGES]->(ac)
CREATE (minfopra)-[:MANAGES]->(sd)
CREATE (sp)-[:REPORTS_TO]->(minfopra)
CREATE (ct1)-[:REPORTS_TO]->(minfopra)
CREATE (ct2)-[:REPORTS_TO]->(minfopra)
CREATE (spr)-[:REPORTS_TO]->(minfopra)
CREATE (ig)-[:REPORTS_TO]->(minfopra)
CREATE (ac)-[:REPORTS_TO]->(minfopra)
CREATE (sd)-[:REPORTS_TO]->(minfopra)

// Secrétariat Permanent -> Sub-units
CREATE (spr)-[:MANAGES]->(das)
CREATE (spr)-[:MANAGES]->(dat)
CREATE (spr)-[:MANAGES]->(daes)
CREATE (spr)-[:MANAGES]->(cec)
CREATE (spr)-[:MANAGES]->(sag)
CREATE (das)-[:REPORTS_TO]->(spr)
CREATE (dat)-[:REPORTS_TO]->(spr)
CREATE (daes)-[:REPORTS_TO]->(spr)
CREATE (cec)-[:REPORTS_TO]->(spr)
CREATE (sag)-[:REPORTS_TO]->(spr)

// Inspection Générale -> Sub-units
CREATE (ig)-[:MANAGES]->(insp1)
CREATE (ig)-[:MANAGES]->(insp2)
CREATE (insp1)-[:REPORTS_TO]->(ig)
CREATE (insp2)-[:REPORTS_TO]->(ig)

// Administration Centrale -> Sub-units
CREATE (ac)-[:MANAGES]->(sg)
CREATE (ac)-[:MANAGES]->(ddrhe)
CREATE (ac)-[:MANAGES]->(dgc)
CREATE (ac)-[:MANAGES]->(ddc)
CREATE (ac)-[:MANAGES]->(drpce)
CREATE (ac)-[:MANAGES]->(dag)
CREATE (sg)-[:REPORTS_TO]->(ac)
CREATE (ddrhe)-[:REPORTS_TO]->(ac)
CREATE (dgc)-[:REPORTS_TO]->(ac)
CREATE (ddc)-[:REPORTS_TO]->(ac)
CREATE (drpce)-[:REPORTS_TO]->(ac)
CREATE (dag)-[:REPORTS_TO]->(ac)

// Secrétariat Général -> Sub-units
CREATE (sg)-[:MANAGES]->(dcns)
CREATE (sg)-[:MANAGES]->(dsi)
CREATE (sg)-[:MANAGES]->(cc)
CREATE (sg)-[:MANAGES]->(cs)
CREATE (sg)-[:MANAGES]->(ct)
CREATE (sg)-[:MANAGES]->(sdacl)
CREATE (sg)-[:MANAGES]->(sdfcd)
CREATE (dcns)-[:REPORTS_TO]->(sg)
CREATE (dsi)-[:REPORTS_TO]->(sg)
CREATE (cc)-[:REPORTS_TO]->(sg)
CREATE (cs)-[:REPORTS_TO]->(sg)
CREATE (ct)-[:REPORTS_TO]->(sg)
CREATE (sdacl)-[:REPORTS_TO]->(sg)
CREATE (sdfcd)-[:REPORTS_TO]->(sg)

// Example sub-unit relationships
CREATE (das)-[:MANAGES]->(cep)
CREATE (cep)-[:REPORTS_TO]->(das)
CREATE (ddrhe)-[:MANAGES]->(sdc)
CREATE (sdc)-[:REPORTS_TO]->(ddrhe)
CREATE (ddc)-[:MANAGES]->(cd)
CREATE (cd)-[:REPORTS_TO]->(ddc)
CREATE (dag)-[:MANAGES]->(sdps)
CREATE (sdps)-[:REPORTS_TO]->(dag)

// Services Déconcentrés -> Sub-units
CREATE (sd)-[:MANAGES]->(dr)
CREATE (dr)-[:REPORTS_TO]->(sd)
CREATE (dr)-[:MANAGES]->(srf)
CREATE (dr)-[:MANAGES]->(sfd)
CREATE (dr)-[:MANAGES]->(sag_dr)
CREATE (srf)-[:REPORTS_TO]->(dr)
CREATE (sfd)-[:REPORTS_TO]->(dr)
CREATE (sag_dr)-[:REPORTS_TO]->(dr)