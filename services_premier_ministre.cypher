// File: services_premier_ministre.cypher
// Cypher script for the administrative structure of the Services of the Prime Minister of Cameroon

// Create nodes for top-level administrative units
CREATE (spm:services_premier_ministre {name: "Services du Premier Ministre"})
CREATE (sg:secretariat_general {name: "Secrétariat Général des Services du Premier Ministre"})
CREATE (c:cabinet {name: "Cabinet"})
CREATE (sp:secretariat_particulier {name: "Secrétariat Particulier"})
CREATE (spsre:services_plan_stabilisation_relance_economique {name: "Services chargés du Plan de Stabilisation et de Relance Économique"})
CREATE (dggtc:direction_generale_grands_travaux_cameroun {name: "Direction Générale des Grands Travaux du Cameroun"})
CREATE (hafp:haute_autorite_fonction_publique {name: "Haute Autorité de la Fonction Publique"})
CREATE (cndhl:comite_national_droits_homme_libertes {name: "Comité National des Droits de l'Homme et des Libertés"})
CREATE (cnc:conseil_national_communication {name: "Conseil National de la Communication"})

// Create nodes for Secrétariat Général internal services and their sub-units
CREATE (spsg:secretariat_particulier_secretaire_general {name: "Secrétariat Particulier du Secrétaire Général"})
CREATE (spsga:secretariat_particulier_secretaire_general_adjoint {name: "Secrétariat Particulier du Secrétaire Général-Adjoint"})
CREATE (srh:service_ressources_humaines {name: "Service des Ressources Humaines"})
CREATE (bm:bureau_missions {name: "Bureau des Missions"})
CREATE (scc:secretariat_conseils_cabinet {name: "Secrétariat des Conseils de Cabinet"})
CREATE (dalr:direction_affaires_legislatives_reglementaires {name: "Direction des Affaires Législatives et Réglementaires"})
CREATE (daar:direction_affaires_administratives_requetes {name: "Direction des Affaires Administratives et des Requêtes"})
CREATE (dcga:direction_courrier_gouvernemental_archives {name: "Direction du Courrier Gouvernemental et des Archives"})
CREATE (dag:direction_affaires_generales {name: "Direction des Affaires Générales"})
CREATE (dti:direction_traduction_interpretation {name: "Direction de la Traduction et de l’Interprétation"})

// Service des Ressources Humaines Bureaux
CREATE (bfpe:bureau_fichier_personnels_etat {name: "Bureau du Fichier des Personnels de l'État"})
CREATE (bfap:bureau_fichier_autres_personnels {name: "Bureau du Fichier des Autres Personnels"})

// Direction des Affaires Administratives et des Requêtes Services
CREATE (saa:service_affaires_administratives {name: "Service des Affaires Administratives"})
CREATE (sv:service_visa {name: "Service du Visa"})

// Service des Affaires Administratives Bureaux
CREATE (bg:bureau_gestion {name: "Bureau de Gestion"})
CREATE (br:bureau_requetes {name: "Bureau des Requêtes"})
CREATE (bs:bureau_suivi {name: "Bureau du Suivi"})

// Service du Visa Bureaux
CREATE (bv:bureau_visa {name: "Bureau du Visa"})
CREATE (bgd:bureau_gestion_domaniale {name: "Bureau de la Gestion Domaniale"})

// Direction du Courrier Gouvernemental et des Archives Services
CREATE (so:service_ordre {name: "Service d’Ordre"})
CREATE (sfa:service_fichier_archives {name: "Service du Fichier et des Archives"})

// Service d’Ordre Bureaux
CREATE (bre:bureau_reception {name: "Bureau de Réception"})
CREATE (bti:bureau_transmission_interne {name: "Bureau de la Transmission Interne"})
CREATE (bex:bureau_expedition {name: "Bureau de l’Expédition"})
CREATE (bch:bureau_chiffre {name: "Bureau du Chiffre"})

// Service du Fichier et des Archives Bureaux
CREATE (bfn:bureau_fichier_nominatif {name: "Bureau du Fichier Nominatif"})
CREATE (bfm:bureau_fichier_matieres {name: "Bureau du Fichier Matières"})
CREATE (bc:bureau_classement {name: "Bureau du Classement"})
CREATE (ba:bureau_archives {name: "Bureau des Archives"})

// Direction des Affaires Générales Services
CREATE (sp:service_personnel {name: "Service du Personnel"})
CREATE (sbm:service_budget_materiel {name: "Service du Budget et du Matériel"})
CREATE (slr:service_liaisons_radio {name: "Service des Liaisons Radio"})
CREATE (sr:service_reprographie {name: "Service de la Reprographie"})
CREATE (sd:service_documentation {name: "Service de la Documentation"})
CREATE (st:standard_telephonique {name: "Standard Téléphonique"})

// Service du Personnel Bureaux
CREATE (bpf:bureau_personnel_fonctionnaire {name: "Bureau du Personnel Fonctionnaire"})
CREATE (bpdc:bureau_personnel_decisionnaire_contractuel {name: "Bureau du Personnel Décisionnaire et Contractuel"})

// Service du Budget et du Matériel Bureaux
CREATE (bb:bureau_budget {name: "Bureau du Budget"})
CREATE (bm:bureau_materiel {name: "Bureau du Matériel"})

// Service des Liaisons Radio Bureaux
CREATE (bet:bureau_equipements_techniques {name: "Bureau des Équipements Techniques"})
CREATE (bmain:bureau_maintenance {name: "Bureau de la Maintenance"})
CREATE (brc:bureau_radio_commandement {name: "Bureau de la Radio Commandement"})

// Service de la Reprographie Bureaux
CREATE (bfab:bureau_fabrication {name: "Bureau de la Fabrication"})
CREATE (bmainr:bureau_maintenance_reprographie {name: "Bureau de la Maintenance"})

// Service de la Documentation Bureaux
CREATE (bcom:bureau_commandes {name: "Bureau des Commandes"})
CREATE (bcod:bureau_codifications {name: "Bureau des Codifications"})
CREATE (bdoc:bureau_documentation {name: "Bureau de la Documentation"})

// Direction de la Traduction et de l’Interprétation Services and Bureaux
CREATE (stlf:service_traduction_langue_francaise {name: "Service de la Traduction de Langue Française"})
CREATE (stla:service_traduction_langue_anglaise {name: "Service de la Traduction de Langue Anglaise"})
CREATE (std:service_terminologie_documentation {name: "Service de la Terminologie et de la Documentation"})
CREATE (bef:bureau_enregistrement_fichier {name: "Bureau d’Enregistrement et du Fichier"})
CREATE (pdt:pool_dactylographie {name: "Pool de Dactylographie"})

// Service de la Traduction de Langue Française Bureaux
CREATE (btlf:bureau_traduction_langue_francaise {name: "Bureau de la Traduction de Langue Française"})
CREATE (brlf:bureau_revision_langue_francaise {name: "Bureau de la Révision de Langue Française"})

// Service de la Traduction de Langue Anglaise Bureaux
CREATE (btla:bureau_traduction_langue_anglaise {name: "Bureau de la Traduction de Langue Anglaise"})
CREATE (brla:bureau_revision_langue_anglaise {name: "Bureau de la Révision de Langue Anglaise"})

// Create relationships
// Services du Premier Ministre -> Top-level units
CREATE (spm)-[:MANAGES]->(sg)
CREATE (spm)-[:MANAGES]->(c)
CREATE (spm)-[:MANAGES]->(sp)
CREATE (spm)-[:MANAGES]->(spsre)
CREATE (spm)-[:MANAGES]->(dggtc)
CREATE (spm)-[:MANAGES]->(hafp)
CREATE (spm)-[:MANAGES]->(cndhl)
CREATE (spm)-[:MANAGES]->(cnc)
CREATE (sg)-[:REPORTS_TO]->(spm)
CREATE (c)-[:REPORTS_TO]->(spm)
CREATE (sp)-[:REPORTS_TO]->(spm)
CREATE (spsre)-[:REPORTS_TO]->(spm)
CREATE (dggtc)-[:REPORTS_TO]->(spm)
CREATE (hafp)-[:REPORTS_TO]->(spm)
CREATE (cndhl)-[:REPORTS_TO]->(spm)
CREATE (cnc)-[:REPORTS_TO]->(spm)

// Secrétariat Général -> Internal services
CREATE (sg)-[:MANAGES]->(spsg)
CREATE (sg)-[:MANAGES]->(spsga)
CREATE (sg)-[:MANAGES]->(srh)
CREATE (sg)-[:MANAGES]->(bm)
CREATE (sg)-[:MANAGES]->(scc)
CREATE (sg)-[:MANAGES]->(dalr)
CREATE (sg)-[:MANAGES]->(daar)
CREATE (sg)-[:MANAGES]->(dcga)
CREATE (sg)-[:MANAGES]->(dag)
CREATE (sg)-[:MANAGES]->(dti)
CREATE (spsg)-[:REPORTS_TO]->(sg)
CREATE (spsga)-[:REPORTS_TO]->(sg)
CREATE (srh)-[:REPORTS_TO]->(sg)
CREATE (bm)-[:REPORTS_TO]->(sg)
CREATE (scc)-[:REPORTS_TO]->(sg)
CREATE (dalr)-[:REPORTS_TO]->(sg)
CREATE (daar)-[:REPORTS_TO]->(sg)
CREATE (dcga)-[:REPORTS_TO]->(sg)
CREATE (dag)-[:REPORTS_TO]->(sg)
CREATE (dti)-[:REPORTS_TO]->(sg)

// Service des Ressources Humaines -> Bureaux
CREATE (srh)-[:MANAGES]->(bfpe)
CREATE (srh)-[:MANAGES]->(bfap)
CREATE (bfpe)-[:REPORTS_TO]->(srh)
CREATE (bfap)-[:REPORTS_TO]->(srh)

// Direction des Affaires Administratives et des Requêtes -> Services
CREATE (daar)-[:MANAGES]->(saa)
CREATE (daar)-[:MANAGES]->(sv)
CREATE (saa)-[:REPORTS_TO]->(daar)
CREATE (sv)-[:REPORTS_TO]->(daar)

// Service des Affaires Administratives -> Bureaux
CREATE (saa)-[:MANAGES]->(bg)
CREATE (saa)-[:MANAGES]->(br)
CREATE (saa)-[:MANAGES]->(bs)
CREATE (bg)-[:REPORTS_TO]->(saa)
CREATE (br)-[:REPORTS_TO]->(saa)
CREATE (bs)-[:REPORTS_TO]->(saa)

// Service du Visa -> Bureaux
CREATE (sv)-[:MANAGES]->(bv)
CREATE (sv)-[:MANAGES]->(bgd)
CREATE (bv)-[:REPORTS_TO]->(sv)
CREATE (bgd)-[:REPORTS_TO]->(sv)

// Direction du Courrier Gouvernemental et des Archives -> Services
CREATE (dcga)-[:MANAGES]->(so)
CREATE (dcga)-[:MANAGES]->(sfa)
CREATE (so)-[:REPORTS_TO]->(dcga)
CREATE (sfa)-[:REPORTS_TO]->(dcga)

// Service d’Ordre -> Bureaux
CREATE (so)-[:MANAGES]->(bre)
CREATE (so)-[:MANAGES]->(bti)
CREATE (so)-[:MANAGES]->(bex)
CREATE (so)-[:MANAGES]->(bch)
CREATE (bre)-[:REPORTS_TO]->(so)
CREATE (bti)-[:REPORTS_TO]->(so)
CREATE (bex)-[:REPORTS_TO]->(so)
CREATE (bch)-[:REPORTS_TO]->(so)

// Service du Fichier et des Archives -> Bureaux
CREATE (sfa)-[:MANAGES]->(bfn)
CREATE (sfa)-[:MANAGES]->(bfm)
CREATE (sfa)-[:MANAGES]->(bc)
CREATE (sfa)-[:MANAGES]->(ba)
CREATE (bfn)-[:REPORTS_TO]->(sfa)
CREATE (bfm)-[:REPORTS_TO]->(sfa)
CREATE (bc)-[:REPORTS_TO]->(sfa)
CREATE (ba)-[:REPORTS_TO]->(sfa)

// Direction des Affaires Générales -> Services
CREATE (dag)-[:MANAGES]->(sp)
CREATE (dag)-[:MANAGES]->(sbm)
CREATE (dag)-[:MANAGES]->(slr)
CREATE (dag)-[:MANAGES]->(sr)
CREATE (dag)-[:MANAGES]->(sd)
CREATE (dag)-[:MANAGES]->(st)
CREATE (sp)-[:REPORTS_TO]->(dag)
CREATE (sbm)-[:REPORTS_TO]->(dag)
CREATE (slr)-[:REPORTS_TO]->(dag)
CREATE (sr)-[:REPORTS_TO]->(dag)
CREATE (sd)-[:REPORTS_TO]->(dag)
CREATE (st)-[:REPORTS_TO]->(dag)

// Service du Personnel -> Bureaux
CREATE (sp)-[:MANAGES]->(bpf)
CREATE (sp)-[:MANAGES]->(bpdc)
CREATE (bpf)-[:REPORTS_TO]->(sp)
CREATE (bpdc)-[:REPORTS_TO]->(sp)

// Service du Budget et du Matériel -> Bureaux
CREATE (sbm)-[:MANAGES]->(bb)
CREATE (sbm)-[:MANAGES]->(bm)
CREATE (bb)-[:REPORTS_TO]->(sbm)
CREATE (bm)-[:REPORTS_TO]->(sbm)

// Service des Liaisons Radio -> Bureaux
CREATE (slr)-[:MANAGES]->(bet)
CREATE (slr)-[:MANAGES]->(bmain)
CREATE (slr)-[:MANAGES]->(brc)
CREATE (bet)-[:REPORTS_TO]->(slr)
CREATE (bmain)-[:REPORTS_TO]->(slr)
CREATE (brc)-[:REPORTS_TO]->(slr)

// Service de la Reprographie -> Bureaux
CREATE (sr)-[:MANAGES]->(bfab)
CREATE (sr)-[:MANAGES]->(bmainr)
CREATE (bfab)-[:REPORTS_TO]->(sr)
CREATE (bmainr)-[:REPORTS_TO]->(sr)

// Service de la Documentation -> Bureaux
CREATE (sd)-[:MANAGES]->(bcom)
CREATE (sd)-[:MANAGES]->(bcod)
CREATE (sd)-[:MANAGES]->(bdoc)
CREATE (bcom)-[:REPORTS_TO]->(sd)
CREATE (bcod)-[:REPORTS_TO]->(sd)
CREATE (bdoc)-[:REPORTS_TO]->(sd)

// Direction de la Traduction et de l’Interprétation -> Services and Bureaux
CREATE (dti)-[:MANAGES]->(stlf)
CREATE (dti)-[:MANAGES]->(stla)
CREATE (dti)-[:MANAGES]->(std)
CREATE (dti)-[:MANAGES]->(bef)
CREATE (dti)-[:MANAGES]->(pdt)
CREATE (stlf)-[:REPORTS_TO]->(dti)
CREATE (stla)-[:REPORTS_TO]->(dti)
CREATE (std)-[:REPORTS_TO]->(dti)
CREATE (bef)-[:REPORTS_TO]->(dti)
CREATE (pdt)-[:REPORTS_TO]->(dti)

// Service de la Traduction de Langue Française -> Bureaux
CREATE (stlf)-[:MANAGES]->(btlf)
CREATE (stlf)-[:MANAGES]->(brlf)
CREATE (btlf)-[:REPORTS_TO]->(stlf)
CREATE (brlf)-[:REPORTS_TO]->(stlf)

// Service de la Traduction de Langue Anglaise -> Bureaux
CREATE (stla)-[:MANAGES]->(btla)
CREATE (stla)-[:MANAGES]->(brla)
CREATE (btla)-[:REPORTS_TO]->(stla)
CREATE (brla)-[:REPORTS_TO]->(stla)