// File: presidency_republic.cypher
// Cypher script for the administrative structure of the Presidency of the Republic of Cameroon

// Create nodes for top-level administrative units
CREATE (pr:presidence_republique {name: "Présidence de la République"})
CREATE (sg:secretariat_general {name: "Secrétariat Général"})
CREATE (cab_civil:cabinet_civil {name: "Cabinet Civil"})
CREATE (gcon:grande_chancellerie_ordres_nationaux {name: "Grande Chancellerie des Ordres Nationaux"})
CREATE (mindef:ministere_defense {name: "Ministère de la Défense"})
CREATE (scse:services_controle_superieur_etat {name: "Services du Contrôle Supérieur de l'État"})
CREATE (scra:services_relations_assemblees {name: "Services chargés des Relations avec les Assemblées"})
CREATE (mmp:ministere_marches_publics {name: "Ministère des Marchés Publics"})
CREATE (mcm:ministres_charges_mission {name: "Ministres Chargés de Mission"})
CREATE (msp:ministres_sans_portefeuille {name: "Ministres sans portefeuille"})
CREATE (dgsn:delegation_generale_surete_nationale {name: "Délégation Générale à la Sûreté Nationale"})
CREATE (dgre:delegation_generale_recherche_exterieure {name: "Délégation Générale à la Recherche Extérieure"})
CREATE (cs:conseillers_speciaux {name: "Conseillers Spéciaux"})
CREATE (ai:ambassadeurs_itinerants {name: "Ambassadeurs Itinérants"})
CREATE (iprp:intendance_palais_unite_residences_pavillons_presidentiels {name: "Intendance du Palais de l'Unité, des Résidences et Pavillons Présidentiels"})
CREATE (emp:etat_major_particulier {name: "État-Major Particulier du Président de la République"})
CREATE (dsp:direction_securite_presidentielle {name: "Direction de la Sécurité Présidentielle"})
CREATE (gp:garde_presidentielle {name: "Garde Présidentielle"})
CREATE (cns:conseil_national_securite {name: "Conseil National de Sécurité"})
CREATE (cnac:commission_nationale_anti_corruption {name: "Commission Nationale Anti-Corruption"})
CREATE (cnf:commission_nationale_frontieres {name: "Commission Nationale des Frontières"})
CREATE (csgp:comite_suivi_grands_projets {name: "Comité de Suivi des Grands Projets"})

// Create nodes for Secrétariat Général internal services and their sub-units
CREATE (sd:service_deplacements {name: "Service des Déplacements"})
CREATE (sflr:service_fichier_legislatif_reglementaire {name: "Service du Fichier Législatif et Réglementaire"})
CREATE (ipu:imprimerie_palais_unite {name: "Imprimerie du Palais de l'Unité"})
CREATE (di:direction_informatique {name: "Direction de l'Informatique"})
CREATE (dcp:direction_courrier_presidentiel {name: "Direction du Courrier Présidentiel"})
CREATE (djo:direction_journal_officiel {name: "Direction du Journal Officiel"})
CREATE (dag:direction_affaires_generales {name: "Direction des Affaires Générales"})
CREATE (scm:secretariat_conseils_ministeriels {name: "Secrétariat des Conseils Ministériels"})
CREATE (orh:observatoire_ressources_humaines {name: "Observatoire des Ressources Humaines"})
CREATE (dlb:division_linguistique_bilinguisme {name: "Division Linguistique et du Bilinguisme"})

// Service des Déplacements Bureaux
CREATE (bommga:bureau_ordres_mission_membres_gouvernement_assimiles {name: "Bureau des Ordres de Mission des Membres du Gouvernement et Assimilés"})
CREATE (bompr:bureau_ordres_mission_personnels_presidency {name: "Bureau des Ordres de Mission des Personnels de la Présidence de la République"})
CREATE (bes:bureau_engagements_suivi {name: "Bureau des Engagements et du Suivi"})

// Service du Fichier Législatif et Réglementaire Bureaux
CREATE (bfa:bureau_formalisation_actes {name: "Bureau de la Formalisation des Actes"})
CREATE (bcalr:bureau_conservation_archives_legislatives_reglementaires {name: "Bureau de la Conservation des Archives Législatives et Réglementaires"})
CREATE (bv:bureau_visa {name: "Bureau du Visa"})

// Imprimerie du Palais de l'Unité Units
CREATE (uf:unite_fabrication {name: "Unité de Fabrication"})
CREATE (um:unite_maintenance {name: "Unité de Maintenance"})

// Direction du Courrier Présidentiel Services
CREATE (ssr:service_suivi_relance {name: "Service du Suivi et de la Relance"})
CREATE (so:service_ordre {name: "Service d'Ordre"})
CREATE (sac:service_archives_classement {name: "Service des Archives et du Classement"})

// Service du Suivi et de la Relance Bureaux
CREATE (bs:bureau_suivi {name: "Bureau du Suivi"})
CREATE (br:bureau_relance {name: "Bureau de la Relance"})

// Service d'Ordre Bureaux
CREATE (bre:bureau_reception {name: "Bureau de la Réception"})
CREATE (bex:bureau_expedition {name: "Bureau de l'Expédition"})
CREATE (bti:bureau_transmission_interne {name: "Bureau de la Transmission Interne"})
CREATE (bch:bureau_chiffre {name: "Bureau du Chiffre"})

// Service des Archives et du Classement Bureaux
CREATE (ba_arch:bureau_archives {name: "Bureau des Archives"})
CREATE (bc_arch:bureau_classement {name: "Bureau du Classement"})
CREATE (bfn:bureau_fichier_nominatif {name: "Bureau du Fichier Nominatif"})
CREATE (bfm:bureau_fichier_matiere {name: "Bureau du Fichier Matière"})

// Direction du Journal Officiel Services
CREATE (scol:service_collecte {name: "Service de la Collecte"})
CREATE (sprod:service_production {name: "Service de la Production"})
CREATE (spdis:service_promotion_distribution {name: "Service de la Promotion et de la Distribution"})
CREATE (sfc:service_financier_comptable {name: "Service Financier et Comptable"})

// Service de la Collecte Bureaux
CREATE (bcae:bureau_collecte_administrations_etat {name: "Bureau de la Collecte auprès des Administrations de l'État"})
CREATE (bcctd:bureau_collecte_collectivites_territoriales_decentralisees {name: "Bureau de la Collecte auprès des Collectivités Territoriales Décentralisées"})

// Service de la Production Bureaux
CREATE (bps:bureau_preparation_saisie {name: "Bureau de la Préparation et de la Saisie"})
CREATE (brel:bureau_relecture {name: "Bureau de la Relecture"})

// Service de la Promotion et de la Distribution Bureaux
CREATE (ba_abo:bureau_abonnements {name: "Bureau des Abonnements"})
CREATE (bvdd:bureau_ventes_directes_distribution {name: "Bureau des Ventes Directes et de la Distribution"})
CREATE (bst:bureau_stockage {name: "Bureau du Stockage"})

// Service Financier et Comptable Bureaux
CREATE (bb:bureau_budget {name: "Bureau du Budget"})
CREATE (bco:bureau_controle {name: "Bureau du Contrôle"})
CREATE (brec:bureau_recouvrement {name: "Bureau du Recouvrement"})
CREATE (bcom:bureau_comptabilite {name: "Bureau de la Comptabilité"})

// Direction des Affaires Générales Services
CREATE (sp:service_personnel {name: "Service du Personnel"})
CREATE (sb:service_budget {name: "Service du Budget"})
CREATE (sm:service_materiel {name: "Service du Matériel"})
CREATE (sdb:service_documentation_bibliotheque {name: "Service de la Documentation et de la Bibliothèque"})
CREATE (slr:service_liaisons_radio {name: "Service des Liaisons-Radio"})
CREATE (sper:service_permanence {name: "Service de la Permanence"})
CREATE (mag:magasin {name: "Magasin"})
CREATE (st:standard_telephonique {name: "Standard Téléphonique"})

// Service du Personnel Bureaux
CREATE (bpf:bureau_personnel_fonctionnaire {name: "Bureau du Personnel Fonctionnaire"})
CREATE (bpnf:bureau_personnel_non_fonctionnaire {name: "Bureau du Personnel Non Fonctionnaire"})

// Service du Budget Bureaux
CREATE (bpb:bureau_preparation_budget {name: "Bureau de la Préparation du Budget"})
CREATE (bseb:bureau_suivi_execution_budget {name: "Bureau du Suivi de l'Exécution du Budget"})

// Service du Matériel Bureaux
CREATE (bmr:bureau_materiel_roulant {name: "Bureau du Matériel Roulant"})
CREATE (bam:bureau_autres_materiels {name: "Bureau des Autres Matériels"})
CREATE (bcm:bureau_comptabilite_matieres {name: "Bureau de la Comptabilité-Matières"})

// Service de la Documentation et de la Bibliothèque Bureaux
CREATE (bacq:bureau_acquisitions {name: "Bureau des Acquisitions"})
CREATE (bcla_doc:bureau_classement_doc {name: "Bureau du Classement"})
CREATE (bpret:bureau_pret {name: "Bureau du Prêt"})

// Service des Liaisons-Radio Bureaux
CREATE (bet:bureau_equipements_techniques {name: "Bureau des Équipements Techniques"})
CREATE (bmain:bureau_maintenance {name: "Bureau de la Maintenance"})
CREATE (brc:bureau_radio_commandement {name: "Bureau de la Radio de Commandement"})

// Division Linguistique et du Bilinguisme Sub-units
CREATE (stlf:section_traduction_langue_francaise {name: "Section de Traduction de Langue Française"})
CREATE (stla:section_traduction_langue_anglaise {name: "Section de Traduction de Langue Anglaise"})
CREATE (stle:section_traduction_langues_etrangeres {name: "Section de Traduction de Langues Étrangères"})
CREATE (sent:section_encadrement_normalisation_technologies_nouvelles {name: "Section de l'Encadrement, de la Normalisation et des Technologies Nouvelles"})
CREATE (cell_conf:cellule_conferences {name: "Cellule des Conférences"})
CREATE (bl:bureau_liaison {name: "Bureau de Liaison"})
CREATE (pdtt:pool_dactylographie_traitement_textes {name: "Pool de Dactylographie et de Traitement des Textes"})

// Section de Traduction de Langue Française Sub-units
CREATE (crf:cellule_revision_francaise {name: "Cellule de Révision (Française)"})
CREATE (utf:unite_traduction_francaise {name: "Unité de Traduction (Française)"})

// Section de Traduction de Langue Anglaise Sub-units
CREATE (cra:cellule_revision_anglaise {name: "Cellule de Révision (Anglaise)"})
CREATE (uta:unite_traduction_anglaise {name: "Unité de Traduction (Anglaise)"})

// Section de Traduction de Langues Étrangères Sub-units
CREATE (cre:cellule_revision_etrangeres {name: "Cellule de Révision (Langues Étrangères)"})
CREATE (ute:unite_traduction_etrangeres {name: "Unité de Traduction (Langues Étrangères)"})

// Section de l'Encadrement, de la Normalisation et des Technologies Nouvelles Units
CREATE (unt:unite_normalisation_terminologie {name: "Unité de la Normalisation et de la Terminologie"})
CREATE (uecq:unite_encadrement_controle_qualite {name: "Unité de l'Encadrement et du Contrôle de Qualité"})
CREATE (ud:unite_documentation {name: "Unité de Documentation"})

// Cabinet Civil Sub-units (from Page 13-14)
CREATE (pe:protocole_etat {name: "Protocole d'État"})
CREATE (ccpr:cellule_communication_president_republique {name: "Cellule de Communication du Président de la République"})
CREATE (dar:division_affaires_reservees {name: "Division des Affaires Réservées"})

// Create relationships
// Présidence de la République -> Top-level units
CREATE (pr)-[:MANAGES]->(sg)
CREATE (pr)-[:MANAGES]->(cab_civil)
CREATE (pr)-[:MANAGES]->(gcon)
CREATE (pr)-[:MANAGES]->(mindef)
CREATE (pr)-[:MANAGES]->(scse)
CREATE (pr)-[:MANAGES]->(scra)
CREATE (pr)-[:MANAGES]->(mmp)
CREATE (pr)-[:MANAGES]->(mcm)
CREATE (pr)-[:MANAGES]->(msp)
CREATE (pr)-[:MANAGES]->(dgsn)
CREATE (pr)-[:MANAGES]->(dgre)
CREATE (pr)-[:MANAGES]->(cs)
CREATE (pr)-[:MANAGES]->(ai)
CREATE (pr)-[:MANAGES]->(iprp)
CREATE (pr)-[:MANAGES]->(emp)
CREATE (pr)-[:MANAGES]->(dsp)
CREATE (pr)-[:MANAGES]->(gp)
CREATE (pr)-[:MANAGES]->(cns)
CREATE (pr)-[:MANAGES]->(cnac)
CREATE (pr)-[:MANAGES]->(cnf)
CREATE (pr)-[:MANAGES]->(csgp)
CREATE (sg)-[:REPORTS_TO]->(pr)
CREATE (cab_civil)-[:REPORTS_TO]->(pr)
CREATE (gcon)-[:REPORTS_TO]->(pr)
CREATE (mindef)-[:REPORTS_TO]->(pr)
CREATE (scse)-[:REPORTS_TO]->(pr)
CREATE (scra)-[:REPORTS_TO]->(pr)
CREATE (mmp)-[:REPORTS_TO]->(pr)
CREATE (mcm)-[:REPORTS_TO]->(pr)
CREATE (msp)-[:REPORTS_TO]->(pr)
CREATE (dgsn)-[:REPORTS_TO]->(pr)
CREATE (dgre)-[:REPORTS_TO]->(pr)
CREATE (cs)-[:REPORTS_TO]->(pr)
CREATE (ai)-[:REPORTS_TO]->(pr)
CREATE (iprp)-[:REPORTS_TO]->(pr)
CREATE (emp)-[:REPORTS_TO]->(pr)
CREATE (dsp)-[:REPORTS_TO]->(pr)
CREATE (gp)-[:REPORTS_TO]->(pr)
CREATE (cns)-[:REPORTS_TO]->(pr)
CREATE (cnac)-[:REPORTS_TO]->(pr)
CREATE (cnf)-[:REPORTS_TO]->(pr)
CREATE (csgp)-[:REPORTS_TO]->(pr)

// Secrétariat Général -> Internal services
CREATE (sg)-[:MANAGES]->(sd)
CREATE (sg)-[:MANAGES]->(sflr)
CREATE (sg)-[:MANAGES]->(ipu)
CREATE (sg)-[:MANAGES]->(di)
CREATE (sg)-[:MANAGES]->(dcp)
CREATE (sg)-[:MANAGES]->(djo)
CREATE (sg)-[:MANAGES]->(dag)
CREATE (sg)-[:MANAGES]->(scm)
CREATE (sg)-[:MANAGES]->(orh)
CREATE (sg)-[:MANAGES]->(dlb)
CREATE (sd)-[:REPORTS_TO]->(sg)
CREATE (sflr)-[:REPORTS_TO]->(sg)
CREATE (ipu)-[:REPORTS_TO]->(sg)
CREATE (di)-[:REPORTS_TO]->(sg)
CREATE (dcp)-[:REPORTS_TO]->(sg)
CREATE (djo)-[:REPORTS_TO]->(sg)
CREATE (dag)-[:REPORTS_TO]->(sg)
CREATE (scm)-[:REPORTS_TO]->(sg)
CREATE (orh)-[:REPORTS_TO]->(sg)
CREATE (dlb)-[:REPORTS_TO]->(sg)

// Service des Déplacements -> Bureaux
CREATE (sd)-[:MANAGES]->(bommga)
CREATE (sd)-[:MANAGES]->(bompr)
CREATE (sd)-[:MANAGES]->(bes)
CREATE (bommga)-[:REPORTS_TO]->(sd)
CREATE (bompr)-[:REPORTS_TO]->(sd)
CREATE (bes)-[:REPORTS_TO]->(sd)

// Service du Fichier Législatif et Réglementaire -> Bureaux
CREATE (sflr)-[:MANAGES]->(bfa)
CREATE (sflr)-[:MANAGES]->(bcalr)
CREATE (sflr)-[:MANAGES]->(bv)
CREATE (bfa)-[:REPORTS_TO]->(sflr)
CREATE (bcalr)-[:REPORTS_TO]->(sflr)
CREATE (bv)-[:REPORTS_TO]->(sflr)

// Imprimerie du Palais de l'Unité -> Units
CREATE (ipu)-[:MANAGES]->(uf)
CREATE (ipu)-[:MANAGES]->(um)
CREATE (uf)-[:REPORTS_TO]->(ipu)
CREATE (um)-[:REPORTS_TO]->(ipu)

// Direction du Courrier Présidentiel -> Services
CREATE (dcp)-[:MANAGES]->(ssr)
CREATE (dcp)-[:MANAGES]->(so)
CREATE (dcp)-[:MANAGES]->(sac)
CREATE (ssr)-[:REPORTS_TO]->(dcp)
CREATE (so)-[:REPORTS_TO]->(dcp)
CREATE (sac)-[:REPORTS_TO]->(dcp)

// Service du Suivi et de la Relance -> Bureaux
CREATE (ssr)-[:MANAGES]->(bs)
CREATE (ssr)-[:MANAGES]->(br)
CREATE (bs)-[:REPORTS_TO]->(ssr)
CREATE (br)-[:REPORTS_TO]->(ssr)

// Service d'Ordre -> Bureaux
CREATE (so)-[:MANAGES]->(bre)
CREATE (so)-[:MANAGES]->(bex)
CREATE (so)-[:MANAGES]->(bti)
CREATE (so)-[:MANAGES]->(bch)
CREATE (bre)-[:REPORTS_TO]->(so)
CREATE (bex)-[:REPORTS_TO]->(so)
CREATE (bti)-[:REPORTS_TO]->(so)
CREATE (bch)-[:REPORTS_TO]->(so)

// Service des Archives et du Classement -> Bureaux
CREATE (sac)-[:MANAGES]->(ba_arch)
CREATE (sac)-[:MANAGES]->(bc_arch)
CREATE (sac)-[:MANAGES]->(bfn)
CREATE (sac)-[:MANAGES]->(bfm)
CREATE (ba_arch)-[:REPORTS_TO]->(sac)
CREATE (bc_arch)-[:REPORTS_TO]->(sac)
CREATE (bfn)-[:REPORTS_TO]->(sac)
CREATE (bfm)-[:REPORTS_TO]->(sac)

// Direction du Journal Officiel -> Services
CREATE (djo)-[:MANAGES]->(scol)
CREATE (djo)-[:MANAGES]->(sprod)
CREATE (djo)-[:MANAGES]->(spdis)
CREATE (djo)-[:MANAGES]->(sfc)
CREATE (scol)-[:REPORTS_TO]->(djo)
CREATE (sprod)-[:REPORTS_TO]->(djo)
CREATE (spdis)-[:REPORTS_TO]->(djo)
CREATE (sfc)-[:REPORTS_TO]->(djo)

// Service de la Collecte -> Bureaux
CREATE (scol)-[:MANAGES]->(bcae)
CREATE (scol)-[:MANAGES]->(bcctd)
CREATE (bcae)-[:REPORTS_TO]->(scol)
CREATE (bcctd)-[:REPORTS_TO]->(scol)

// Service de la Production -> Bureaux
CREATE (sprod)-[:MANAGES]->(bps)
CREATE (sprod)-[:MANAGES]->(brel)
CREATE (bps)-[:REPORTS_TO]->(sprod)
CREATE (brel)-[:REPORTS_TO]->(sprod)

// Service de la Promotion et de la Distribution -> Bureaux
CREATE (spdis)-[:MANAGES]->(ba_abo)
CREATE (spdis)-[:MANAGES]->(bvdd)
CREATE (spdis)-[:MANAGES]->(bst)
CREATE (ba_abo)-[:REPORTS_TO]->(spdis)
CREATE (bvdd)-[:REPORTS_TO]->(spdis)
CREATE (bst)-[:REPORTS_TO]->(spdis)

// Service Financier et Comptable -> Bureaux
CREATE (sfc)-[:MANAGES]->(bb)
CREATE (sfc)-[:MANAGES]->(bco)
CREATE (sfc)-[:MANAGES]->(brec)
CREATE (sfc)-[:MANAGES]->(bcom)
CREATE (bb)-[:REPORTS_TO]->(sfc)
CREATE (bco)-[:REPORTS_TO]->(sfc)
CREATE (brec)-[:REPORTS_TO]->(sfc)
CREATE (bcom)-[:REPORTS_TO]->(sfc)

// Direction des Affaires Générales -> Services
CREATE (dag)-[:MANAGES]->(sp)
CREATE (dag)-[:MANAGES]->(sb)
CREATE (dag)-[:MANAGES]->(sm)
CREATE (dag)-[:MANAGES]->(sdb)
CREATE (dag)-[:MANAGES]->(slr)
CREATE (dag)-[:MANAGES]->(sper)
CREATE (dag)-[:MANAGES]->(mag)
CREATE (dag)-[:MANAGES]->(st)
CREATE (sp)-[:REPORTS_TO]->(dag)
CREATE (sb)-[:REPORTS_TO]->(dag)
CREATE (sm)-[:REPORTS_TO]->(dag)
CREATE (sdb)-[:REPORTS_TO]->(dag)
CREATE (slr)-[:REPORTS_TO]->(dag)
CREATE (sper)-[:REPORTS_TO]->(dag)
CREATE (mag)-[:REPORTS_TO]->(dag)
CREATE (st)-[:REPORTS_TO]->(dag)

// Service du Personnel -> Bureaux
CREATE (sp)-[:MANAGES]->(bpf)
CREATE (sp)-[:MANAGES]->(bpnf)
CREATE (bpf)-[:REPORTS_TO]->(sp)
CREATE (bpnf)-[:REPORTS_TO]->(sp)

// Service du Budget -> Bureaux
CREATE (sb)-[:MANAGES]->(bpb)
CREATE (sb)-[:MANAGES]->(bseb)
CREATE (bpb)-[:REPORTS_TO]->(sb)
CREATE (bseb)-[:REPORTS_TO]->(sb)

// Service du Matériel -> Bureaux and Magasin
CREATE (sm)-[:MANAGES]->(bmr)
CREATE (sm)-[:MANAGES]->(bam)
CREATE (sm)-[:MANAGES]->(bcm)
CREATE (bmr)-[:REPORTS_TO]->(sm)
CREATE (bam)-[:REPORTS_TO]->(sm)
CREATE (bcm)-[:REPORTS_TO]->(sm)

// Service de la Documentation et de la Bibliothèque -> Bureaux
CREATE (sdb)-[:MANAGES]->(bacq)
CREATE (sdb)-[:MANAGES]->(bcla_doc)
CREATE (sdb)-[:MANAGES]->(bpret)
CREATE (bacq)-[:REPORTS_TO]->(sdb)
CREATE (bcla_doc)-[:REPORTS_TO]->(sdb)
CREATE (bpret)-[:REPORTS_TO]->(sdb)

// Service des Liaisons-Radio -> Bureaux
CREATE (slr)-[:MANAGES]->(bet)
CREATE (slr)-[:MANAGES]->(bmain)
CREATE (slr)-[:MANAGES]->(brc)
CREATE (bet)-[:REPORTS_TO]->(slr)
CREATE (bmain)-[:REPORTS_TO]->(slr)
CREATE (brc)-[:REPORTS_TO]->(slr)

// Division Linguistique et du Bilinguisme -> Sub-units
CREATE (dlb)-[:MANAGES]->(stlf)
CREATE (dlb)-[:MANAGES]->(stla)
CREATE (dlb)-[:MANAGES]->(stle)
CREATE (dlb)-[:MANAGES]->(sent)
CREATE (dlb)-[:MANAGES]->(cell_conf)
CREATE (dlb)-[:MANAGES]->(bl)
CREATE (dlb)-[:MANAGES]->(pdtt)
CREATE (stlf)-[:REPORTS_TO]->(dlb)
CREATE (stla)-[:REPORTS_TO]->(dlb)
CREATE (stle)-[:REPORTS_TO]->(dlb)
CREATE (sent)-[:REPORTS_TO]->(dlb)
CREATE (cell_conf)-[:REPORTS_TO]->(dlb)
CREATE (bl)-[:REPORTS_TO]->(dlb)
CREATE (pdtt)-[:REPORTS_TO]->(dlb)

// Section de Traduction de Langue Française -> Sub-units
CREATE (stlf)-[:MANAGES]->(crf)
CREATE (stlf)-[:MANAGES]->(utf)
CREATE (crf)-[:REPORTS_TO]->(stlf)
CREATE (utf)-[:REPORTS_TO]->(stlf)

// Section de Traduction de Langue Anglaise -> Sub-units
CREATE (stla)-[:MANAGES]->(cra)
CREATE (stla)-[:MANAGES]->(uta)
CREATE (cra)-[:REPORTS_TO]->(stla)
CREATE (uta)-[:REPORTS_TO]->(stla)

// Section de Traduction de Langues Étrangères -> Sub-units
CREATE (stle)-[:MANAGES]->(cre)
CREATE (stle)-[:MANAGES]->(ute)
CREATE (cre)-[:REPORTS_TO]->(stle)
CREATE (ute)-[:REPORTS_TO]->(stle)

// Section de l'Encadrement, de la Normalisation et des Technologies Nouvelles -> Units
CREATE (sent)-[:MANAGES]->(unt)
CREATE (sent)-[:MANAGES]->(uecq)
CREATE (sent)-[:MANAGES]->(ud)
CREATE (unt)-[:REPORTS_TO]->(sent)
CREATE (uecq)-[:REPORTS_TO]->(sent)
CREATE (ud)-[:REPORTS_TO]->(sent)

// Cabinet Civil -> Sub-units
CREATE (cab_civil)-[:MANAGES]->(pe)
CREATE (cab_civil)-[:MANAGES]->(ccpr)
CREATE (cab_civil)-[:MANAGES]->(dar)
CREATE (pe)-[:REPORTS_TO]->(cab_civil)
CREATE (ccpr)-[:REPORTS_TO]->(cab_civil)
CREATE (dar)-[:REPORTS_TO]->(cab_civil)