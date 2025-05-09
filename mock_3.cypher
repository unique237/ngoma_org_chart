//create the president
CREATE (president:President:Matricule:Fonction {name: "Président", matricule: "123456A", rank: "Ministre"})
//the sg
CREATE (sg:Secretaire_General:Matricule:Fonction {name: "Secrétaire Général", matricule: "234567B", rank: "Secrétaire Général"})
//Division des Affaires Juridiques
CREATE (daj:Division_Affaires_Juridiques:Matricule:Fonction {name: "Chef de la Division des Affaires Juridiques", matricule: "345678C", rank: "Directeur"})
//Division des Affaires Administratives et Financières
CREATE (daaf:Division_Affaires_Administratives_Financieres:Matricule:Fonction {name: "Chef de la Division des Affaires Administratives et Financières", matricule: "456789D", rank: "Directeur"})
//Cellule de la Communication, de la Traduction et de l'Interprétation
CREATE (ccti:Cellule_Communication_Traduction_Interpretation:Matricule:Fonction {name: "Chef de la Cellule de la Communication, de la Traduction et de l'Interprétation", matricule: "567890E", rank: "Directeur"})
//Service de la Coopération
CREATE (sc:Service_Cooperation:Matricule:Fonction {name: "Chef Service de la Coopération", matricule: "678901F", rank: "Directeur"})
//Service Informatique
CREATE (si:Service_Informatique:Matricule:Fonction {name: "Chef Service Informatique", matricule: "789012G", rank: "Directeur"})
//Service de l'Accueil, du Courrier et de Liaison
CREATE (sacl:Service_Accueil_Courrier_Liaison:Matricule:Fonction {name: "Chef Service de l'Accueil, du Courrier et de Liaison", matricule: "890123H", rank: "Directeur"})
//Service de la Documentation et des Archives
CREATE (sda:Service_Documentation_Archives:Matricule:Fonction {name: "Chef Service de la Documentation et des Archives", matricule: "901234I", rank: "Directeur"})
//Greffe
CREATE (gr:Greffe:Matricule:Fonction {name: "Chef Service des Greffes", matricule: "012345J", rank: "Directeur"})
//Section de la Constitutionnalité des Textes
CREATE (section_constitutionnalite_textes:Section_Constitutionnalite_Textes:Matricule:Fonction {name: "Chef de la Section de la Constitutionnalité des Textes", matricule: "123456K", rank: "Directeur"})
//Section des Conflits d'Attribution"
CREATE (section_conflits_attribution:Section_Conflits_Attribution:Matricule:Fonction {name: "Chef de la Section des Conflits d'Attribution", matricule: "234567L", rank: "Directeur"})
//Section de la Régularité des Consultations Électorales et Référendaires
CREATE (section_regularite_consultations_electorales_referendaires:Section_Regularite_Consultations_Electorales_Referendaires:Matricule:Fonction {name: "Chef de la Section de la Régularité des Consultations Électorales et Référendaires", matricule: "345678M", rank: "Directeur"})
//Section des Demandes d'Avis Consultatif
CREATE (section_demandes_avis_consultatif:Section_Demandes_Avis_Consultatif:Matricule:Fonction {name: "Chef de la Section des Demandes d'Avis Consultatif", matricule: "456789N", rank: "Directeur"})
//Bureau du Personnel
CREATE (bureau_personnel:Bureau_Personnel:Matricule:Fonction {name: "Chef Bureau du Personnel", matricule: "567890O", rank: "Directeur"})
//Bureau du Matériel
CREATE (bureau_materiel:Bureau_Materiel:Matricule:Fonction {name: "Chef Bureau du Matériel", matricule: "678901P", rank: "Directeur"})
//Bureau de l'Élaboration du Budget
CREATE (bureau_elaboration_budget:Bureau_Elaboration_Budget:Matricule:Fonction {name: "Chef Bureau de l'Élaboration du Budget", matricule: "789012Q", rank: "Directeur"})
//Bureau de l'Exécution du Budget
CREATE (bureau_execution_budget:Bureau_Execution_Budget:Matricule:Fonction {name: "Chef Bureau de l'Exécution du Budget", matricule: "890123R", rank: "Directeur"})
//Bureau de l'Accueil et de l'Orientation
CREATE (bureau_accueil_orientation:Bureau_Accueil_Orientation:Matricule:Fonction {name: "Chef Bureau de l'Accueil et de l'Orientation", matricule: "901234S", rank: "Directeur"})
//Bureau du Courrier et de Liaison
CREATE (bureau_courrier_liaison:Bureau_Courrier_Liaison:Matricule:Fonction {name: "Chef Bureau du Courrier et de Liaison", matricule: "012345T", rank: "Directeur"})
//Bureau de la Documentation
CREATE (bureau_documentation:Bureau_Documentation:Matricule:Fonction {name: "Chef Bureau de la Documentation", matricule: "123456U", rank: "Directeur"})
//Bureau des Archives
CREATE (bureau_archives:Bureau_Archives:Matricule:Fonction {name: "Chef Bureau des Archives", matricule: "234567V", rank: "Directeur"})

//relationships with the personnel and the personnel and the services
CREATE (president)-[:WORKS_AT]->(conseil_constitutionnel)
CREATE (president)-[:OVERSEES]->(conseil_constitutionnel)
CREATE (sg)-[:WORKS_AT]->(secretariat_general)
CREATE (sg)-[:OVERSEES]->(secretariat_general)
// the different services directly under the sg
CREATE (sg)-[:OVERSEES]->(division_affaires_juridiques)
CREATE (sg)-[:OVERSEES]->(division_affaires_administratives_financieres)
CREATE (sg)-[:OVERSEES]->(cellule_communication_traduction_interpretation)
CREATE (sg)-[:OVERSEES]->(greffe)
CREATE (sg)-[:OVERSEES]->(service_informatique)
CREATE (sg)-[:OVERSEES]->(service_accueil_courrier_liaison)
CREATE (sg)-[:OVERSEES]->(service_documentation_archives)
CREATE (sg)-[:OVERSEES]->(bureau_affaires_generales)

//services under the greffes
CREATE (greffe)-[:OVERSEES]->(section_constitutionnalite_textes)
CREATE (greffe)-[:OVERSEES]->(section_conflits_attribution)
CREATE (greffe)-[:OVERSEES]->(section_regularite_consultations_electorales_referendaires)
CREATE (greffe)-[:OVERSEES]->(section_demandes_avis_consultatif)

//services under the division des affaires administratives et financieres
CREATE (division_affaires_administratives_financieres)-[:OVERSEES]->(service_affaires_generales)
CREATE (division_affaires_administratives_financieres)-[:OVERSEES]->(service_budget)

//services  under service_affaires_generales
CREATE (service_affaires_generales)-[:OVERSEES]->(bureau_personnel)
CREATE (service_affaires_generales)-[:OVERSEES]->(bureau_materiel)

//services under service_budget
CREATE (service_budget)-[:OVERSEES]->(bureau_elaboration_budget)
CREATE (service_budget)-[:OVERSEES]->(bureau_execution_budget)

//services under service_accueil_courrier_liaison
CREATE (service_accueil_courrier_liaison)-[:OVERSEES]->(bureau_accueil_orientation)
CREATE (service_accueil_courrier_liaison)-[:OVERSEES]->(bureau_courrier_liaison)
//services under service_documentation_archives
CREATE (service_documentation_archives)-[:OVERSEES]->(bureau_documentation)
CREATE (service_documentation_archives)-[:OVERSEES]->(bureau_archives)



