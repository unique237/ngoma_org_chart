// File: minrex_organisation.cypher
// Cypher script for the administrative structure of the Ministère des Relations Extérieures (Decree No. 2013/112)

// Create top-level Ministry node
CREATE (minrex:minrex {name: "Ministère des Relations Extérieures", mission: "Mettre en œuvre la politique des relations extérieures, gérer les relations avec les États et organisations internationales, protéger les intérêts camerounais à l'étranger, et coordonner la gestion des carrières diplomatiques"})

// Create top-level units
CREATE (sp_ministre:secretariat_particulier {name: "Secrétariat Particulier du Ministre", mission: "Gérer les affaires réservées du Ministre des Relations Extérieures"})
CREATE (sp_md_commonwealth:secretariat_particulier {name: "Secrétariat Particulier du Ministre Délégué (Commonwealth)", mission: "Gérer les affaires réservées du Ministre Délégué chargé de la Coopération avec le Commonwealth"})
CREATE (sp_md_monde_islamique:secretariat_particulier {name: "Secrétariat Particulier du Ministre Délégué (Monde Islamique)", mission: "Gérer les affaires réservées du Ministre Délégué chargé de la Coopération avec le Monde Islamique"})
CREATE (ig:inspection_generale {name: "Inspection Générale", mission: "Veiller au rendement et à la qualité des services, auditer les performances, contrôler le fonctionnement des services, et lutter contre la corruption"})
CREATE (ct:conseillers_techniques {name: "Conseillers Techniques", mission: "Effectuer les missions confiées par le Ministre et les Ministres Délégués"})
CREATE (ac:administration_centrale {name: "Administration Centrale", mission: "Coordonner les activités administratives et diplomatiques du ministère à travers ses directions et services"})
CREATE (se:services_exterieurs {name: "Services Extérieurs", mission: "Représenter le Cameroun à l'étranger, négocier, informer, protéger les intérêts nationaux, et promouvoir la coopération internationale"})

// Create relationships for top-level units
CREATE (minrex)-[:MANAGES]->(sp_ministre)
CREATE (minrex)-[:MANAGES]->(sp_md_commonwealth)
CREATE (minrex)-[:MANAGES]->(sp_md_monde_islamique)
CREATE (minrex)-[:MANAGES]->(ig)
CREATE (minrex)-[:MANAGES]->(ct)
CREATE (minrex)-[:MANAGES]->(ac)
CREATE (minrex)-[:MANAGES]->(se)

// Create Inspection Générale sub-units
CREATE (ig_consulaires:inspecteur_general {name: "Inspecteur Général des Questions Consulaires", mission: "Superviser les affaires consulaires et auditer leur fonctionnement"})
CREATE (ig_patrimoine:inspecteur_general {name: "Inspecteur Général du Patrimoine", mission: "Gérer et auditer le patrimoine du ministère"})
CREATE (ig_services:inspecteur_general {name: "Inspecteur Général des Services", mission: "Contrôler le fonctionnement des services centraux, déconcentrés et extérieurs"})
CREATE (insp_consulaires:inspecteur {name: "Inspecteur des Questions Consulaires", mission: "Assister l'Inspecteur Général des Questions Consulaires dans ses fonctions d'audit et de contrôle"})
CREATE (insp_patrimoine:inspecteur {name: "Inspecteur du Patrimoine", mission: "Assister l'Inspecteur Général du Patrimoine dans la gestion et l'audit du patrimoine"})
CREATE (insp_services:inspecteur {name: "Inspecteur des Services", mission: "Assister l'Inspecteur Général des Services dans le contrôle des services"})

// Create relationships for Inspection Générale
CREATE (ig)-[:MANAGES]->(ig_consulaires)
CREATE (ig)-[:MANAGES]->(ig_patrimoine)
CREATE (ig)-[:MANAGES]->(ig_services)
CREATE (ig_consulaires)-[:MANAGES]->(insp_consulaires)
CREATE (ig_patrimoine)-[:MANAGES]->(insp_patrimoine)
CREATE (ig_services)-[:MANAGES]->(insp_services)

// Create Administration Centrale sub-units
CREATE (sg:secretariat_general {name: "Secrétariat Général", mission: "Coordonner et contrôler les services centraux, déconcentrés et extérieurs, superviser les programmes d’action, et gérer les carrières diplomatiques"})
CREATE (daa:direction {name: "Direction des Affaires d'Afrique", mission: "Suivre les relations avec les pays africains, coordonner la coopération régionale, et gérer les engagements avec l'Union Africaine"})
CREATE (dag:direction {name: "Direction des Affaires Générales", mission: "Gérer les ressources humaines, le budget, les marchés publics, et le patrimoine du ministère"})

// Create relationships for Administration Centrale
CREATE (ac)-[:MANAGES]->(sg)
CREATE (ac)-[:MANAGES]->(daa)
CREATE (ac)-[:MANAGES]->(dag)

// Create Secrétariat Général sub-units
CREATE (div_traduction:division {name: "Division de la Traduction et de l'Interprétariat", mission: "Traduire les documents, contrôler la qualité des traductions, et assurer l'interprétariat lors des conférences internationales"})
CREATE (centre_analyses:centre {name: "Centre d'Analyses Stratégiques, de Prospectives et de Crise", mission: "Analyser les questions internationales, anticiper les crises, et collaborer avec les centres de recherche"})
CREATE (cellule_suivi:cellule {name: "Cellule de Suivi", mission: "Synthétiser les rapports d'activités, suivre les programmes de formation, et gérer l'agenda diplomatique"})
CREATE (cellule_ntc:cellule {name: "Cellule des Nouvelles Technologies et de la Cryptographie", mission: "Développer et sécuriser les systèmes informatiques, gérer la cryptographie, et maintenir les équipements"})
CREATE (sd_courrier:sous_direction {name: "Sous-Direction du Courrier, du Chiffre et de Liaison", mission: "Gérer le courrier, les transmissions chiffrées, et la valise diplomatique"})

// Create relationships for Secrétariat Général
CREATE (sg)-[:MANAGES]->(div_traduction)
CREATE (sg)-[:MANAGES]->(centre_analyses)
CREATE (sg)-[:MANAGES]->(cellule_suivi)
CREATE (sg)-[:MANAGES]->(cellule_ntc)
CREATE (sg)-[:MANAGES]->(sd_courrier)

// Create Sous-Direction du Courrier sub-units
CREATE (svc_courrier:service {name: "Service du Courrier et de Liaison", mission: "Traiter le courrier, assurer les transmissions, et gérer les correspondances confidentielles"})
CREATE (svc_chiffre:service {name: "Service du Chiffre et de la Valise Diplomatique", mission: "Chiffrer et déchiffrer les messages, et gérer la valise diplomatique"})
CREATE (svc_relance:service {name: "Service de la Relance", mission: "Enregistrer les requêtes des usagers et relancer les services pour le traitement des dossiers"})

// Create relationships for Sous-Direction du Courrier
CREATE (sd_courrier)-[:MANAGES]->(svc_courrier)
CREATE (sd_courrier)-[:MANAGES]->(svc_chiffre)
CREATE (sd_courrier)-[:MANAGES]->(svc_relance)

// Create Direction des Affaires d'Afrique sub-units
CREATE (sd_afrique_centrale:sous_direction {name: "Sous-Direction des Relations avec les Pays de l'Afrique Centrale", mission: "Gérer les relations bilatérales et la coopération sous-régionale en Afrique Centrale"})
CREATE (sd_afrique_occidentale:sous_direction {name: "Sous-Direction des Relations avec les Pays de l'Afrique Occidentale", mission: "Suivre les relations et la coopération avec les pays de l'Afrique Occidentale"})
CREATE (sd_nigeria:sous_direction {name: "Sous-Direction des Relations avec le Nigéria", mission: "Coordonner la coopération bilatérale et suivre les questions frontalières avec le Nigéria"})
CREATE (sd_afrique_australe_orientale:sous_direction {name: "Sous-Direction des Relations avec les Pays de l'Afrique Australe et Orientale", mission: "Gérer les relations et la coopération avec les pays d'Afrique Australe et Orientale"})
CREATE (sd_afrique_nord:sous_direction {name: "Sous-Direction des Relations avec les Pays de l'Afrique du Nord", mission: "Suivre les relations et la coopération avec les pays de l'Afrique du Nord"})
CREATE (sd_union_africaine:sous_direction {name: "Sous-Direction de l'Union Africaine", mission: "Gérer les relations avec l'Union Africaine et suivre ses programmes, notamment le NEPAD"})
CREATE (bur_archives_daa:bureau {name: "Bureau des Archives (Affaires d'Afrique)", mission: "Collecter, classer, et conserver les documents produits par la Direction des Affaires d'Afrique"})

// Create relationships for Direction des Affaires d'Afrique
CREATE (daa)-[:MANAGES]->(sd_afrique_centrale)
CREATE (daa)-[:MANAGES]->(sd_afrique_occidentale)
CREATE (daa)-[:MANAGES]->(sd_nigeria)
CREATE (daa)-[:MANAGES]->(sd_afrique_australe_orientale)
CREATE (daa)-[:MANAGES]->(sd_afrique_nord)
CREATE (daa)-[:MANAGES]->(sd_union_africaine)
CREATE (daa)-[:MANAGES]->(bur_archives_daa)

// Create Direction des Affaires Générales sub-units
CREATE (cellule_sigipes:cellule {name: "Cellule de Gestion du Projet SIGIPES", mission: "Gérer les fichiers électroniques du personnel, de la solde, et des pensions"})
CREATE (sd_carrieres_diplomatiques:sous_direction {name: "Sous-Direction de la Gestion des Carrières des Personnels Diplomatiques", mission: "Gérer les carrières, la rotation, et les opportunités internationales des personnels diplomatiques"})
CREATE (sd_carrieres_autres:sous_direction {name: "Sous-Direction de la Gestion des Carrières des Autres Catégories de Personnels", mission: "Gérer les carrières, la solde, et les pensions des personnels non diplomatiques"})
CREATE (sd_budget_materiel:sous_direction {name: "Sous-Direction du Budget, du Matériel et de la Maintenance", mission: "Préparer et exécuter le budget, gérer les marchés publics, et maintenir le patrimoine"})
CREATE (svc_action_sociale:service {name: "Service de l'Action Sociale, de la Vie Associative et Culturelle", mission: "Améliorer les conditions de travail, soutenir la vie associative, et promouvoir le genre"})
CREATE (bur_archives_dag:bureau {name: "Bureau des Archives (Affaires Générales)", mission: "Collecter, classer, et conserver les documents produits par la Direction des Affaires Générales"})

// Create relationships for Direction des Affaires Générales
CREATE (dag)-[:MANAGES]->(cellule_sigipes)
CREATE (dag)-[:MANAGES]->(sd_carrieres_diplomatiques)
CREATE (dag)-[:MANAGES]->(sd_carrieres_autres)
CREATE (dag)-[:MANAGES]->(sd_budget_materiel)
CREATE (dag)-[:MANAGES]->(svc_action_sociale)
CREATE (dag)-[:MANAGES]->(bur_archives_dag)

// Create Services Extérieurs sub-units
CREATE (ambassades:service_exterieur {name: "Ambassades et Hauts-Commissariats", mission: "Représenter le Cameroun, négocier, et promouvoir la coopération internationale"})
CREATE (delegations:service_exterieur {name: "Délégations et Missions Permanentes", mission: "Représenter le Cameroun auprès des organisations internationales et promouvoir ses intérêts"})
CREATE (consulats:service_exterieur {name: "Consulats Généraux, Consulats, Consulats Honoraires", mission: "Protéger les nationaux, gérer les affaires consulaires, et promouvoir les relations bilatérales"})

// Create relationships for Services Extérieurs
CREATE (se)-[:MANAGES]->(ambassades)
CREATE (se)-[:MANAGES]->(delegations)
CREATE (se)-[:MANAGES]->(consulats)

// Create reverse REPORTS_TO relationships
CREATE (sp_ministre)-[:REPORTS_TO]->(minrex)
CREATE (sp_md_commonwealth)-[:REPORTS_TO]->(minrex)
CREATE (sp_md_monde_islamique)-[:REPORTS_TO]->(minrex)
CREATE (ig)-[:REPORTS_TO]->(minrex)
CREATE (ct)-[:REPORTS_TO]->(minrex)
CREATE (ac)-[:REPORTS_TO]->(minrex)
CREATE (se)-[:REPORTS_TO]->(minrex)
CREATE (ig_consulaires)-[:REPORTS_TO]->(ig)
CREATE (ig_patrimoine)-[:REPORTS_TO]->(ig)
CREATE (ig_services)-[:REPORTS_TO]->(ig)
CREATE (insp_consulaires)-[:REPORTS_TO]->(ig_consulaires)
CREATE (insp_patrimoine)-[:REPORTS_TO]->(ig_patrimoine)
CREATE (insp_services)-[:REPORTS_TO]->(ig_services)
CREATE (sg)-[:REPORTS_TO]->(ac)
CREATE (daa)-[:REPORTS_TO]->(ac)
CREATE (dag)-[:REPORTS_TO]->(ac)
CREATE (div_traduction)-[:REPORTS_TO]->(sg)
CREATE (centre_analyses)-[:REPORTS_TO]->(sg)
CREATE (cellule_suivi)-[:REPORTS_TO]->(sg)
CREATE (cellule_ntc)-[:REPORTS_TO]->(sg)
CREATE (sd_courrier)-[:REPORTS_TO]->(sg)
CREATE (svc_courrier)-[:REPORTS_TO]->(sd_courrier)
CREATE (svc_chiffre)-[:REPORTS_TO]->(sd_courrier)
CREATE (svc_relance)-[:REPORTS_TO]->(sd_courrier)
CREATE (sd_afrique_centrale)-[:REPORTS_TO]->(daa)
CREATE (sd_afrique_occidentale)-[:REPORTS_TO]->(daa)
CREATE (sd_nigeria)-[:REPORTS_TO]->(daa)
CREATE (sd_afrique_australe_orientale)-[:REPORTS_TO]->(daa)
CREATE (sd_afrique_nord)-[:REPORTS_TO]->(daa)
CREATE (sd_union_africaine)-[:REPORTS_TO]->(daa)
CREATE (bur_archives_daa)-[:REPORTS_TO]->(daa)
CREATE (cellule_sigipes)-[:REPORTS_TO]->(dag)
CREATE (sd_carrieres_diplomatiques)-[:REPORTS_TO]->(dag)
CREATE (sd_carrieres_autres)-[:REPORTS_TO]->(dag)
CREATE (sd_budget_materiel)-[:REPORTS_TO]->(dag)
CREATE (svc_action_sociale)-[:REPORTS_TO]->(dag)
CREATE (bur_archives_dag)-[:REPORTS_TO]->(dag)
CREATE (ambassades)-[:REPORTS_TO]->(se)
CREATE (delegations)-[:REPORTS_TO]->(se)
CREATE (consulats)-[:REPORTS_TO]->(se)