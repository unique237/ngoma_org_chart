// File: minhdu_organisation.cypher
// Cypher script for the administrative structure of the Ministère de l'Habitat et du Développement Urbain (Decree No. 2012/384, 14 Sep 2012)

// Create top-level node
CREATE (minhdu:ministere_habitat_developpement_urbain {
  name: "Ministère de l'Habitat et du Développement Urbain",
  mission: "Élaborer et mettre en œuvre la politique du gouvernement en matière d'habitat et de développement urbain, incluant l'amélioration de l'habitat, la promotion de l'habitat social, l'aménagement des villes, et la gestion des infrastructures urbaines."
})

// Create top-level administrative units
CREATE (sp_ministre:secretariat_particulier {
  name: "Secrétariat Particulier du Ministre",
  mission: "Gérer les affaires réservées du Ministre."
})
CREATE (sp_etat:secretariat_particulier {
  name: "Secrétariat Particulier du Secrétaire d'État",
  mission: "Gérer les affaires réservées du Secrétaire d'État."
})
CREATE (ct1:conseiller_technique {
  name: "Conseiller Technique 1",
  mission: "Effectuer les missions confiées par le Ministre."
})
CREATE (ct2:conseiller_technique {
  name: "Conseiller Technique 2",
  mission: "Effectuer les missions confiées par le Ministre."
})
CREATE (ig:inspection_generale {
  name: "Inspection Générale",
  mission: "Évaluer les performances administratives et techniques, contrôler le fonctionnement des services, et mettre en œuvre la stratégie anti-corruption."
})
CREATE (ac:administration_centrale {
  name: "Administration Centrale",
  mission: "Coordonner les services centraux pour la mise en œuvre des politiques d'habitat et de développement urbain."
})
CREATE (sd:services_deconcentres {
  name: "Services Déconcentrés",
  mission: "Superviser et coordonner les activités régionales et départementales en matière d'habitat et de développement urbain."
})

// Create Inspection Générale sub-units
CREATE (ig_admin:inspecteur_general {
  name: "Inspecteur Général des Questions Administratives",
  mission: "Évaluer les performances des services, contrôler le fonctionnement interne, et promouvoir la simplification administrative."
})
CREATE (ig_tech:inspecteur_general {
  name: "Inspecteur Général des Questions Techniques",
  mission: "Contrôler les investissements publics, évaluer les projets d'habitat et d'urbanisme, et auditer les programmes techniques."
})
CREATE (insp1_admin:inspecteur {
  name: "Inspecteur 1 (Questions Administratives)",
  mission: "Assister l'Inspecteur Général dans le contrôle administratif."
})
CREATE (insp2_admin:inspecteur {
  name: "Inspecteur 2 (Questions Administratives)",
  mission: "Assister l'Inspecteur Général dans le contrôle administratif."
})
CREATE (insp1_tech:inspecteur {
  name: "Inspecteur 1 (Questions Techniques)",
  mission: "Assister l'Inspecteur Général dans le contrôle technique."
})
CREATE (insp2_tech:inspecteur {
  name: "Inspecteur 2 (Questions Techniques)",
  mission: "Assister l'Inspecteur Général dans le contrôle technique."
})

// Create Administration Centrale sub-units
CREATE (sg:secretariat_general {
  name: "Secrétariat Général",
  mission: "Coordonner les services centraux et déconcentrés, gérer les archives, et assurer la formation du personnel."
})
CREATE (ddsu:division_developpement_social_urbain {
  name: "Division du Développement Social Urbain",
  mission: "Promouvoir le développement social en milieu urbain, prévenir la délinquance, et soutenir les activités à haute intensité de main-d'œuvre."
})
CREATE (dhspi:direction_habitat_social_promotion_immobiliere {
  name: "Direction de l'Habitat Social et de la Promotion Immobilière",
  mission: "Élaborer et mettre en œuvre les stratégies d'habitat social, contrôler les programmes immobiliers, et promouvoir l'auto-construction."
})
CREATE (danh:direction_architecture_normes_habitat {
  name: "Direction de l'Architecture et des Normes d'Habitat",
  mission: "Promouvoir le patrimoine architectural, élaborer des normes d'habitat, et vulgariser l'utilisation des matériaux locaux."
})
CREATE (dou:direction_operations_urbaines {
  name: "Direction des Opérations Urbaines",
  mission: "Planifier et contrôler les opérations d'aménagement urbain, de voiries, d'assainissement, et de drainage."
})
CREATE (dag:direction_affaires_generales {
  name: "Direction des Affaires Générales",
  mission: "Gérer les ressources humaines, le budget, les marchés publics, et la maintenance des biens du ministère."
})

// Create Secrétariat Général sub-units
CREATE (depc:division_etudes_planification_cooperation {
  name: "Division des Etudes, de la Planification et de la Coopération",
  mission: "Formuler les politiques d'urbanisme, élaborer les plans d'actions, et gérer les partenariats socio-économiques."
})
CREATE (daj:division_affaires_juridiques {
  name: "Division des Affaires Juridiques",
  mission: "Assurer la légalité des actes, préparer les textes réglementaires, et gérer les contentieux."
})
CREATE (cc:cellule_communication {
  name: "Cellule de Communication",
  mission: "Mettre en œuvre la stratégie de communication, promouvoir l'image du ministère, et gérer les publications."
})
CREATE (cs:cellule_suivi {
  name: "Cellule de Suivi",
  mission: "Suivre les activités des services et synthétiser les rapports d'activités."
})
CREATE (ci:cellule_informatique {
  name: "Cellule Informatique",
  mission: "Concevoir le schéma informatique, gérer les bases de données, et promouvoir la gouvernance électronique."
})
CREATE (ct:cellule_traduction {
  name: "Cellule de Traduction",
  mission: "Traduire les documents, contrôler la qualité des traductions, et constituer une banque terminologique."
})
CREATE (sdda:sous_direction_documentation_archives {
  name: "Sous-Direction de la Documentation et des Archives",
  mission: "Collecter, conserver, et diffuser la documentation et les archives du ministère."
})
CREATE (sdacl:sous_direction_accueil_courrier_liaison {
  name: "Sous-Direction de l'Accueil, du Courrier et de Liaison",
  mission: "Gérer le courrier, orienter les usagers, et relancer les services pour le traitement des dossiers."
})

// Create representative sub-units under Divisions/Directions (example)
CREATE (cep:cellule_etudes_planification {
  name: "Cellule des Etudes et de la Planification",
  mission: "Préparer les orientations d'urbanisme, élaborer les stratégies, et suivre les plans directeurs."
})
CREATE (sda:sous_direction_assainissement_drainage {
  name: "Sous-Direction de l'Assainissement et du Drainage",
  mission: "Élaborer les politiques d'assainissement, coordonner les travaux de drainage, et prévenir les pollutions."
})
CREATE (sdps:sous_direction_personnels_solde_pensions {
  name: "Sous-Direction des Personnels, de la Solde et des Pensions",
  mission: "Gérer les personnels, la solde, les pensions, et les dossiers disciplinaires."
})

// Create Services Déconcentrés (example for one region and department)
CREATE (dr:delegation_regionale {
  name: "Délégation Régionale",
  mission: "Coordonner les activités régionales, superviser les projets d'urbanisme, et gérer les partenariats locaux."
})
CREATE (dd:delegation_departementale {
  name: "Délégation Départementale",
  mission: "Superviser les activités départementales, gérer les ressources, et contrôler les projets d'habitat."
})

// Create relationships
// Ministère -> Top-level units
CREATE (minhdu)-[:MANAGES]->(sp_ministre)
CREATE (minhdu)-[:MANAGES]->(sp_etat)
CREATE (minhdu)-[:MANAGES]->(ct1)
CREATE (minhdu)-[:MANAGES]->(ct2)
CREATE (minhdu)-[:MANAGES]->(ig)
CREATE (minhdu)-[:MANAGES]->(ac)
CREATE (minhdu)-[:MANAGES]->(sd)
CREATE (sp_ministre)-[:REPORTS_TO]->(minhdu)
CREATE (sp_etat)-[:REPORTS_TO]->(minhdu)
CREATE (ct1)-[:REPORTS_TO]->(minhdu)
CREATE (ct2)-[:REPORTS_TO]->(minhdu)
CREATE (ig)-[:REPORTS_TO]->(minhdu)
CREATE (ac)-[:REPORTS_TO]->(minhdu)
CREATE (sd)-[:REPORTS_TO]->(minhdu)

// Inspection Générale -> Sub-units
CREATE (ig)-[:MANAGES]->(ig_admin)
CREATE (ig)-[:MANAGES]->(ig_tech)
CREATE (ig_admin)-[:MANAGES]->(insp1_admin)
CREATE (ig_admin)-[:MANAGES]->(insp2_admin)
CREATE (ig_tech)-[:MANAGES]->(insp1_tech)
CREATE (ig_tech)-[:MANAGES]->(insp2_tech)
CREATE (ig_admin)-[:REPORTS_TO]->(ig)
CREATE (ig_tech)-[:REPORTS_TO]->(ig)
CREATE (insp1_admin)-[:REPORTS_TO]->(ig_admin)
CREATE (insp2_admin)-[:REPORTS_TO]->(ig_admin)
CREATE (insp1_tech)-[:REPORTS_TO]->(ig_tech)
CREATE (insp2_tech)-[:REPORTS_TO]->(ig_tech)

// Administration Centrale -> Sub-units
CREATE (ac)-[:MANAGES]->(sg)
CREATE (ac)-[:MANAGES]->(ddsu)
CREATE (ac)-[:MANAGES]->(dhspi)
CREATE (ac)-[:MANAGES]->(danh)
CREATE (ac)-[:MANAGES]->(dou)
CREATE (ac)-[:MANAGES]->(dag)
CREATE (sg)-[:REPORTS_TO]->(ac)
CREATE (ddsu)-[:REPORTS_TO]->(ac)
CREATE (dhspi)-[:REPORTS_TO]->(ac)
CREATE (danh)-[:REPORTS_TO]->(ac)
CREATE (dou)-[:REPORTS_TO]->(ac)
CREATE (dag)-[:REPORTS_TO]->(ac)

// Secrétariat Général -> Sub-units
CREATE (sg)-[:MANAGES]->(depc)
CREATE (sg)-[:MANAGES]->(daj)
CREATE (sg)-[:MANAGES]->(cc)
CREATE (sg)-[:MANAGES]->(cs)
CREATE (sg)-[:MANAGES]->(ci)
CREATE (sg)-[:MANAGES]->(ct)
CREATE (sg)-[:MANAGES]->(sdda)
CREATE (sg)-[:MANAGES]->(sdacl)
CREATE (depc)-[:REPORTS_TO]->(sg)
CREATE (daj)-[:REPORTS_TO]->(sg)
CREATE (cc)-[:REPORTS_TO]->(sg)
CREATE (cs)-[:REPORTS_TO]->(sg)
CREATE (ci)-[:REPORTS_TO]->(sg)
CREATE (ct)-[:REPORTS_TO]->(sg)
CREATE (sdda)-[:REPORTS_TO]->(sg)
CREATE (sdacl)-[:REPORTS_TO]->(sg)

// Example sub-unit relationships
CREATE (depc)-[:MANAGES]->(cep)
CREATE (cep)-[:REPORTS_TO]->(depc)
CREATE (dou)-[:MANAGES]->(sda)
CREATE (sda)-[:REPORTS_TO]->(dou)
CREATE (dag)-[:MANAGES]->(sdps)
CREATE (sdps)-[:REPORTS_TO]->(dag)

// Services Déconcentrés -> Sub-units
CREATE (sd)-[:MANAGES]->(dr)
CREATE (dr)-[:REPORTS_TO]->(sd)
CREATE (dr)-[:MANAGES]->(dd)
CREATE (dd)-[:REPORTS_TO]->(dr)