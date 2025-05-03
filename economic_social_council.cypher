// File: economic_social_council.cypher
// Cypher script for the administrative structure of the Economic and Social Council of Cameroon

// Create nodes for the administrative units
CREATE (ces:conseil_economique_social {name: "Conseil Économique et Social"})
CREATE (ap:assemblee_pleniere {name: "Assemblée Plénière"})
CREATE (bc:bureau_conseil {name: "Bureau du Conseil"})
CREATE (cs:commissions_specialisees {name: "Commissions Spécialisées"})
CREATE (sg:secretariat_general {name: "Secrétariat Général"})

// Create relationships
// Conseil Économique et Social -> Assemblée Plénière, Bureau du Conseil, Commissions Spécialisées, Secrétariat Général
CREATE (ces)-[:MANAGES]->(ap)
CREATE (ces)-[:MANAGES]->(bc)
CREATE (ces)-[:MANAGES]->(cs)
CREATE (ces)-[:MANAGES]->(sg)
CREATE (ap)-[:REPORTS_TO]->(ces)
CREATE (bc)-[:REPORTS_TO]->(ces)
CREATE (cs)-[:REPORTS_TO]->(ces)
CREATE (sg)-[:REPORTS_TO]->(ces)