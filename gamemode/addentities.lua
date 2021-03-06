-- Guns
AddCustomShipment("Desert eagle", "models/weapons/w_pist_deagle.mdl", "weapon_deagle2", 215, 10, true, 215, true, {TEAM_GUN})
AddCustomShipment("Fiveseven", "models/weapons/w_pist_fiveseven.mdl", "weapon_fiveseven2", 0, 10, true, 205, true, {TEAM_GUN})
AddCustomShipment("Glock", "models/weapons/w_pist_glock18.mdl", "weapon_glock2", 0, 10, true, 160, true, {TEAM_GUN})
AddCustomShipment("P228", "models/weapons/w_pist_p228.mdl", "weapon_p2282", 0, 10, true, 185, true, {TEAM_GUN})

AddCustomShipment("AK47", "models/weapons/w_rif_ak47.mdl", "weapon_ak472", 2450, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("MP5", "models/weapons/w_smg_mp5.mdl", "weapon_mp52", 2200, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("M4", "models/weapons/w_rif_m4a1.mdl", "weapon_m42", 2450, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("Mac 10", "models/weapons/w_smg_mac10.mdl", "weapon_mac102", 2150, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("Pump shotgun", "models/weapons/w_shot_m3super90.mdl", "weapon_pumpshotgun2", 1750, 10, false, nil, false, {TEAM_GUN}) 
AddCustomShipment("Sniper rifle", "models/weapons/w_snip_g3sg1.mdl", "ls_sniper", 3750, 10, false, nil, false, {TEAM_GUN}) 

-- Printers
AddEntity("Standard printer", "standard_printer", "models/props_c17/consolebox01a.mdl", 1000, 2, "/buystandard_printer")
AddEntity("Advanced printer", "advanced_printer", "models/props_c17/consolebox01a.mdl", 5000, 2, "/buyadvanced_printer")
AddEntity("Golden printer", "gold_printer", "models/props_c17/consolebox01a.mdl", 15000, 2, "/buygold_printer")
AddEntity("Ruby printer", "ruby_printer", "models/props_c17/consolebox01a.mdl", 30000, 1, "/buyruby_printer")
AddEntity("Diamond printer", "diamond_printer", "models/props_c17/consolebox01a.mdl", 50000, 1, "/buydiamond_printer")
AddEntity("Printer cooler", "money_printer_cooler", "models/props_lab/reciever01a.mdl", 3000, 8, "/buymoney_printer_cooler")

--Durgz
--AddEntity("Entity Name", "ent_entity", "models/", price, maxammount, "/buyent_entity")
AddEntity("Alcohol", "durgz_alcohol", "models/drug_mod/alcohol_can.mdl", 100, nil, "/buy_durgz_alcohol")
AddEntity("Aspirin", "durgz_aspirin", "models/jaanus/aspbtl.mdl", 100, nil, "/buy_durgz_aspirin")
AddEntity("Cigarette", "durgz_cigarette", "models/boxopencigshib.mdl", nil, nil, "/buy_durgz_cigarette")
AddEntity("Cocaine", "durgz_cocaine", "models/cocn.mdl", 100, nil, "/buy_durgz_cocaine")
AddEntity("heroine", "durgz_heroine", "models/katharsmodels/syringe_out/syringe_out.mdl", 100, nil, "/buy_durgz_heroine")
AddEntity("LSD", "durgz_lsd", "models/smile/smile.mdl", 100, nil, "/buy_durgz_lsd")
AddEntity("Mushroom", "durgz_mushroom", "models/ipha/mushroom_small.mdl", 100, nil, "/buyent_entity")
AddEntity("PCP", "durgz_pcp", "models/marioragdoll/Super Mario Galaxy/star/star.mdl", 100, nil, "/buy_durgz_pcp")
AddEntity("Water", "durgz_water", "models/drug_mod/the_bottle_of_water.mdl", 100, nil, "/buy_durgz_water")
AddEntity("Weed", "durgz_weed", "models/katharsmodels/contraband/zak_wiet/zak_wiet.mdl", 100, nil, "/buy_durgz_weed")

--[[
How to add custom vehicles:
FIRST
go ingame, type rp_getvehicles for available vehicles!
then:
AddCustomVehicle(<One of the vehicles from the rp_getvehicles list>, <Model of the vehicle>, <Price of the vehicle>, <OPTIONAL jobs that can buy the vehicle>)
Examples:]]--

--Vehicles
--AddCustomVehicle("Jeep", "models/buggy.mdl", 100 )
--AddCustomVehicle("Airboat", "models/airboat.mdl", 600, {TEAM_GUN})
--AddCustomVehicle("Airboat", "models/airboat.mdl", 600, {TEAM_GUN, TEAM_MEDIC})

--[[Add those lines under your custom shipments. At the bottom of this file or in data/CustomShipments.txt

HOW TO ADD CUSTOM SHIPMENTS:
AddCustomShipment("<Name of the shipment(no spaces)>"," <the model that the shipment spawns(should be the world model...)>", "<the classname of the weapon>", <the price of one shipment>, <how many guns there are in one shipment>, <OPTIONAL: true/false sold seperately>, <OPTIONAL: price when sold seperately>, < true/false OPTIONAL: /buy only = true> , OPTIONAL which classes can buy the shipment, OPTIONAL: the model of the shipment)

Notes:
MODEL: you can go to Q and then props tab at the top left then search for w_ and you can find all world models of the weapons!
CLASSNAME OF THE WEAPON
there are half-life 2 weapons you can add:
weapon_pistol
weapon_smg1
weapon_ar2
weapon_rpg
weapon_crowbar
weapon_physgun
weapon_357
weapon_crossbow
weapon_slam
weapon_bugbait
weapon_frag
weapon_physcannon
weapon_shotgun
gmod_tool

But you can also add the classnames of Lua weapons by going into the weapons/ folder and look at the name of the folder of the weapon you want.
Like the player possessor swep in addons/Player Possessor/lua/weapons You see a folder called weapon_posessor 
This means the classname is weapon_posessor

YOU CAN ADD ITEMS/ENTITIES TOO! but to actually make the entity you have to press E on the thing that the shipment spawned, BUT THAT'S OK!
YOU CAN MAKE GUNDEALERS ABLE TO SELL MEDKITS!

true/false: Can the weapon be sold seperately?(with /buy name) if you want yes then say true else say no

the price of sold seperate is the price it is when you do /buy name. Of course you only have to fill this in when sold seperate is true.


EXAMPLES OF CUSTOM SHIPMENTS(remove the // to activate it): ]]--

//AddCustomShipment("HL2pistol", "models/weapons/W_pistol.mdl", "weapon_pistol", 500, 10, false, 200, false, {TEAM_GUN, TEAM_MEDIC})

--EXAMPLE OF AN ENTITY(in this case a medkit)
--AddCustomShipment("bball", "models/Combine_Helicopter/helicopter_bomb01.mdl", "sent_ball", 100, 10, false, 10, false, {TEAM_GUN}, "models/props_c17/oildrum001_explosive.mdl")
--EXAMPLE OF A BOUNCY BALL:   		NOTE THAT YOU HAVE TO PRESS E REALLY QUICKLY ON THE BOMB OR YOU'LL EAT THE BALL LOL
--AddCustomShipment("bball", "models/Combine_Helicopter/helicopter_bomb01.mdl", "sent_ball", 100, 10, true, 10, true)
-- ADD CUSTOM SHIPMENTS HERE(next line):
