// File: constitutional_council.cypher
// Cypher script for the administrative structure of the Constitutional Council of Cameroon

// Create nodes for the administrative units
CREATE (cc:conseil_constitutionnel {name: "Conseil Constitutionnel"})
CREATE (sg:secretariat_general {name: "Secrétariat Général"})
CREATE (daj:division_affaires_juridiques {name: "Division des Affaires Juridiques"})
CREATE (daaf:division_affaires_administratives_financieres {name: "Division des Affaires Administratives et Financières"})
CREATE (gr:greffe {name: "Greffe"})
CREATE (ccti:cellule_communication_traduction_interpretation {name: "Cellule de la Communication, de la Traduction et de l'Interprétation"})
CREATE (sc:service_cooperation {name: "Service de la Coopération"})
CREATE (si:service_informatique {name: "Service Informatique"})
CREATE (sacl:service_accueil_courrier_liaison {name: "Service de l'Accueil, du Courrier et de la Liaison"})
CREATE (sda:service_documentation_archives {name: "Service de la Documentation et des Archives"})
CREATE (sag:service_affaires_generales {name: "Service des Affaires Générales"})
CREATE (sb:service_budget {name: "Service du Budget"})
CREATE (sct:section_constitutionnalite_textes {name: "Section de la Constitutionnalité des Textes"})
CREATE (sca:section_conflits_attribution {name: "Section des Conflits d'Attribution"})
CREATE (scer:section_regularite_consultations_electorales_referendaires {name: "Section de la Régularité des Consultations Électorales et Référendaires"})
CREATE (sdac:section_demandes_avis_consultatif {name: "Section des Demandes d'Avis Consultatif"})
CREATE (bp:bureau_personnel {name: "Bureau du Personnel"})
CREATE (bm:bureau_materiel {name: "Bureau du Matériel"})
CREATE (beb:bureau_elaboration_budget {name: "Bureau de l'Élaboration du Budget"})
CREATE (be:bureau_execution_budget {name: "Bureau de l'Exécution du Budget"})
CREATE (ba:bureau_accueil_orientation {name: "Bureau de l'Accueil et de l'Orientation"})
CREATE (bcl:bureau_courrier_liaison {name: "Bureau du Courrier et de Liaison"})
CREATE (bd:bureau_documentation {name: "Bureau de la Documentation"})
CREATE (ba2:bureau_archives {name: "Bureau des Archives"})

// Create relationships
// Conseil Constitutionnel -> Secrétariat Général
CREATE (cc)-[:OVERSEES]->(sg)
CREATE (sg)-[:REPORTS_TO]->(cc)

// Secrétariat Général -> Divisions, Greffe, Cellule, Services
CREATE (sg)-[:OVERSEES]->(daj)
CREATE (sg)-[:OVERSEES]->(daaf)
CREATE (sg)-[:OVERSEES]->(gr)
CREATE (sg)-[:OVERSEES]->(ccti)
CREATE (sg)-[:OVERSEES]->(sc)
CREATE (sg)-[:OVERSEES]->(si)
CREATE (sg)-[:OVERSEES]->(sacl)
CREATE (sg)-[:OVERSEES]->(sda)
CREATE (daj)-[:REPORTS_TO]->(sg)
CREATE (daaf)-[:REPORTS_TO]->(sg)
CREATE (gr)-[:REPORTS_TO]->(sg)
CREATE (ccti)-[:REPORTS_TO]->(sg)
CREATE (sc)-[:REPORTS_TO]->(sg)
CREATE (si)-[:REPORTS_TO]->(sg)
CREATE (sacl)-[:REPORTS_TO]->(sg)
CREATE (sda)-[:REPORTS_TO]->(sg)

// Division des Affaires Administratives et Financières -> Services
CREATE (daaf)-[:OVERSEES]->(sag)
CREATE (daaf)-[:OVERSEES]->(sb)
CREATE (sag)-[:REPORTS_TO]->(daaf)
CREATE (sb)-[:REPORTS_TO]->(daaf)

// Greffe -> Sections
CREATE (gr)-[:OVERSEES]->(sct)
CREATE (gr)-[:OVERSEES]->(sca)
CREATE (gr)-[:OVERSEES]->(scer)
CREATE (gr)-[:OVERSEES]->(sdac)
CREATE (sct)-[:REPORTS_TO]->(gr)
CREATE (sca)-[:REPORTS_TO]->(gr)
CREATE (scer)-[:REPORTS_TO]->(gr)
CREATE (sdac)-[:REPORTS_TO]->(gr)

// Service des Affaires Générales -> Bureaux
CREATE (sag)-[:OVERSEES]->(bp)
CREATE (sag)-[:OVERSEES]->(bm)
CREATE (bp)-[:REPORTS_TO]->(sag)
CREATE (bm)-[:REPORTS_TO]->(sag)

// Service du Budget -> Bureaux
CREATE (sb)-[:OVERSEES]->(beb)
CREATE (sb)-[:OVERSEES]->(be)
CREATE (beb)-[:REPORTS_TO]->(sb)
CREATE (be)-[:REPORTS_TO]->(sb)

// Service de l'Accueil, du Courrier et de Liaison -> Bureaux
CREATE (sacl)-[:OVERSEES]->(ba)
CREATE (sacl)-[:OVERSEES]->(bcl)
CREATE (ba)-[:REPORTS_TO]->(sacl)
CREATE (bcl)-[:REPORTS_TO]->(sacl)

// Service de la Documentation et des Archives -> Bureaux
CREATE (sda)-[:OVERSEES]->(bd)
CREATE (sda)-[:OVERSEES]->(ba2)
CREATE (bd)-[:REPORTS_TO]->(sda)
CREATE (ba2)-[:REPORTS_TO]->(sda)