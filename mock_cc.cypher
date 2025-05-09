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
CREATE (bcl:bureau_courrier_liaison {name: "Bureau du Courrier et de la Liaison"})
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

// Service de l'Accueil, du Courrier et de la Liaison -> Bureaux
CREATE (sacl)-[:OVERSEES]->(ba)
CREATE (sacl)-[:OVERSEES]->(bcl)
CREATE (ba)-[:REPORTS_TO]->(sacl)
CREATE (bcl)-[:REPORTS_TO]->(sacl)

// Service de la Documentation et des Archives -> Bureaux
CREATE (sda)-[:OVERSEES]->(bd)
CREATE (sda)-[:OVERSEES]->(ba2)
CREATE (bd)-[:REPORTS_TO]->(sda)
CREATE (ba2)-[:REPORTS_TO]->(sda)

// Create President of the Constitutional Council
CREATE
  (president:CivilServant:Matricule
    {
      name: "President du Conseil Constitutionnel",
      rank: "Ministre",
      matricule: "123456A"
    })

// Create relationship between council and president
WITH president
MATCH (cc:conseil_constitutionnel {name: "Conseil Constitutionnel"})
CREATE (cc)-[:HAS_PRESIDENT]->(president)

// Create Secretary General and staff
CREATE
  (sg_staff:CivilServant:Matricule
    {
      name: "Secrétaire Général",
      rank: "Secrétaire Général",
      matricule: "234567B"
    })

// Create relationship between president and secretary general
CREATE (president)-[:OVERSEES]->(sg_staff)

// Create Directors (Directeur et Assimilés)
CREATE
  (daj_dir:CivilServant:Matricule
    {
      name: "Directeur des Affaires Juridiques",
      rank: "Directeur",
      matricule: "345678C"
    })

CREATE
  (daaf_dir:CivilServant:Matricule
    {
      name: "Directeur des Affaires Administratives et Financières",
      rank: "Directeur",
      matricule: "456789D"
    })

// Create relationships between SG and Directors
CREATE (sg_staff)-[:OVERSEES]->(daj_dir)
CREATE (sg_staff)-[:OVERSEES]->(daaf_dir)

// Create Sous-directeurs (Deputy Directors)
CREATE
  (daj_sousdir:CivilServant:Matricule
    {
      name: "Sous-directeur des Affaires Juridiques",
      rank: "Sous-directeur",
      matricule: "567890E"
    })

CREATE
  (daaf_sousdir:CivilServant:Matricule
    {
      name: "Sous-directeur des Affaires Administratives et Financières",
      rank: "Sous-directeur",
      matricule: "678901F"
    })

// Relationships between Directors and Deputy Directors
CREATE (daj_dir)-[:OVERSEES]->(daj_sousdir)
CREATE (daaf_dir)-[:OVERSEES]->(daaf_sousdir)

// Create Chefs de Service (Department Heads)
CREATE
  (sag_chef:CivilServant:Matricule
    {
      name: "Chef du Service des Affaires Générales",
      rank: "Chef de Service",
      matricule: "789012G"
    })

CREATE
  (sb_chef:CivilServant:Matricule
    {
      name: "Chef du Service du Budget",
      rank: "Chef de Service",
      matricule: "890123H"
    })

// Create relationships between DA division and department heads
CREATE (daaf_sousdir)-[:OVERSEES]->(sag_chef)
CREATE (daaf_sousdir)-[:OVERSEES]->(sb_chef)

// Create Chefs de Bureau (Bureau Chiefs)
CREATE
  (bp_chef:CivilServant:Matricule
    {
      name: "Chef du Bureau du Personnel",
      rank: "Chef de Bureau",
      matricule: "901234I"
    })

CREATE
  (bm_chef:CivilServant:Matricule
    {
      name: "Chef du Bureau du Matériel",
      rank: "Chef de Bureau",
      matricule: "012345J"
    })

// Relationships between department heads and bureau chiefs
CREATE (sag_chef)-[:OVERSEES]->(bp_chef)
CREATE (sag_chef)-[:OVERSEES]->(bm_chef)

// Create regular staff members (no specific rank)
CREATE
  (bp_staff1:CivilServant:Matricule
    {name: "Agent du Bureau du Personnel", rank: "Agent", matricule: "123457K"})

CREATE
  (bp_staff2:CivilServant:Matricule
    {
      name: "Adjoint du Bureau du Personnel",
      rank: "Adjoint",
      matricule: "234568L"
    })

// Relationships between bureau chiefs and staff
CREATE (bp_chef)-[:OVERSEES]->(bp_staff1)
CREATE (bp_chef)-[:OVERSEES]->(bp_staff2)

// Create additional staff for other departments
CREATE
  (sb_staff1:CivilServant:Matricule
    {name: "Agent du Service du Budget", rank: "Agent", matricule: "345679M"})

CREATE
  (sb_staff2:CivilServant:Matricule
    {name: "Comptable Principal", rank: "Comptable", matricule: "456780N"})

// Relationships between department heads and staff
CREATE (sb_chef)-[:OVERSEES]->(sb_staff1)
CREATE (sb_chef)-[:OVERSEES]->(sb_staff2)

// Create staff for the Greffe (Registry)
CREATE
  (greffier:CivilServant:Matricule
    {name: "Greffier en Chef", rank: "Chef de Service", matricule: "567891O"})

CREATE
  (greffier_adj:CivilServant:Matricule
    {name: "Greffier Adjoint", rank: "Adjoint", matricule: "678902P"})

// Connect Greffe staff to Secretary General
CREATE (sg_staff)-[:OVERSEES]->(greffier)
CREATE (greffier)-[:OVERSEES]->(greffier_adj)
