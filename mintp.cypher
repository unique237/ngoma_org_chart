// File: mintp_organisation.cypher
// Cypher script for the administrative structure of the Ministère des Travaux Publics (Decree No. 2018/461)
// Create top-level Ministry node
CREATE
  (mintp:mintp
    {
      name: "Ministère des Travaux Publics",
      mission:
        "Élaborer la politique de construction, de maintenance et d'entretien des infrastructures, routes et bâtiments publics, superviser leur mise en œuvre, et protéger le patrimoine routier national"
    })

// Create top-level units
CREATE
  (sp:secretariat_particulier
    {
      name: "Secrétariat Particulier",
      mission: "Gérer les affaires réservées du Ministre des Travaux Publics"
    })
CREATE
  (ig:inspection_generale
    {
      name: "Inspection Générale",
      mission:
        "Auditer les performances, contrôler le fonctionnement des services, et veiller à la qualité des infrastructures et équipements"
    })
CREATE
  (ct:conseillers_techniques
    {
      name: "Conseillers Techniques",
      mission:
        "Effectuer les missions confiées par le Ministre et fournir des conseils techniques"
    })
CREATE
  (sg:secretariat_general
    {
      name: "Secrétariat Général",
      mission:
        "Coordonner et contrôler les services centraux et déconcentrés, superviser les programmes d’action, et gérer les ressources du ministère"
    })
CREATE
  (ac:administration_centrale
    {
      name: "Administration Centrale",
      mission:
        "Coordonner les activités administratives et techniques du ministère à travers ses directions et services"
    })
CREATE
  (sd:services_deconcentres
    {
      name: "Services Déconcentrés",
      mission:
        "Mettre en œuvre les politiques du ministère au niveau régional et local, et assurer l’entretien des infrastructures"
    })

// Create relationships for top-level units
CREATE (mintp)-[:MANAGES]->(sp)
CREATE (mintp)-[:MANAGES]->(ig)
CREATE (mintp)-[:MANAGES]->(ct)
CREATE (mintp)-[:MANAGES]->(sg)
CREATE (mintp)-[:MANAGES]->(ac)
CREATE (mintp)-[:MANAGES]->(sd)

// Create Inspection Générale sub-units
CREATE
  (ig_infra:inspecteur_general
    {
      name: "Inspecteur Général des Infrastructures",
      mission:
        "Superviser et auditer la qualité des infrastructures routières et publiques"
    })
CREATE
  (ig_equip:inspecteur_general
    {
      name: "Inspecteur Général des Équipements",
      mission:
        "Contrôler la gestion et la maintenance des équipements du ministère"
    })

// Create relationships for Inspection Générale
CREATE (ig)-[:MANAGES]->(ig_infra)
CREATE (ig)-[:MANAGES]->(ig_equip)

// Create Administration Centrale sub-units
CREATE
  (dt:direction
    {
      name: "Direction Technique",
      mission:
        "Planifier et superviser la construction et la maintenance des infrastructures routières et publiques"
    })
CREATE
  (dag:direction
    {
      name: "Direction des Affaires Générales",
      mission:
        "Gérer les ressources humaines, le budget, les marchés publics, et le patrimoine du ministère"
    })
CREATE
  (dcp:division
    {
      name: "Division de la Coopération et du Partenariat",
      mission:
        "Préparer et suivre les négociations, gérer la coopération bilatérale et multilatérale, et coordonner les partenariats avec les bailleurs de fonds et organisations internationales"
    })
CREATE
  (cellule_comm:cellule
    {
      name: "Cellule de Communication",
      mission:
        "Mettre en œuvre la stratégie de communication gouvernementale, concevoir des messages, et gérer les relations avec les médias"
    })
CREATE
  (cellule_formation:cellule
    {
      name: "Cellule de la Formation",
      mission:
        "Organiser et suivre les programmes de formation pour le personnel du ministère"
    })

// Create relationships for Administration Centrale
CREATE (ac)-[:MANAGES]->(sg)
CREATE (ac)-[:MANAGES]->(dt)
CREATE (ac)-[:MANAGES]->(dag)
CREATE (sg)-[:MANAGES]->(dcp)
CREATE (sg)-[:MANAGES]->(cellule_comm)
CREATE (sg)-[:MANAGES]->(cellule_formation)

// Create Services Déconcentrés sub-units
CREATE
  (dr:delegation_regionale
    {
      name: "Délégations Régionales",
      mission:
        "Coordonner les activités du ministère au niveau régional, superviser les projets d’infrastructure, et assurer leur maintenance"
    })
CREATE
  (cellule_etudes:cellule
    {
      name: "Cellule Régionale des Études, des Enquêtes et des Statistiques",
      mission:
        "Réaliser des études régionales, collecter des données, et produire des statistiques sur les infrastructures et travaux publics"
    })
CREATE
  (svc_maintenance:service
    {
      name: "Service de Maintenance",
      mission:
        "Assurer l’entretien et la maintenance des équipements lourds et des véhicules du ministère"
    })

// Create relationships for Services Déconcentrés
CREATE (sd)-[:MANAGES]->(dr)
CREATE (dr)-[:MANAGES]->(cellule_etudes)
CREATE (sd)-[:MANAGES]->(svc_maintenance)

// Create reverse REPORTS_TO relationships
CREATE (sp)-[:REPORTS_TO]->(mintp)
CREATE (ig)-[:REPORTS_TO]->(mintp)
CREATE (ct)-[:REPORTS_TO]->(mintp)
CREATE (sg)-[:REPORTS_TO]->(mintp)
CREATE (ac)-[:REPORTS_TO]->(mintp)
CREATE (sd)-[:REPORTS_TO]->(mintp)
CREATE (ig_infra)-[:REPORTS_TO]->(ig)
CREATE (ig_equip)-[:REPORTS_TO]->(ig)
CREATE (dt)-[:REPORTS_TO]->(ac)
CREATE (dag)-[:REPORTS_TO]->(ac)
CREATE (dcp)-[:REPORTS_TO]->(sg)
CREATE (cellule_comm)-[:REPORTS_TO]->(sg)
CREATE (cellule_formation)-[:REPORTS_TO]->(sg)
CREATE (dr)-[:REPORTS_TO]->(sd)
CREATE (cellule_etudes)-[:REPORTS_TO]->(dr)
CREATE (svc_maintenance)-[:REPORTS_TO]->(sd)