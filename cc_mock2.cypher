// File: civil_servants_connection.cypher
// Connect civil servants to their respective administrative units

// Connect President to the Constitutional Council
MATCH (president:CivilServant {name: "President du Conseil Constitutionnel"})
MATCH (cc:conseil_constitutionnel {name: "Conseil Constitutionnel"})
CREATE (president)-[:WORKS_AT]->(cc)
WITH president, cc

// Connect Secretary General to the Secretariat General
MATCH (sg_staff:CivilServant {name: "Secrétaire Général"})
MATCH (sg:secretariat_general {name: "Secrétariat Général"})
CREATE (sg_staff)-[:WORKS_AT]->(sg)
WITH sg_staff, sg

// Connect Directors to their respective divisions
MATCH (daj_dir:CivilServant {name: "Directeur des Affaires Juridiques"})
MATCH (daj:division_affaires_juridiques {name: "Division des Affaires Juridiques"})
CREATE (daj_dir)-[:WORKS_AT]->(daj)
WITH daj_dir, daj

MATCH (daaf_dir:CivilServant {name: "Directeur des Affaires Administratives et Financières"})
MATCH (daaf:division_affaires_administratives_financieres {name: "Division des Affaires Administratives et Financières"})
CREATE (daaf_dir)-[:WORKS_AT]->(daaf)
WITH daaf_dir, daaf
// Connect Deputy Directors to their respective divisions
MATCH (daj_sousdir:CivilServant {name: "Sous-directeur des Affaires Juridiques"})
MATCH (daj:division_affaires_juridiques {name: "Division des Affaires Juridiques"})
CREATE (daj_sousdir)-[:WORKS_AT]->(daj)
WITH daj_sousdir, daj

MATCH (daaf_sousdir:CivilServant {name: "Sous-directeur des Affaires Administratives et Financières"})
MATCH (daaf:division_affaires_administratives_financieres {name: "Division des Affaires Administratives et Financières"})
CREATE (daaf_sousdir)-[:WORKS_AT]->(daaf)
WITH daaf_sousdir, daaf

// Connect Service Chiefs to their respective services
MATCH (sag_chef:CivilServant {name: "Chef du Service des Affaires Générales"})
MATCH (sag:service_affaires_generales {name: "Service des Affaires Générales"})
CREATE (sag_chef)-[:WORKS_AT]->(sag)
WITH sag_chef, sag

MATCH (sb_chef:CivilServant {name: "Chef du Service du Budget"})
MATCH (sb:service_budget {name: "Service du Budget"})
CREATE (sb_chef)-[:WORKS_AT]->(sb)
WITH sb_chef, sb

// Connect Bureau Chiefs to their respective bureaus
MATCH (bp_chef:CivilServant {name: "Chef du Bureau du Personnel"})
MATCH (bp:bureau_personnel {name: "Bureau du Personnel"})
CREATE (bp_chef)-[:WORKS_AT]->(bp)
WITH bp_chef, bp

MATCH (bm_chef:CivilServant {name: "Chef du Bureau du Matériel"})
MATCH (bm:bureau_materiel {name: "Bureau du Matériel"})
CREATE (bm_chef)-[:WORKS_AT]->(bm)
WITH bm_chef, bm

// Connect regular staff members to their bureaus
MATCH (bp_staff1:CivilServant {name: "Agent du Bureau du Personnel"})
MATCH (bp:bureau_personnel {name: "Bureau du Personnel"})
CREATE (bp_staff1)-[:WORKS_AT]->(bp)
WITH bp_staff1, bp

MATCH (bp_staff2:CivilServant {name: "Adjoint du Bureau du Personnel"})
MATCH (bp:bureau_personnel {name: "Bureau du Personnel"})
CREATE (bp_staff2)-[:WORKS_AT]->(bp)
WITH bp_staff2, bp

// Connect budget staff to their service
MATCH (sb_staff1:CivilServant {name: "Agent du Service du Budget"})
MATCH (sb:service_budget {name: "Service du Budget"})
CREATE (sb_staff1)-[:WORKS_AT]->(sb)
WITH sb_staff1, sb

MATCH (sb_staff2:CivilServant {name: "Comptable Principal"})
MATCH (sb:service_budget {name: "Service du Budget"})
CREATE (sb_staff2)-[:WORKS_AT]->(sb)
WITH sb_staff2, sb

// Connect Greffe staff to the Greffe
MATCH (greffier:CivilServant {name: "Greffier en Chef"})
MATCH (gr:greffe {name: "Greffe"})
CREATE (greffier)-[:WORKS_AT]->(gr)
WITH greffier, gr

MATCH (greffier_adj:CivilServant {name: "Greffier Adjoint"})
MATCH (gr:greffe {name: "Greffe"})
CREATE (greffier_adj)-[:WORKS_AT]->(gr)
