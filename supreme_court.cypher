// File: supreme_court.cypher
// Cypher script for the administrative structure of the Supreme Court of Cameroon

// Create nodes for the administrative units
CREATE (cs:cour_supreme {name: "Cour Suprême"})
CREATE (cj:chambre_judiciaire {name: "Chambre Judiciaire"})
CREATE (ca:chambre_administrative {name: "Chambre Administrative"})
CREATE (cc:chambre_comptes {name: "Chambre des Comptes"})
CREATE (ss:section_specialisee {name: "Section Spécialisée"})
CREATE (cci:chambre_controle_instruction {name: "Chambre de Contrôle de l'Instruction"})
CREATE (cr:chambres_reunies {name: "Chambres Réunies"})
CREATE (ag:assemblee_generale {name: "Assemblée Générale"})
CREATE (b:bureau {name: "Bureau"})
CREATE (ci:commission_indemnisation {name: "Commission d'Indemnisation des Personnes Victimes d'une Détention Provisoire ou d'une Garde à Vue Abusives"})
CREATE (caj:commission_assistance_judiciaire {name: "Commission d'Assistance Judiciaire"})
CREATE (sg:secretariat_general {name: "Secrétariat Général"})
CREATE (gr:greffe {name: "Greffe"})

// Chambre Judiciaire Sections
CREATE (sciv:section_civile {name: "Section Civile"})
CREATE (scom:section_commerciale {name: "Section Commerciale"})
CREATE (spen:section_penale {name: "Section Pénale"})
CREATE (ssoc:section_sociale {name: "Section Sociale"})
CREATE (scl:section_common_law {name: "Section de la Common Law"})
CREATE (sdt:section_droit_traditionnel {name: "Section de Droit Traditionnel"})

// Chambre Administrative Sections
CREATE (scfp:section_contentieux_fonction_publique {name: "Section du Contentieux de la Fonction Publique"})
CREATE (scafd:section_contentieux_affaires_foncieres_domaniales {name: "Section du Contentieux des Affaires Foncières et Domaniales"})
CREATE (scff:section_contentieux_fiscal_financier {name: "Section du Contentieux Fiscal et Financier"})
CREATE (scca:section_contentieux_contrats_administratifs {name: "Section du Contentieux des Contrats Administratifs"})
CREATE (scaqd:section_contentieux_annulation_questions_diverses {name: "Section du Contentieux de l'Annulation et des Questions Diverses"})

// Chambre des Comptes Sections
CREATE (sccje:section_controle_jugement_comptes_etat {name: "Section de Contrôle et de Jugement des Comptes des Comptables de l'Etat"})
CREATE (sccjctd:section_controle_jugement_comptes_collectivites_territoriales_decentralisees {name: "Section de Contrôle et de Jugement des Comptes des Comptables des Collectivités Territoriales Décentralisées"})
CREATE (sccjepe:section_controle_jugement_comptes_etablissements_publics_etat {name: "Section de Contrôle et de Jugement des Comptes des Comptables des Établissements Publics de l'État"})
CREATE (sccjspp:section_controle_jugement_comptes_secteur_public_parapublic {name: "Section de Contrôle et de Jugement des Comptes des Entreprises du Secteur Public et Parapublic"})
CREATE (sp:section_pourvois {name: "Section des Pourvois"})

// Create relationships
// Cour Suprême -> Top-level organs
CREATE (cs)-[:MANAGES]->(cj)
CREATE (cs)-[:MANAGES]->(ca)
CREATE (cs)-[:MANAGES]->(cc)
CREATE (cs)-[:MANAGES]->(ss)
CREATE (cs)-[:MANAGES]->(cr)
CREATE (cs)-[:MANAGES]->(ag)
CREATE (cs)-[:MANAGES]->(b)
CREATE (cs)-[:MANAGES]->(ci)
CREATE (cs)-[:MANAGES]->(caj)
CREATE (cs)-[:MANAGES]->(sg)
CREATE (cs)-[:MANAGES]->(gr)
CREATE (cj)-[:REPORTS_TO]->(cs)
CREATE (ca)-[:REPORTS_TO]->(cs)
CREATE (cc)-[:REPORTS_TO]->(cs)
CREATE (ss)-[:REPORTS_TO]->(cs)
CREATE (cr)-[:REPORTS_TO]->(cs)
CREATE (ag)-[:REPORTS_TO]->(cs)
CREATE (b)-[:REPORTS_TO]->(cs)
CREATE (ci)-[:REPORTS_TO]->(cs)
CREATE (caj)-[:REPORTS_TO]->(cs)
CREATE (sg)-[:REPORTS_TO]->(cs)
CREATE (gr)-[:REPORTS_TO]->(cs)

// Section Spécialisée -> Chambre de Contrôle de l'Instruction
CREATE (ss)-[:MANAGES]->(cci)
CREATE (cci)-[:REPORTS_TO]->(ss)

// Chambre Judiciaire -> Sections
CREATE (cj)-[:MANAGES]->(sciv)
CREATE (cj)-[:MANAGES]->(scom)
CREATE (cj)-[:MANAGES]->(spen)
CREATE (cj)-[:MANAGES]->(ssoc)
CREATE (cj)-[:MANAGES]->(scl)
CREATE (cj)-[:MANAGES]->(sdt)
CREATE (sciv)-[:REPORTS_TO]->(cj)
CREATE (scom)-[:REPORTS_TO]->(cj)
CREATE (spen)-[:REPORTS_TO]->(cj)
CREATE (ssoc)-[:REPORTS_TO]->(cj)
CREATE (scl)-[:REPORTS_TO]->(cj)
CREATE (sdt)-[:REPORTS_TO]->(cj)

// Chambre Administrative -> Sections
CREATE (ca)-[:MANAGES]->(scfp)
CREATE (ca)-[:MANAGES]->(scafd)
CREATE (ca)-[:MANAGES]->(scff)
CREATE (ca)-[:MANAGES]->(scca)
CREATE (ca)-[:MANAGES]->(scaqd)
CREATE (scfp)-[:REPORTS_TO]->(ca)
CREATE (scafd)-[:REPORTS_TO]->(ca)
CREATE (scff)-[:REPORTS_TO]->(ca)
CREATE (scca)-[:REPORTS_TO]->(ca)
CREATE (scaqd)-[:REPORTS_TO]->(ca)

// Chambre des Comptes -> Sections
CREATE (cc)-[:MANAGES]->(sccje)
CREATE (cc)-[:MANAGES]->(sccjctd)
CREATE (cc)-[:MANAGES]->(sccjepe)
CREATE (cc)-[:MANAGES]->(sccjspp)
CREATE (cc)-[:MANAGES]->(sp)
CREATE (sccje)-[:REPORTS_TO]->(cc)
CREATE (sccjctd)-[:REPORTS_TO]->(cc)
CREATE (sccjepe)-[:REPORTS_TO]->(cc)
CREATE (sccjspp)-[:REPORTS_TO]->(cc)
CREATE (sp)-[:REPORTS_TO]->(cc)