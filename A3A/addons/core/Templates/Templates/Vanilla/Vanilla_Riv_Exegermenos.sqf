private _hasWs = "ws" in A3A_enabledDLC;
private _hasMarksman = "mark" in A3A_enabledDLC;
private _hasLawsOfWar = "orange" in A3A_enabledDLC;
private _hasTanks = "tank" in A3A_enabledDLC;
private _hasApex = "expansion" in A3A_enabledDLC;
private _hasHelicopters = "heli" in A3A_enabledDLC;
private _hasContact = "enoch" in A3A_enabledDLC;
private _hasJets = "jets" in A3A_enabledDLC;
private _hasArtOfWar = "aow" in A3A_enabledDLC;
private _hasKart = "kart" in A3A_enabledDLC;
private _hasGM = "gm" in A3A_enabledDLC;
private _hasCLSA = "csla" in A3A_enabledDLC;

////////////////////////////
//   Rivals Information   //
///////////////////////////

["name", "Exegerménos"] call _fnc_saveToTemplate;
["nameLeader", "Alexander Akhanteros"] call _fnc_saveToTemplate;

//////////////////////////////////////
//       	Identities    			//
//////////////////////////////////////
["faces", [
	"GreekHead_A3_02",
    "GreekHead_A3_03",
    "GreekHead_A3_04",
    "GreekHead_A3_05",
    "GreekHead_A3_06",
    "GreekHead_A3_07",
    "GreekHead_A3_08",
    "GreekHead_A3_09",
	"GreekHead_A3_10_l",
	"GreekHead_A3_10_sa",
	"GreekHead_A3_10_a",
    "GreekHead_A3_11",
    "GreekHead_A3_12",
    "GreekHead_A3_13",
    "GreekHead_A3_14",
    "Ioannou",
    "Mavros"
]] call _fnc_saveToTemplate; 
["voices", ["Male01GRE","Male02GRE","Male03GRE","Male04GRE","Male05GRE","Male06GRE"]] call _fnc_saveToTemplate;

//////////////////////////
//       Vehicles       //
//////////////////////////
["ammobox", "Box_FIA_Support_F"] call _fnc_saveToTemplate; 	//Don't touch or you die a sad and lonely death!
["surrenderCrate", "Box_Syndicate_Wps_F"] call _fnc_saveToTemplate;

private _lightArmedVehicles = [];
private _lightUnarmedVehicles = [];
private _apc = [];
private _tanks = [];
private _helis = ["B_Heli_Light_01_F","I_Heli_light_03_unarmed_F"];
private _uav = [];
private _trucks = ["O_G_Van_01_transport_F"];

if (_hasApex) then {
	_lightArmedVehicles append ["I_C_Offroad_02_AT_F", "I_C_Offroad_02_LMG_F", "O_G_Offroad_01_AT_F", "O_G_Offroad_01_armed_F"];
	_lightUnarmedVehicles append ["I_C_Offroad_02_unarmed_F","B_G_Offroad_01_F"];
} else {
	_lightArmedVehicles append ["O_G_Offroad_01_AT_F", "O_G_Offroad_01_armed_F"];
	_lightUnarmedVehicles pushBack "I_G_Offroad_01_F";
};

if (_hasWs) then {
	_lightArmedVehicles append ["O_G_Offroad_01_armor_AT_lxWS", "O_G_Offroad_01_armor_armed_lxWS"];
	_lightUnarmedVehicles pushBack "O_G_Offroad_01_armor_base_lxWS";
	_apc append ["O_SFIA_APC_Wheeled_02_hmg_lxWS","O_SFIA_APC_Wheeled_02_unarmed_lxWS"];
    _uav append ["O_UAV_02_lxWS","O_Tura_UAV_02_IED_lxWS"];
};

if (_hasLawsOfWar) then {
	_trucks append ["O_G_Van_02_transport_F", "O_G_Van_02_vehicle_F"];
    _uav append ["O_UAV_06_F","O_UAV_06_medical_F","C_IDAP_UAV_06_antimine_F"];
};

if (_hasTanks) then {
	_tanks pushBack "I_LT_01_cannon_F";
};

private _staticLowWeapons = ["O_G_HMG_02_F"];
private _staticAT = ["O_static_AT_F"];
private _staticMortars = ["O_Mortar_01_F"];

if (_hasGM) then {
	_staticLowWeapons append ["gm_dk_army_mg3_aatripod", "gm_gc_army_dshkm_aatripod"];
	_staticAT append ["gm_ge_army_milan_launcher_tripod", "gm_gc_army_fagot_launcher_tripod", "gm_gc_army_spg9_tripod"];
	_lightArmedVehicles append ["gm_pl_army_uaz469_dshkm","gm_ge_army_iltis_mg3","gm_gc_bgs_uaz469_spg9","gm_ge_army_iltis_milan"];
	_lightUnarmedVehicles append  ["gm_ge_army_iltis_cargo","gm_pl_army_uaz469_cargo","gm_dk_army_u1300l_container","gm_dk_army_typ247_cargo","gm_dk_army_typ253_cargo","gm_pl_army_ural4320_cargo","gm_ge_army_kat1_451_container"];
	_tanks append ["gm_dk_army_Leopard1a3","gm_pl_army_pt76b","gm_pl_army_t55","gm_pl_army_t55a","gm_pl_army_t55ak","gm_gc_army_t55am2","gm_gc_army_t55am2b"];
	_helis append ["gm_pl_airforce_mi2t","gm_pl_airforce_mi2urn","gm_pl_airforce_mi2us"];
	_apc append ["gm_pl_army_ot64a","gm_dk_army_m113a1dk_apc","gm_dk_army_m113a2dk","gm_gc_army_bmp1sp2","gm_gc_army_brdm2rkh","gm_pl_army_brdm2","gm_gc_army_btr60pb","gm_gc_army_btr60pa_dshkm"];
};

["mortarMagazineHE", "8Rnd_82mm_Mo_shells"] call _fnc_saveToTemplate;

["handGrenadeAmmo", ["GrenadeHand"]] call _fnc_saveToTemplate;
["mortarAmmo", ["Sh_82mm_AMOS"]] call _fnc_saveToTemplate;

["minefieldAT", ["ATMine"]] call _fnc_saveToTemplate;
["minefieldAPERS", ["APERSMine", "APERSBoundingMine"]] call _fnc_saveToTemplate;

["staticLowWeapons", _staticLowWeapons] call _fnc_saveToTemplate;
["staticAT", _staticAT] call _fnc_saveToTemplate;
["staticMortars", _staticMortars] call _fnc_saveToTemplate;
["vehiclesRivalsLightArmed", _lightArmedVehicles] call _fnc_saveToTemplate;
["vehiclesRivalsTrucks", _trucks] call _fnc_saveToTemplate;
["vehiclesRivalsCars", _lightUnarmedVehicles] call _fnc_saveToTemplate;
["vehiclesRivalsAPCs", _apc] call _fnc_saveToTemplate;
["vehiclesRivalsTanks", _tanks] call _fnc_saveToTemplate;
["vehiclesRivalsHelis", _helis] call _fnc_saveToTemplate;			
["vehiclesRivalsUavs", _uav] call _fnc_saveToTemplate;			

["animations", [
    ["O_SFIA_APC_Wheeled_02_hmg_lxWS", ["mg_hide_armor_front",0.3,"mg_hide_armor_rear",0.3,"mg_Hide_Rail",0.3,"showBags",0.3,"showCanisters",0.3,"showTools",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["O_SFIA_APC_Wheeled_02_unarmed_lxWS", ["showBags",0.3,"showCanisters",0.3,"showTools",0.3,"showCamonetHull",0.3,"showSLATHull",0.3]],
    ["I_LT_01_cannon_F", ["showTools",0.3,"showCamonetHull",0.3,"showBags",0.3,"showSLATHull",0.3]],
	["gm_pl_army_ot64a", ["RoadPrioritySign_01_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
	["gm_dk_army_m113a1dk_apc", ["MachineGunTurret_01_addonarmor_01_unhide",0.3,"MachineGunTurret_01_addonarmor_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3,"ammo_01_unhide",0.3,"ammo_02_unhide",0.3,"ammo_03_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3]],
	["gm_dk_army_m113a2dk", ["camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_03_unhide",0.3,"Tarp_01_unhide",0.3]],
	["gm_gc_army_bmp1sp2", ["spareTracks_1_1_unhide",0.3,"spareTracks_1_2_unhide",0.3,"spareTracks_2_1_unhide",0.3,"wheelChock_1_1_unhide",0.3,"wheelChock_1_2_unhide",0.3,"woodenBeam_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"CamoNet_03_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"AmmoBox_08_unhide",0.3,"AmmoBox_09_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
	["gm_gc_army_brdm2rkh", ["ConvoyLights_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
	["gm_pl_army_brdm2", ["RoadPrioritySign_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"CamoNet_01_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
	["gm_gc_army_btr60pb", ["ConvoyLights_01_unhide",0.3,"FrontLight_01_Cover_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"FuelCanister_04_unhide",0.3,"FuelCanister_05_unhide",0.3,"Barrel_01_unhide",0.3,"SpareWheel_01_unhide",0.3,"SpareWheel_02_unhide",0.3,"SpareWheel_03_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"FrontLight_02_Cover_unhide",0.3]],
	["gm_gc_army_btr60pa_dshkm", ["ConvoyLights_01_unhide",0.3,"FrontLight_02_Cover_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"AmmoBox_04_unhide",0.3,"AmmoBox_05_unhide",0.3,"AmmoBox_06_unhide",0.3,"AmmoBox_07_unhide",0.3,"FuelCanister_01_unhide",0.3,"FuelCanister_02_unhide",0.3,"FuelCanister_03_unhide",0.3,"FuelCanister_04_unhide",0.3,"FuelCanister_05_unhide",0.3,"FuelCanister_06_unhide",0.3,"Barrel_01_unhide",0.3,"SpareWheel_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3]],
	["gm_pl_army_pt76b", ["RoadPrioritySign_01_unhide",0.3,"CamoNet_01_unhide",0.3,"CamoNet_02_unhide",0.3,"AmmoBox_01_unhide",0.3,"AmmoBox_02_unhide",0.3,"AmmoBox_03_unhide",0.3,"FuelTank_01_unhide",0.3,"FuelTank_02_unhide",0.3,"FuelTank_03_unhide",0.3,"FuelTank_04_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"FrontLight_02_Cover_unhide",0.3]],
	["gm_pl_army_t55", ["RoadPrioritySign_01_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
	["gm_pl_army_t55ak", ["RoadPrioritySign_01_unhide",0.3,"antennamast_01_elev_trigger",0.3,"antennaMast_01_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
	["gm_pl_army_t55a", ["RoadPrioritySign_01_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"camoNet_02_unhide",0.3,"fender_01_unhide",0.3,"fender_02_unhide",0.3,"woodenBeam_01_unhide",0.3,"snorkel_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"storageBox_01_unhide",0.3,"storageBox_02_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
	["gm_gc_army_t55am2", ["ConvoyLights_01_unhide",0.3,"turretBox_03_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
	["gm_gc_army_t55am2b", ["ConvoyLights_01_unhide",0.3,"turretBox_03_unhide",0.3,"turretBox_01_unhide",0.3,"turretBox_02_unhide",0.3,"MainTurret_SearchLight_cover_unhide",0.3,"MainTurret_Optic_cover_unhide",0.3,"CommanderTurret_SearchLight_cover_unhide",0.3,"buoy_01_unhide",0.3,"camoNet_01_unhide",0.3,"snorkel_02_unhide",0.3,"rearbar_01_unhide",0.3,"barrelHolder_01_unhide",0.3,"barrel_01_unhide",0.3,"barrel_02_unhide",0.3,"wheelChock_01_unhide",0.3,"camonet_hull_unhide",0.3,"camofoilage_hull_unhide",0.3,"camonet_MainTurret_trav_unhide",0.3,"camofoilage_MainTurret_trav_unhide",0.3,"camonet_MainTurret_elev_unhide",0.3,"FormationLight_01_unhide",0.3]],
	["gm_ge_army_kat1_451_container", ["cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3]],
	["gm_dk_army_u1300l_container", ["BoardWall_2_1_unhide",0.3,"cover_hoops_unhide",0.3,"cover_down_unhide",0.3,"cover_up_unhide",0.3,"BoardWall_1_1_extension_unhide",0.3,"camonetpoles_1_1_unhide",0.3,"CamoNet_01_rack_unhide",0.3,"CamoNet_01_unhide",0.3,"generator_unhide",0.3,"sign_mlc_unhide",0.3,"sign_medic_unhide",0.3]],
]] call _fnc_saveToTemplate;

["variants", [
    ["I_LT_01_cannon_F", ["Indep_Olive",1]]
]] call _fnc_saveToTemplate;

//////////////////////////
//       Loadouts       //
//////////////////////////
private _loadoutData = call _fnc_createLoadoutData;
private _rifles = [
	["arifle_TRG21_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["arifle_Mk20_plain_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
];
private _tunedRifles = [
	["arifle_TRG21_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["arifle_Mk20_plain_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["arifle_TRG21_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["arifle_Mk20_plain_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
];
private _enforcerRifles = [
	["arifle_TRG21_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["arifle_Mk20_plain_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
];
private _carbines = [
	["arifle_TRG20_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""],
	["arifle_Mk20C_plain_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], [], ""]
];
private _gls = [
	["arifle_TRG21_GL_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F", "1Rnd_Smoke_Grenade_shell"], ""],
	["arifle_Mk20_GL_plain_F", "", "", "", ["30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag", "30Rnd_556x45_Stanag_Tracer_Green"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F", "1Rnd_Smoke_Grenade_shell"], ""]
];
private _mgs = [
	["LMG_Zafir_F", "", "", "", ["150Rnd_762x54_Box", "150Rnd_762x54_Box", "150Rnd_762x54_Box_Tracer"], [], ""]
];
private _marksmanRifles = [
	["srifle_EBR_F", "", "", "optic_MRCO", ["20Rnd_762x51_Mag"], [], ""]
];

private _rpgs = [
	["launch_RPG32_F", "", "", "", ["RPG32_F", "RPG32_F", "RPG32_HE_F"], [], ""],
	["launch_RPG32_F", "", "", "", ["RPG32_F", "RPG32_F", "RPG32_HE_F"], [], ""],
	["launch_RPG32_F", "", "", "", ["RPG32_F", "RPG32_F", "RPG32_HE_F"], [], ""],
	["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
];

private _pistols = ["hgun_Rook40_F"];

_loadoutData set ["lightHELaunchers", [
["launch_RPG32_F", "", "", "", ["RPG32_HE_F", "RPG32_HE_F"], [], ""]
]];
_loadoutData set ["AALaunchers", [
["launch_O_Titan_F", "", "acc_pointer_IR", "", ["Titan_AA"], [], ""]
]];

_loadoutData set ["ATMines", ["ATMine_Range_Mag"]];
_loadoutData set ["APMines", ["APERSMine_Range_Mag", "APERSBoundingMine_Range_Mag"]];
_loadoutData set ["lightExplosives", ["IEDLandSmall_Remote_Mag"]];
_loadoutData set ["heavyExplosives", ["IEDLandBig_Remote_Mag"]];

_loadoutData set ["antiInfantryGrenades", ["HandGrenade", "MiniGrenade"]];
_loadoutData set ["smokeGrenades", ["SmokeShell"]];
_loadoutData set ["signalsmokeGrenades", ["SmokeShellYellow", "SmokeShellRed", "SmokeShellPurple", "SmokeShellOrange", "SmokeShellGreen", "SmokeShellBlue"]];

if (_hasGM) then {
    (_loadoutData get "antiInfantryGrenades") append [
        "gm_handgrenade_conc_dm51","gm_handgrenade_conc_dm51a1","gm_handgrenade_frag_dm41","gm_handgrenade_frag_dm41a1","gm_handgrenade_frag_dm51","gm_handgrenade_frag_dm51a1","gm_handgrenade_frag_m26",
        "gm_handgrenade_frag_m26a1", "gm_handgrenade_frag_rgd5",
    ];
};

if (_hasGM) then {
    (_loadoutData get "smokeGrenades") append [
        "gm_smokeshell_wht_gc",
        "gm_smokeshell_wht_dm25"
    ];
};

if (_hasGM) then {
    (_loadoutData get "signalsmokeGrenades") append [
        "gm_smokeshell_blk_gc","gm_smokeshell_blu_gc","gm_smokeshell_grn_gc","gm_smokeshell_org_gc","gm_smokeshell_red_gc","gm_smokeshell_yel_gc","gm_smokeshell_grn_dm21",
        "gm_smokeshell_red_dm23","gm_smokeshell_yel_dm26","gm_smokeshell_org_dm32",
    ];
};

if (_hasGM) then {
    (_loadoutData get "lightExplosives") append [
        "gm_explosive_plnp_charge"
    ];
};

if (_hasGM) then {
    (_loadoutData get "heavyExplosives") append [
        "gm_explosive_petn_charge"
    ];
};

if (_hasGM) then {
    (_loadoutData get "ATMines") append [
        "gm_mine_at_dm21","gm_mine_at_tm46"
    ];
};

if (_hasGM) then {
    (_loadoutData get "APMines") append [
        "gm_mine_ap_dm31"
    ];
};

if (_hasContact) then {
	_carbines pushBack ["arifle_AK12U_F", "", "", "", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], ""];
	_tunedRifles pushBack ["arifle_AK12U_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], ""];
	_marksmanRifles = [
		["srifle_DMR_06_hunter_F", "", "", "optic_DMS_weathered_F", ["10Rnd_Mk14_762x51_Mag"], [], ""]
	];
};

if (_hasMarksman) then {
	_tunedRifles pushBack ["srifle_DMR_03_F", "", "acc_flashlight", "optic_MRCO", ["20Rnd_762x51_Mag"], [], "bipod_02_F_blk"]
};

if (_hasApex) then {
	_rifles pushBack ["arifle_AKM_F", "", "", "", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], ""];
	_tunedRifles append [
		["arifle_AK12_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], "bipod_02_F_blk"],
		["arifle_AK12_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], "bipod_02_F_blk"]
	];
	_carbines pushBack ["arifle_AKS_F", "", "", "", ["30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Green_F", "30Rnd_545x39_Mag_Tracer_Green_F"], [], ""];
	_gls pushBack ["arifle_AK12_GL_F", "", "", "", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "UGL_FlareWhite_F", "1Rnd_Smoke_Grenade_shell"], ""];
	_mgs = [
		["LMG_03_F", "", "acc_flashlight", "", ["200Rnd_556x45_Box_Red_F", "200Rnd_556x45_Box_Red_F", "200Rnd_556x45_Box_Tracer_Red_F"], [], ""]
	];
	_rpgs = [
		["launch_RPG7_F", "", "", "", ["RPG7_F", "RPG7_F", "RPG7_F"], [], ""],
		["launch_RPG7_F", "", "", "", ["RPG7_F", "RPG7_F", "RPG7_F"], [], ""],
		["launch_RPG7_F", "", "", "", ["RPG7_F", "RPG7_F", "RPG7_F"], [], ""],
		["launch_O_Vorona_green_F", "", "", "", ["Vorona_HEAT", "Vorona_HE"], [], ""]
	];
	_enforcerRifles pushBack ["arifle_AKM_F", "", "", "", ["75Rnd_762x39_Mag_F", "75Rnd_762x39_Mag_F", "75Rnd_762x39_Mag_Tracer_F"], [], ""];
	_pistols pushBack "hgun_Pistol_01_F";
};

if (_hasWs) then {
	_rifles append [
		["arifle_Galat_lxWS", "", "", "",  ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], ""],
		["arifle_Velko_lxWS", "", "", "",  ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], [], ""]
	];
	_tunedRifles append [
		["arifle_AK12_F", "", "acc_flashlight", "optic_MRCO", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], "bipod_02_F_blk"],
		["arifle_AK12_F", "", "acc_flashlight", "optic_ACO_grn", ["30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Green_F", "30Rnd_762x39_Mag_Tracer_Green_F"], [], "bipod_02_F_blk"]
	];
	_carbines pushBack ["arifle_VelkoR5_lxWS", "", "", "", ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], [], ""];
	_gls append [
		["arifle_VelkoR5_GL_lxWS", "", "", "", ["35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_reload_tracer_green_lxWS", "35Rnd_556x45_Velko_tracer_green_lxWS"], ["1Rnd_HE_Grenade_shell", "1Rnd_HE_Grenade_shell", "1Rnd_Pellet_Grenade_shell_lxWS", "UGL_FlareWhite_F", "1Rnd_Smoke_Grenade_shell"], ""],
		["arifle_SLR_GL_lxWS", "", "", "", ["20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_reload_tracer_green_lxWS"], ["1Rnd_40mm_HE_lxWS", "1Rnd_40mm_HE_lxWS", "1Rnd_58mm_AT_lxWS", "1Rnd_50mm_Smoke_lxWS"], ""]
	];
	_mgs pushBack ["LMG_S77_lxWS", "", "acc_pointer_IR", "optic_NVS", ["100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_lxWS", "100Rnd_762x51_S77_Red_Tracer_lxWS"], [], ""];
	_marksmanRifles pushBack ["arifle_SLR_lxWS", "", "", "", ["20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_lxWS", "20Rnd_762x51_slr_reload_tracer_green_lxWS"], [], ""];
	_enforcerRifles append [
		["arifle_VelkoR5_lxWS", "", "", "", ["50Rnd_556x45_Velko_reload_tracer_green_lxWS", "50Rnd_556x45_Velko_reload_tracer_green_lxWS", "50Rnd_556x45_Velko_tracer_green_lxWS"], [], ""],
		["arifle_Galat_lxWS", "", "", "", ["75Rnd_762x39_Mag_F", "75Rnd_762x39_Mag_F", "75Rnd_762x39_Mag_Tracer_F"], [], ""],
		["sgun_aa40_lxWS", "", "", "", ["20Rnd_12Gauge_AA40_Pellets_lxWS", "20Rnd_12Gauge_AA40_Slug_lxWS", "20Rnd_12Gauge_AA40_HE_lxWS"], [], ""]
	];
};

if (_hasGM) then {
    _rpgs append [
        ["gm_m72a3_oli", "", "", "", ["gm_1Rnd_66mm_heat_m72a3"], [], ""],
        ["gm_rpg18_oli", "", "", "", ["gm_1Rnd_64mm_heat_pg18"], [], ""],
        ["gm_pzf44_2_oli", "", "", "gm_feroz2x17_pzf44_2_blk", ["gm_1Rnd_44x537mm_heat_dm32_pzf44_2", "gm_1Rnd_44x537mm_heat_dm32_pzf44_2"], [], ""]
    ];
    (_loadoutData get "lightHELaunchers") append [
        ["gm_pzf3_blk", "", "", "", ["gm_1Rnd_60mm_heat_dm22_pzf3", "gm_1Rnd_60mm_heat_dm32_pzf3"], [], ""],
        ["gm_pzf84_oli", "", "", "gm_feroz2x17_pzf84_blk", ["gm_1Rnd_84x245mm_heat_t_DM32_carlgustaf","gm_1Rnd_84x245mm_heat_t_DM22_carlgustaf","gm_1Rnd_84x245mm_heat_t_DM12a1_carlgustaf","gm_1Rnd_84x245mm_heat_t_DM12_carlgustaf"], [], ""]
    ];
    (_loadoutData get "AALaunchers") append [
        ["gm_fim43_oli", "", "", "", ["gm_1Rnd_70mm_he_m585_fim43"], [], ""]
    ];
	_gls append [
		["gm_g3a4a1_ris_oli", "", "", "optic_MRCO", ["gm_40Rnd_762x51mm_B_T_DM21_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A1_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], ["gm_1rnd_67mm_heat_dm22a1_g3"], ""],
		["gm_akm_pallad_wud", "", "", "gm_zvn64_ak", ["gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk","gm_30Rnd_762x39mm_B_57N231_ak47_blk"], ["1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell","1Rnd_HE_Grenade_shell"], ""]
	];
	_rifles append [
		["gm_ak74n_wud", "", "", "",  ["gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_7N6_ak74_org"], [], ""],
		["gm_akm_wud", "", "", "",  ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk"], [], ""],
		["gm_akmn_wud", "", "", "",  ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk"], [], ""],
		["gm_akms_wud", "", "", "",  ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk"], [], ""],
		["gm_akmsl_wud", "", "", "",  ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk"], [], ""],
		["gm_akmsn_wud", "", "", "",  ["gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk", "gm_30Rnd_762x39mm_B_57N231_ak47_blk"], [], ""],
		["gm_hk33a2_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_hk33a3_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_hk33ka2_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_hk33ka3_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_hk33sg1_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],//
		["gm_g3a3a1_ris_blk", "", "", "",  ["gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk"], [], ""],
		["gm_g3a4a1_ris_blk", "", "", "",  ["gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk"], [], ""],
		["gm_g3a4a1_ris_blk", "", "", "",  ["gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk"], [], ""],
		["gm_m16a1_blk", "","","",["gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry"], [], ""],
		["gm_m16a2_blk", "","","",["gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry"], [], ""]
	];
    _carbines append [
        ["gm_mp5n_surefire_blk", "", "gm_surefire_l60_wht_surefire_blk", "gm_rv_stanagClaw_blk", ["gm_60Rnd_9x19mm_B_DM11_mp5a3_blk","gm_60Rnd_9x19mm_AP_DM91_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk"], [], ""],
        ["gm_mp5sd6_blk", "", "gm_surefire_l60_ir_hoseclamp_blk", "gm_rv_stanagClaw_blk", ["gm_60Rnd_9x19mm_B_DM11_mp5a3_blk","gm_60Rnd_9x19mm_AP_DM91_mp5a3_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk"], [], ""],
		["gm_mp5a2_blk", "", "", "gm_rv_stanagClaw_blk", ["gm_30Rnd_9x19mm_B_DM51_mp5_blk","gm_30Rnd_9x19mm_B_DM51_mp5_blk","gm_30Rnd_9x19mm_B_DM11_mp5_blk","gm_30Rnd_9x19mm_AP_DM91_mp5_blk"], [], ""],
        ["gm_mp2a1_blk", "", "", "", ["gm_32Rnd_9x19mm_B_DM51_mp2_blk","gm_32Rnd_9x19mm_B_DM11_mp2_blk","gm_32Rnd_9x19mm_AP_DM91_mp2_blk"], [], ""],
		["gm_g3ka4a1_ris_blk", "", "", "optic_ACO_grn_smg",  ["gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk", "gm_20Rnd_762x51mm_B_T_DM21_g3_blk"], [], ""],
		["gm_hk53a2_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_hk53a3_blk", "", "", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_mpm85_blk", "", "gm_surefire_l60_wht_surefire_blk", "",  ["gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk", "gm_30Rnd_556x45mm_B_DM11_hk33_blk"], [], ""],
		["gm_mpiaks74nk_brn", "", "", "",  ["gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_7N6_ak74_org", "gm_30Rnd_545x39mm_B_7N6_ak74_org"], [], ""],
		["gm_mpikms72k_brn", "", "", "",  ["gm_30Rnd_762x39mm_B_57N231_mpikm_blk", "gm_30Rnd_762x39mm_B_57N231_mpikm_blk", "gm_30Rnd_762x39mm_B_57N231_mpikm_blk"], [], ""]
    ];
    _tunedRifles append [
        ["gm_g11k2_ris_blk","","acc_pointer_IR","optic_Nightstalker",["gm_50Rnd_473x33mm_B_DM11_g11_blk","gm_50Rnd_473x33mm_B_DM11_g11_blk","gm_50Rnd_473x33mm_B_DM11_g11_blk"], [], ""],
        ["gm_sg551_swat_blk","","acc_pointer_IR","optic_Hamr",["gm_30Rnd_556x45mm_B_T_DM21_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"], [], ""],
		["gm_sg551_ris_blk", "","","optic_Hamr",["gm_30Rnd_556x45mm_B_T_DM21_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_DM11_sg550_brn","gm_30Rnd_556x45mm_B_T_DM21_sg550_brn"], [], ""],
        ["gm_sg542_ris_blk", "","","optic_Hamr",["gm_20Rnd_762x51mm_B_T_DM21A2_sg542_blk","gm_20Rnd_762x51mm_AP_DM151_sg542_blk","gm_20Rnd_762x51mm_B_DM41_sg542_blk","gm_20Rnd_762x51mm_B_DM111_sg542_blk"], [], ""],
		["gm_m16a1_blk", "","","gm_colt4x20_ar15_blk",["gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry"], [], ""],
		["gm_m16a2_blk", "","","gm_colt4x20_ar15_blk",["gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry","gm_20Rnd_556x45mm_B_M193_stanag_gry"], [], ""],
		["gm_mpikms72ksd_brn", "","gm_flashlightp2_wht_akkhandguard_blu","gm_pka_dovetail_blk",["gm_30Rnd_762x39mm_BSD_57N231U_mpikm_blk","gm_30Rnd_762x39mm_BSD_57N231U_mpikm_blk","gm_30Rnd_762x39mm_BSD_57N231U_mpikm_blk"], [], ""]
    ];
    _marksmanRifles append [
        ["gm_msg90_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"],
        ["gm_msg90a1_blk","","","gm_feroz24_stanagHK_blk",["gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk", "gm_20Rnd_762x51mm_B_DM111_g3_blk","gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], "gm_msg90_bipod_blk"],
		["gm_psg1_blk","","","gm_zf6x42_psg1_stanag_blk",["gm_20Rnd_762x51mm_B_T_DM21A2_g3_blk","gm_20Rnd_762x51mm_AP_DM151_g3_blk","gm_20Rnd_762x51mm_B_DM41_g3_blk"], [], "gm_msg90_bipod_blk"],
		["gm_svd_wud","","","gm_pso6x36_1_dovetail_blk",["gm_10Rnd_762x54mmR_AP_7N1_svd_blk","gm_10Rnd_762x54mmR_API_7bz3_svd_blk","gm_10Rnd_762x54mmR_B_T_7t2_svd_blk"], [], "gm_msg90_bipod_blk"]
    ];
    _enforcerRifles append [
        ["gm_c7a1_oli", "", "", "optic_Hamr", ["gm_30Rnd_556x45mm_B_M855_stanag_gry","gm_30Rnd_556x45mm_B_T_M856_stanag_gry","gm_30Rnd_556x45mm_B_M193_stanag_gry","gm_30Rnd_556x45mm_B_T_M196_stanag_gry"], [], ""],
        ["gm_g36a1_blk", "", "", "", ["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"], [], ""],
        ["gm_g36e_blk", "", "", "", ["gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk","gm_30Rnd_556x45mm_B_DM11_g36_blk","gm_30Rnd_556x45mm_B_T_DM21_g36_blk"], [], ""],
        ["gm_g3ka4a1_ris_blk", "", "", "gm_c79a1_blk", ["gm_40Rnd_762x51mm_AP_DM151_g3_blk","gm_40Rnd_762x51mm_B_DM41_g3_blk","gm_40Rnd_762x51mm_B_DM111_g3_blk","gm_40Rnd_762x51mm_B_T_DM21A2_g3_blk"], [], ""],
		["gm_hk512_wud", "", "gm_surefire_l60_wht_hoseclamp_blk", "", ["gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug","gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug"], [], ""],
        ["gm_hk512_ris_wud", "", "gm_surefire_l60_wht_hoseclamp_blk", "optic_Aco", ["gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug","gm_7rnd_12ga_hk512_pellet","gm_7rnd_12ga_hk512_slug"], [], ""]
    ];
    _mgs append [
        ["gm_mg3_blk", "", "", "", ["gm_120Rnd_762x51mm_B_T_DM21_mg3_grn","gm_120Rnd_762x51mm_B_T_DM21A2_mg3_grn"], [], ""],
		["gm_mg8a1_blk", "", "", "gm_colt4x20_stanagClaw_blk", ["gm_100Rnd_762x51mm_B_T_DM21_mg8_oli","gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli"], [], "gm_g8_bipod_blk"],
        ["gm_mg8a2_blk", "", "", "gm_blits_stanagHK_blk", ["gm_100Rnd_762x51mm_B_T_DM21_mg8_oli","gm_100Rnd_762x51mm_B_T_DM21A2_mg8_oli"], [], "gm_g8_bipod_blk"],
		["gm_hmgpkm_prp", "", "", "", ["gm_100Rnd_762x54mmR_B_T_7t2_pk_grn","gm_100Rnd_762x54mmR_B_T_7t2_pk_grn"], [], ""],
		["gm_lmgrpk74n_blk", "gm_suppressor_pbs4_545mm_blk", "gm_flashlightp2_wht_akhandguard_blu", "gm_pka_dovetail_blk", ["gm_45Rnd_545x39mm_B_7N6_ak74_org","gm_45Rnd_545x39mm_B_7N6_ak74_org","gm_45Rnd_545x39mm_B_7N6_ak74_org"], [], ""],
		["gm_lmgrpk_brn", "gm_suppressor_pbs1_762mm_blk", "gm_flashlightp2_wht_akkhandguard_blu", "gm_pka_dovetail_blk", ["gm_75Rnd_762x39mm_B_57N231_mpikm_blk","gm_75Rnd_762x39mm_B_57N231_mpikm_blk"], [], ""],
		["gm_rpk74n_wud", "gm_suppressor_pbs4_545mm_blk", "", "gm_zfk4x25_blk", ["gm_45Rnd_545x39mm_B_7N6_ak74_org","gm_45Rnd_545x39mm_B_7N6_ak74_org","gm_45Rnd_545x39mm_B_7N6_ak74_org"], [], ""],
		["gm_rpk_wud", "gm_suppressor_pbs1_762mm_blk", "", "gm_zvn64_rpk", ["gm_75Rnd_762x39mm_B_57N231_ak47_blk","gm_75Rnd_762x39mm_B_57N231_ak47_blk"], [], ""],
		["gm_rpkn_wud", "gm_suppressor_pbs1_762mm_blk", "", "gm_zfk4x25_blk", ["gm_75Rnd_762x39mm_B_57N231_ak47_blk","gm_75Rnd_762x39mm_B_57N231_ak47_blk"], [], ""]
    ];
	_pistols append [
        ["gm_m49_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM51_p210_blk","gm_8Rnd_9x19mm_B_DM11_p210_blk"], [], ""],
        ["gm_p1_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM11_p1_blk","gm_8Rnd_9x19mm_B_DM51_p1_blk","gm_8Rnd_9x19mm_BSD_DM81_p1_blk"], [], ""],
        ["gm_p1sd_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM11_p1_blk","gm_8Rnd_9x19mm_B_DM51_p1_blk","gm_8Rnd_9x19mm_BSD_DM81_p1_blk"], [], ""],
        ["gm_p210_blk", "", "", "", ["gm_8Rnd_9x19mm_B_DM11_p210_blk","gm_8Rnd_9x19mm_B_DM51_p210_blk"], [], ""],
        ["gm_pim_blk", "", "", "", ["gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk"], [], ""],
        ["gm_pimb_blk", "", "", "", ["gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk","gm_8Rnd_9x18mm_B_pst_pm_blk"], [], ""],
        ["gm_pm63_handgun_blk", "", "", "", ["gm_15Rnd_9x18mm_B_pst_pm63_blk","gm_25Rnd_9x18mm_B_pst_pm63_blk"], [], ""]
    ];
};

_loadoutData set ["rifles", _rifles];
_loadoutData set ["tunedRifles", _tunedRifles];
_loadoutData set ["enforcerRifles", _enforcerRifles];
_loadoutData set ["carbines", _carbines];
_loadoutData set ["grenadeLaunchers", _gls];
_loadoutData set ["machineGuns", _mgs];
_loadoutData set ["marksmanRifles", _marksmanRifles];
_loadoutData set ["lightATLaunchers", _rpgs];
_loadoutData set ["sidearms", _pistols];


_loadoutData set ["facewear", [
	"G_Aviator",
	"G_Combat",
	"G_Bandanna_aviator",
	"G_Bandanna_beast",
	"G_Bandanna_sport",
	"G_Bandanna_shades",
	"G_Bandanna_blk"
]];

if (_hasGM) then {
    (_loadoutData get "facewear") append [
        "gm_ge_facewear_acidgoggles",
        "gm_ge_facewear_dustglasses",
        "gm_gc_army_facewear_dustglasses",
        "gm_ge_facewear_m65",
        "gm_gc_army_facewear_schm41m",
        "gm_ge_facewear_glacierglasses",
        "gm_xx_facewear_scarf_01_trp",
        "gm_xx_facewear_scarf_01_flk",
        "gm_xx_facewear_scarf_01_blk",
        "gm_xx_facewear_scarf_01_blu",
        "gm_xx_facewear_scarf_01_pt1",
        "gm_xx_facewear_scarf_01_pt3",
        "gm_xx_facewear_scarf_01_frog",
        "gm_xx_facewear_scarf_01_grn",
        "gm_xx_facewear_scarf_01_gry",
        "gm_xx_facewear_scarf_01_m84",
        "gm_xx_facewear_scarf_02_blk",
        "gm_xx_facewear_scarf_01_grn",
        "gm_xx_facewear_scarf_01_oli",
        "gm_xx_facewear_scarf_01_wht",
        "gm_xx_facewear_scarf_01_moro",
        "gm_xx_facewear_scarf_01_oli",
        "gm_xx_facewear_scarf_01_red",
        "gm_xx_facewear_scarf_01_pt2",
        "gm_xx_facewear_scarf_01_str",
        "gm_xx_facewear_scarf_01_wht",
        "gm_ge_facewear_sunglasses"
        ];
}; 

_loadoutData set ["fullmask", [	"G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_blk"]];

if (_hasGM) then {
    (_loadoutData get "facewear") append [
        "gm_ge_facewear_stormhood_blk",
        "gm_ge_facewear_stormhood_dustglasses_blk",
        "gm_ge_facewear_stormhood_brd"
        ];
} ;

_loadoutData set ["headgear", [
    "H_Shemag_olive",
    "H_Booniehat_oli",
    "H_Beret_blk",
    "H_Cap_oli",
    "H_Cap_headphones",
	"H_Watchcap_camo"
]];

if (_hasGM) then {
	(_loadoutData get "headgear") append [
        "gm_ge_headgear_headset_crew_oli",
        "gm_ge_headgear_beret_crew_blk",
        "gm_xx_headgear_headwrap_crew_01_grn",
        "gm_ge_headgear_hat_beanie_crew_blk"
    ];
};

_loadoutData set ["maps", ["ItemMap"]];
_loadoutData set ["watches", ["ItemWatch"]];
_loadoutData set ["compasses", ["ItemCompass"]];
_loadoutData set ["radios", ["ItemRadio"]];
_loadoutData set ["gpses", ["ItemGPS"]];
_loadoutData set ["NVGs", ["NVGoggles_INDEP"]];
_loadoutData set ["binoculars", ["Binocular"]];
_loadoutData set ["Rangefinder", ["Rangefinder"]];

/////Vests
private _vests = ["V_Chestrig_oli", "V_TacChestrig_oli_F", "V_TacVest_oli", "V_HarnessOGL_brn", "V_HarnessO_brn"];

if (_hasApex) then {
	_vests append ["V_TacChestrig_cbr_F", "V_TacChestrig_grn_F", "V_TacChestrig_oli_F"];
};

if (_hasWs) then {
	_vests pushback "V_lxWS_HarnessO_oli";
};

if (_hasContact) then {
	_vests append ["V_SmershVest_01_F", "V_SmershVest_01_radio_F"];
};

if (_hasLawsOfWar) then {
	_vests append ["V_Pocketed_black_F", "V_Pocketed_coyote_F", "V_Pocketed_olive_F"];
};

private _heavyVests = ["V_TacVestIR_blk", "V_Press_F", "V_PlateCarrierIAGL_oli", "V_I_G_resistanceLeader_F", "V_TacVest_blk_POLICE"];

if (_hasApex) then {
	_heavyVests append ["V_TacVest_gen_F"];
};

if (_hasWs) then {
	_heavyVests append ["V_lxWS_TacVestIR_oli"];
};

if (_hasContact) then {
	_heavyVests append ["V_CarrierRigKBT_01_EAF_F", "V_CarrierRigKBT_01_Olive_F"];
};

if (_hasJets) then {
	_heavyVests pushBack "V_DeckCrew_brown_F";
};

/////Uniforms
_loadoutData set ["uniforms", [
	"U_I_C_Soldier_Para_4_F",
	"U_I_C_Soldier_Para_2_F",
	"U_I_C_Soldier_Para_3_F",
	"U_I_C_Soldier_Para_1_F",
	"U_I_C_Soldier_Camo_F"
]];
_loadoutData set ["heavyUniforms", []]; ///don't know why it's here but could be useful in the future

/////Helmets
private _helmets = ["H_HelmetB"];

if (_hasWs) then {
	_helmets append ["lxWS_H_Headset", "lxWS_H_ssh40_black", "lxWS_H_ssh40_green", "lxWS_H_ssh40_sand","lxWS_H_bmask_base", "H_turban_02_mask_black_lxws", "lxWS_H_bmask_camo01", "H_bmask_snake_lxws","H_turban_02_mask_snake_lxws", "lxWS_H_bmask_white", "lxWS_H_bmask_camo02", "lxWS_H_bmask_yellow", "lxWS_H_PASGT_goggles_black_F", "lxWS_H_PASGT_goggles_olive_F", "lxWS_H_HelmetCrew_I"];
};

if (_hasContact) then {
	_helmets append ["H_Booniehat_mgrn", "H_Booniehat_taiga", "H_Booniehat_wdl", "H_Booniehat_eaf", "H_MilCap_grn", "H_MilCap_taiga", "H_MilCap_wdl", "H_MilCap_eaf"];
};

if (_hasLawsOfWar) then {
	_helmets append ["H_PASGT_basic_black_F", "H_PASGT_basic_blue_F", "H_PASGT_basic_olive_F", "H_PASGT_neckprot_blue_press_F", "H_PASGT_basic_blue_press_F","H_HeadBandage_clean_F", "H_HeadBandage_stained_F", "H_HeadBandage_bloody_F"];
};

if (_hasGM) then {
	_helmets append [        
		"gm_ge_headgear_headset_crew_oli",
        "gm_gc_headgear_fjh_model4_oli",
        "gm_ge_headgear_m92_cover_glasses_oli",
        "gm_ge_headgear_m92_cover_oli",
        "gm_ge_headgear_psh77_oli",
        "gm_ge_headgear_psh77_up_oli",
        "gm_ge_headgear_psh77_down_oli"
		];
};

private _crewhelmets = ["H_Tank_black_F"];

if (_hasWs) then {
	_crewhelmets append ["lxWS_H_Tank_tan_F", "lxWS_H_HelmetCrew_I"];
};

if (_hasContact) then {
	_crewhelmets append ["H_Tank_eaf_F", "H_HelmetCrew_I_E", "H_Booniehat_wdl", "H_Booniehat_eaf"];
};

if (_hasLawsOfWar) then {
	_crewhelmets pushBack "H_Construction_headset_black_F";
};

if (_hasGM) then {
	_crewhelmets pushBack "gm_ge_headgear_headset_crew_oli";
};

/////
_loadoutData set ["offuniforms", ["U_I_C_Soldier_Camo_F"]];
_loadoutData set ["vests", _vests];
_loadoutData set ["heavyVests", _heavyVests];
_loadoutData set ["backpacks", ["B_TacticalPack_oli", "B_Carryall_oli"]];
_loadoutData set ["helmets", _helmets];
_loadoutData set ["crewHelmets", _crewhelmets];

//Item *set* definitions. These are added in their entirety to unit loadouts. No randomisation is applied.
_loadoutData set ["items_medical_basic", ["BASIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the basic medical loadout for vanilla
_loadoutData set ["items_medical_standard", ["STANDARD"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the standard medical loadout for vanilla
_loadoutData set ["items_medical_medic", ["MEDIC"] call A3A_fnc_itemset_medicalSupplies]; //this line defines the medic medical loadout for vanilla
_loadoutData set ["items_miscEssentials", [] call A3A_fnc_itemset_miscEssentials];

private _slItems = ["Laserbatteries", "Laserbatteries", "Laserbatteries"];
private _eeItems = ["ToolKit", "MineDetector"];
private _mmItems = [];

if (A3A_hasACE) then {
    _slItems append ["ACE_microDAGR", "ACE_DAGR"];
    _eeItems append ["ACE_Clacker", "ACE_DefusalKit"];
    _mmItems append ["ACE_RangeCard", "ACE_ATragMX", "ACE_Kestrel4500"];
};

_loadoutData set ["items_squadleader_extras", _slItems];
_loadoutData set ["items_rifleman_extras", []];
_loadoutData set ["items_medic_extras", []];
_loadoutData set ["items_grenadier_extras", []];
_loadoutData set ["items_explosivesExpert_extras", _eeItems];
_loadoutData set ["items_engineer_extras", _eeItems];
_loadoutData set ["items_lat_extras", []];
_loadoutData set ["items_at_extras", []];
_loadoutData set ["items_aa_extras", []];
_loadoutData set ["items_machineGunner_extras", []];
_loadoutData set ["items_marksman_extras", _mmItems];
_loadoutData set ["items_sniper_extras", _mmItems];
_loadoutData set ["items_police_extras", []];
_loadoutData set ["items_crew_extras", []];
_loadoutData set ["items_unarmed_extras", []];


//////////////////////////
//    Misc Loadouts     //
//////////////////////////

private _crewLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_crewLoadoutData set ["vests", _vests];
_crewLoadoutData set ["crewHelmets", _crewhelmets];

private _pilotLoadoutData = _loadoutData call _fnc_copyLoadoutData;
_pilotLoadoutData set ["vests", _vests];
_pilotLoadoutData set ["helmets", ["H_PilotHelmetHeli_O", "H_CrewHelmetHeli_O", "H_PilotHelmetHeli_B", "H_CrewHelmetHeli_B"]];


// ##################### DO NOT TOUCH ANYTHING BELOW THIS LINE #####################


/////////////////////////////////
//    Unit Type Definitions    //
/////////////////////////////////
//These define the loadouts for different unit types.
//For example, rifleman, grenadier, squad leader, etc.
//In 95% of situations, you *should not need to edit these*.
//Almost all factions can be set up just by modifying the loadout data above.
//However, these exist in case you really do want to do a lot of custom alterations.

private _cellLeaderTemplate = {
	if (random 100 > 60) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 5] call _fnc_addAdditionalMuzzleMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _mercenaryTemplate = {
	["helmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[selectRandom ["grenadeLaunchers", "rifles", "tunedRifles"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _enforcerTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	[["enforcerRifles", "rifles"] call _fnc_fallback] call _fnc_setPrimary;
	["primary", 4] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_squadLeader_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;
	["signalsmokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["binoculars"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _partisanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	if (random 1 < 0.15) then {
		["backpacks"] call _fnc_setBackpack;
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 3] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _minutemanTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_rifleman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 2] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _medicTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

  	["carbines"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_medic"] call _fnc_addItemSet;
	["items_medic_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _saboteurTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	[selectRandom ["vests", "heavyVests"]] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["grenadeLaunchers"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;
	["primary", 10] call _fnc_addAdditionalMuzzleMagazines;

	if (random 1 < 0.15) then {
		["lightHELaunchers"] call _fnc_setLauncher;
		["launcher", 2] call _fnc_addMagazines;
	} else {
		["sidearms"] call _fnc_setHandgun;
		["handgun", 2] call _fnc_addMagazines;
	};

	["items_medical_standard"] call _fnc_addItemSet;
	["items_grenadier_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 4] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _explosivesExpertTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["heavyVests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_explosivesExpert_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["lightExplosives", 2] call _fnc_addItem;
	if (random 1 > 0.5) then {["heavyExplosives", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["atMines", 1] call _fnc_addItem;};
	if (random 1 > 0.5) then {["apMines", 1] call _fnc_addItem;};

	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _atTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["lightATLaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_at_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 1] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _aaTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	[selectRandom ["rifles", "carbines"]] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["AALaunchers"] call _fnc_setLauncher;
	//TODO - Add a check if it's disposable.
	["launcher", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_aa_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _oppressorTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;
	["backpacks"] call _fnc_setBackpack;

	["machineGuns"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_machineGunner_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["NVGs"] call _fnc_addNVGs;
};

private _sharpshooterTemplate = {
	if (random 100 < 30) then {
		["helmets"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "fullmask", 1]] call _fnc_setFacewear;
	} else {
		["headgear"] call _fnc_setHelmet;
		[selectRandomWeighted [[], 1.5, "facewear", 1]] call _fnc_setFacewear;
	};
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;


	["marksmanRifles"] call _fnc_setPrimary;
	["primary", 6] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_standard"] call _fnc_addItemSet;
	["items_marksman_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["antiInfantryGrenades", 1] call _fnc_addItem;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["Rangefinder"] call _fnc_addBinoculars;
	["NVGs"] call _fnc_addNVGs;
};

private _crewTemplate = {
	["crewHelmets"] call _fnc_setHelmet;
	[selectRandomWeighted [[], 1.5, "fullmask", 1.25, "facewear", 1]] call _fnc_setFacewear;
	["vests"] call _fnc_setVest;
	["uniforms"] call _fnc_setUniform;

	["carbines"] call _fnc_setPrimary;
	["primary", 3] call _fnc_addMagazines;

	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_crew_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;
	["smokeGrenades", 2] call _fnc_addItem;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
	["gpses"] call _fnc_addGPS;
	["NVGs"] call _fnc_addNVGs;
};

private _unarmedTemplate = {
	["vests"] call _fnc_setVest;
	[selectRandomWeighted [[], 1.5, "facewear", 1, "fullmask", 1]] call _fnc_setFacewear;
	["uniforms"] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

private _commanderTemplate = {
	[selectRandomWeighted ["helmets", 0.3, "headgear", 0.7]] call _fnc_setHelmet;
	["sidearms"] call _fnc_setHandgun;
	["handgun", 2] call _fnc_addMagazines;

	["vests"] call _fnc_setVest;
	[["offuniforms", "uniforms"] call _fnc_fallback] call _fnc_setUniform;

	["items_medical_basic"] call _fnc_addItemSet;
	["items_unarmed_extras"] call _fnc_addItemSet;
	["items_miscEssentials"] call _fnc_addItemSet;

	["maps"] call _fnc_addMap;
	["watches"] call _fnc_addWatch;
	["compasses"] call _fnc_addCompass;
	["radios"] call _fnc_addRadio;
};

////////////////////////////////////////////////////////////////////////////////////////
//  You shouldn't touch below this line unless you really really know what you're doing.
//  Things below here can and will break the gamemode if improperly changed.
////////////////////////////////////////////////////////////////////////////////////////

///////////////////////
//  Rivals Units     //
///////////////////////
private _prefix = "militia";
private _unitTypes = [
	["CellLeader", _cellLeaderTemplate, [], [_prefix, true]],
	["Mercenary", _mercenaryTemplate, [], [_prefix, true]],
	["Minuteman", _minutemanTemplate, [], [_prefix, true]],
	["Enforcer", _enforcerTemplate, [], [_prefix, true]],
	["Partisan", _partisanTemplate, [], [_prefix, true]],
	["Saboteur", _saboteurTemplate, [], [_prefix, true]],
	["Medic", _medicTemplate, [["medic", true]], [_prefix, true]],
	["ExplosivesExpert", _explosivesExpertTemplate, [["explosiveSpecialist", true]], [_prefix, true]],
	["SpecialistAT", _atTemplate, [], [_prefix, true]],
	["SpecialistAA", _aaTemplate, [], [_prefix, true]],
	["Oppressor", _oppressorTemplate, [], [_prefix, true]],
	["Sharpshooter", _sharpshooterTemplate, [], [_prefix, true]]
];

[_prefix, _unitTypes, _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;

//////////////////////
//    Misc Units    //
//////////////////////
[_prefix, [["Crew", _crewTemplate, [], [_prefix, true]]], _crewLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Pilot", _crewTemplate, [], [_prefix, true]]], _pilotLoadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Commander", _commanderTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
[_prefix, [["Unarmed", _unarmedTemplate, [], [_prefix, true]]], _loadoutData] call _fnc_generateAndSaveUnitsToTemplate;
