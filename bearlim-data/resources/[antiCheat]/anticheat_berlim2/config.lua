Config = {}

Config.LogWebhook = 'https://discordapp.com/api/webhooks/727602550076997783/0sqKejHHt4kOUK8J3JQHylWK69n5Vm_qlkxHTSAiKRcMGF0sy9G9ctw2kQCB22RLhb4Y' -- Kendi Webhook'unuzu koymanuz lazım tüm loglar o kanala düşecektir!
Config.AntiCheat = true -- Çok amaçlı Koruma Kapamanızı önermeyiz!
Config.AntiGodmode = false -- GodMode açan hileyi yakalar bunu bir admin yapsa bile yaklanır!
Config.AntiSpectate = true -- Spectate Atan Hileyi Yakalar.
Config.AcStopProtection = true -- AntiCheatin bypasslanmasını engeller.
Config.ResourceStartCheck = true -- Menü inject edilir ise yakalar.
Config.AntiBlips = false -- Çoğu hilede otomatik blip açılıyor bu özellik ile yakalaya bilirsiniz ama adminlerde bu loga düşer!
Config.PlayerProtection = true -- Patlamaları engeller ama benzinliğe çarparlar ise bir etki olmaz.
Config.AntiSpeedHack = false -- Speed Hack Açanları Yakalar Tavsiye Edilmez Sorun Çıkarma İhtimali Var.
Config.AntiPed = true -- Tüm Pedleri Engeller Black Listte Olmasına gerek kalmaz.
Config.MenuKoruma = false  -- Hile Menülerinin %90 Unu Engeller. detaylı kurulum yapılması gerekmektedir.
Config.Explosions = true -- Oyuncuların Patlamamalarını Sağlar.
Config.ResourceLength = 35 -- Eğer SC ismi 16 dan uzun ise o kullanıcıyı kickler.
Config.CheckTimes = 3000 -- Hilenin spawn ettiği tankları helikopterleri vs şeylerin silme süresi ne kadar az olursa anti cheatin ms değeri o kadar artar. Örnek "3000 = 0.30 Civarı MS ekler"
Config.ExCheckTimes = 2000 -- Hilenin patlama yaptığında veya illegal birşey yaptığını 3 saniyede yakalar yani her 3 saniyede 1 check atar eğer düşürürseniz ms değerleri artar.

-- Tuş Koruması

Config.AntiKey = true -- Yasaklı Tuşa Basar İse Loga Düşecektir
Config.BlacklistedKeys = {162, 121, 178} -- İsterseniz Burdan Ekleye Yasaklı Tuş Bilersiniz xD https://docs.fivem.net/game-references/controls/

--  Blacklist Komut

Config.AntiBlacklistedCmds = true -- Eğer f8 de black list kelime geçer ise ss alıp kick atar!

--  Blacklist Silah

Config.KaraListeSilahHepSil = true -- Eğer true ise black list silah alınca üstündeki tüm silahlar silinir false ise silinmez. Aşşağıdaki config ayarı true ise sadece blacklist silahı siler.
Config.KaraListeSilah = true -- blacklistteki blacklist silahları siler!
Config.KaraListeSilahKick = false -- Eğer black listte bulunan silahı alır ise kick atar açmanızı pek önermeyiz.
Config.BlacklistedWeapons = {
    "WEAPON_MACHETE",
    "weapon_dagger",
    "WEAPON_GOLFCLUB",
    "WEAPON_CROWBAR",
    "weapon_battleaxe", 
    "weapon_wrench", 
    "weapon_poolcue", 
    "weapon_stone_hatchet", 
    "weapon_assaultrifle_mk2", 
    "weapon_mg", 
    "weapon_autoshotgun", 
    "weapon_heavyshotgun", 
    "weapon_bullpupshotgun", 
    "weapon_specialcarbine", 
    "weapon_smg_mk2", 
    "weapon_assaultshotgun", 
    "weapon_pumpshotgun_mk2", 
    "weapon_minismg", 
    "weapon_machinepistol", 
    "weapon_carbinerifle_mk2", 
    "weapon_combatmg_mk2", 
    "weapon_bullpuprifle", 
    "weapon_gusenberg", 
    "weapon_raycarbine", 
    "weapon_compactrifle", 
    "weapon_bullpuprifle_mk2", 
    "weapon_specialcarbine_mk2", 
    "WEAPON_MARKSMANPISTOL", 
    "WEAPON_HAMMER",
    "WEAPON_HATCHET",
    "WEAPON_SNIPERRIFLE", 
    "WEAPON_REVOLVER", 
    "WEAPON_REVOLVER_MK2", 
    "weapon_raypistol", 
    "WEAPON_DIGISCANNER",
    "WEAPON_SNSPISTOL_MK2", 
    "WEAPON_SNSPISTOL", 
    "WEAPON_PISTOL_MK2", 
    "WEAPON_PETROLCAN",
    "WEAPON_SNOWBALL",
    "WEAPON_FIREEXTINGUISHER",
    "WEAPON_BALL", 
    "WEAPON_HEAVYSNIPER",  
    "WEAPON_MARKSMANRIFLE", 
    "WEAPON_MARKSMANRIFLE_MK2", 
    "WEAPON_RPG", 
    "WEAPON_GRENADELAUNCHER",
    "WEAPON_GRENADELAUNCHER_SMOKE", 
    "WEAPON_MINIGUN", 
    "WEAPON_FIREWORK", 
    "WEAPON_RAILGUN",
    "WEAPON_HOMINGLAUNCHER", 
    "WEAPON_COMPACTLAUNCHER", 
    "WEAPON_RAYMINIGUN", 
    "WEAPON_GRENADE",
    "WEAPON_BZGAS", 
    "WEAPON_MOLOTOV", 
    "WEAPON_STICKYBOMB", 
    "WEAPON_PROXMINE", 
    "WEAPON_PIPEBOMB",
    "WEAPON_SMOKEGRENADE", 
    "WEAPON_ROCKET", 
    "WEAPON_EXPLOSION",
    "WEAPON_FLARE",
    "WEAPON_STINGER",
    "WEAPON_MUSKET",
    "WEAPON_HEAVYSNIPER_MK2",
    "WEAPON_KNUCKLE",
    "WEAPON_COMBATMG_MK2",
    "WEAPON_BOTTLE"
}

--  YETKİ AYARI

Config.Bypass = {"acadmin","acmod"}
Config.OpenMenuAllowed = {"acadmin"}
Config.SpectateAllowed = {"acadmin"}
Config.ClearAreaAllowed = {"acadmin"}

-- Dokanma 

Config.BlacklistedCommands = {
    "chocolate",
	"pk",
    "haha",
    "Fucked",
	"injected",
	"lol",
	"vRP",
	"panickey",
    "killmenu",
    "Ruby",
    "parent menu doesn",
    "https://discord.gg/VTaeCZm",
	"panik",
    "lynx",
    "Cience",
	"brutan",
	"panic",
    "WarMenu",
    "memes",
	"tiago",
	"TiagoModz",
	"Information"
}

Config.BlacklistedCarx = {
    "phantom2",
    "pounder",
    "rhino",
    "freight",
    "cablecar",
    "buzzard",
    "FreightCar",
    "freightcont1",
    "freightcont2",
    "Avenger",
    "freightgrain",
    "metrotrain",
    "tankercar",
    "barracks",
    "barracks2",
    "barracks3",
    "barrage",
    "crusader",
    "scarab",
    "scarab2",
    "scarab3",
    "besra",
    "freight",
    "jet",
    "luxor",
    "blimp2",
    "blimp",
    "maverick",
    "luxor2",
    "miljet",
    "nimbus",
    "shamal",
    "titan",
    "cargobob4",
    "cargobob3",
    "cargobob2",
    "cargobob",
    "tug",
    "marquis",
    "cerberus",
    "phantom3"
} 

Config.MenuNames = {
    'Desudo',
    'Brutan',
    'EulenCheats',
    "memes",
    "Fucked",
    "Lynx 8",
    "www.lynxmenu.com",
    "HamHaxia",
    "Ham Mafia",
    "www.renalua.com",
    "Fallen#0811",
    "Rena 8",
    "HamHaxia", 
    "Ham Mafia", 
    "Xanax#0134", 
    ">:D Player Crash", 
    "discord.gg", 
    "34ByTe Community", 
    "lynxmenu.com",
    "injected",
    "Maestro",
    "Cience",
    "Tiago",
    "Ruby",
    "Anti-Lynx",
    "Baran#8992",
    "iLostName#7138",
    "85.190.90.118",
    "https://discord.gg/VTaeCZm",
    "Melon#1379",
    "hammafia.com",
    "AlphaV ~ 5391",
    "vjuton.pl",
    "Soviet Bear"
}

Config.Triggers = {
    "mellotrainer:adminKick",
    'antilynx8:anticheat',
    'antilynxr4:detect',
    'antilynxr6:detection',
    "HCheat:TempDisableDetection",
    'ynx8:anticheat',
    'antilynx8r4a:anticheat',
    'lynx8:anticheat',
    --"esx:getSharedObject",
    'AntiLynxR4:kick',
    'AntiLynxR4:log',
    "d0pamine_xyz:getFuckedNigger"
}

Config.allowedResources = {
	'fivem-map-hipster',
    'fivem-map-skater',
    'mapmanager',
    'chat',
    'spawnmanager',
    'sessionmanager',
    'fivem',
    'rconlog',                                                
    'fxmigrant', 											
    'mysql-async',												
    'essentialmode', 										
    'esplugin_mysql', 											
    'async',												
    'es_extended',												
    'es_admin',													
    'es_ui', 													
    'cron', 											
    'webpack', 												
    'yarn', 												
    'screenshot-basic',									
    'vMenu',													
    'BanSql',													
    'esx_menu_default',											
    'esx_menu_dialog',											
    'esx_menu_list',											
    'NativeUI',													
    'jsfour-register',										
    'esx_skin', 												
    'skinchanger', 												
    'gcphone',                  								
    'esx_addons_gcphone',      								
    'disc-base',												
    'disc-inventoryhud',										
    'disc-ammo',												
    'disc-armory',												
    'disc-ambulancejob',										
    'disc-death',												
    'disc-mdt',												
    'esx_addonaccount',											
    'esx_addoninventory',										
    'esx_datastore',										
    'esx_barbershop',											
    'esx_basicneeds',											
    'esx_billing',										
    'esx_dmvschool',											
    'esx_license',											
    'esx_optionalneeds',									
    'esx_status', 											
    'esx-kr-advanced-shops',									
    'esx_jail', 											
    'esx_pun_carwash',										
    'esx_ktackle',										
    'ESX_CommunityService',										
    'esx_thief', 											
    'esx_teleports',										
    'esx_showcommands',											
    'esx_carlock',												
    'esx_carshowroom',									
    'esx_guy293_holsterweapon', 							
    'esx_plasticsurgery',										
    'esx-kr-vehicle-push',										
    'esx_tattooshop',											
    'esx_service', 											
    'esx_eden_clotheshop',										
    'esx_gps',											
    'esx_lockpick',										
    'esx_doorlock_mhacking',								
    'esx_society',												
    'esx_bisiklet',											
    'esx_binoculars',											
    'esx_barbie_lyftupp',									
    'esx_marker',											
    'esx_hospital', 										
    'esx_garage',											
    'esx_boat',												
    'esx_AdvancedFishing',									
    'esx_drugeffects',									
    'esx_vehicleshop',										
    'esx_jobChat',											
    'monster_vault',										
    'new_banking',			                               
    'mad-hud',										
    'weapons-on-back', 										
    'yuklemeekrani', 									      
    'tokovoip_script',											
    'mad-sounds',											
    'acidtrip',												
    'sup_dice',												
    'mad-props',											
    'deathcam',										
    'plateRemover',											
    'vmad-seat',												
    'utk_shiftlog',										
    'reload-trains',										
    'Weaponry',												
    'mad-NoReticle',										
    'LegacyFuel',											
    'lux_vehcontrol',											
    'eden_accesories',											
    'TakeHostage',												
    'dpemotes',													
    'sway_carhud',											
    'mad-hotwire',											   
    'utk_motels',											
    '3dme',														
    '3ddo',													
    'CarryPeople',												
    'kimlik',													
    'dsmoke',												
    'server_name',												
    'MADRoleplay',											
    'cloudfivem_ac',										
    'MadRP',										         
    'blips',											
    'edz_carmenu',										
    'sup_radio',											
    'sup_toggleid',											
    'mad-killinglog',							
    'mad-menu',											
    'mad-cruiseControl',									
    'mad-chatconnectlog',									
    'mad-blips',												
    'mad-proxies',											 
    'mad-stress',										
    'ChairBedSystem',											
    'discord_sikayet',										
    'hukuk_badge',												
    'police_badge',											
    'sup_armor',										
    'sup_props',											
    'sup_radiobreaker',											
    'sup_wallet',									
    'torchizm-tires',									
    'dpclothing',																		
    'progressBars',											
    'mythic_progbar',										
    'pogressBar',											
    'pNotify',												
    'mythic_notify',										
    'Notification',											  
    'esx_ambulancejob',										
    'esx_policejob',										
    'esx_sheriff',											
    'esx_taxijob',											
    'esx_mechanicjob',									
    'esx_mechanicjob2',										
    'esx_mechanicjob3',											
    'esx_mechanicjob4',										
    'esx_lscustom',											
    'esx_duty',												
    'esx_policeGarage',										
    'Redneck_s',											
    'PoliceVehiclesWeaponDeleter',								
    'Policeboost',												
    'mdt',														
    'm3_backup',												
    'ar_k9',												
    'rad_gsr',													
    'sup_bodycam',												
    'medSystem', 											
    'mad-medicalrecords',									
    'mad-tailorjob',										
    'esx_chickenjob',										
    'eup',													
    'eupui',													
    'PoliceClothes',										
    'mad-vest',												
    'missionrowpdv2',										
    'sheriff',													
    'pablito_taco',											
    'burgershot',										
    'bob74_ipl',											
    'jant',													
    'mad-pillbox',												
    'beanmachine',											
    'madrazoranch',												
    'wnews-mlo',											
    'pinkcage',												
    'gercekcisesler',											
    'interact-sound', 											
    'esx_vangelico_robbery',									
    'esx_planting',												
    'esx_holdup', 											
    'Kuzkay_Meth',												
    'salty_crafting',										
    'esx_allrounddealer',										
    'edz_truckrobbery',											
    'edz_tacoruns',												
    'MF_Fleeca',												
    'MF_LockPicking',										
    'utk_ornateprops',											
    'utk_ornateheist',											
    'esx_btc',													
    'm3_fsociety',												
    'm3_houserobbery',											
    'm3_shoprobbery',											
    'mhacking',												
    'mtracker',												
    'sup_atmRobbery',											
    'rpv-blackmarket',											
    'rpx-chopshop',											
    'rpv_prisonnpc',								
    'znt-outlawalert',											
    'dlcars1',						
    'dlcars2',													
    'policebuffalo',
    'unmarkedchevrolet',
    'amggt',
    'bmwm8',
    'm4lb',
    'amgt',
    'lp700',
    'cls63',
    'jza',
    'carChallengerRedBlue',
    'm5f90',
    'mpvinewood',
    'mpheist3',
    'i8',
    'astonMartin',
    'wraithb',
    'lb750sv',
    'C63',
    'GT86',
    'f458',
    'demon',
    '911R',
    '720s',
    'aperta',
    'rrwraith',
    'mercedesE400',
    'trhawk',
    'pista',
    'lp700r',
    'gtr',
    'subwrx',
    'BugattiDivo',
    'BugattiChiron',
    'camaro',
    'skyline',
    'evo9',
    'g65',
    'z4',
    'dodge_ems',			          
    'f1_ambulance',					
    '2015polstang',                   
    'kawasaki',                       
    'customcharger',                 
    'customcvpi',                      
    'LSPDCars',                       
    'pdpack',                         
    'scarh',                          
    'g17'                      
}