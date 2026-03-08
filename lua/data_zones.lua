--
-- entropy.mac
-- data_zones.lua
-- 
--
--


zone = {}

  zone['options'] = {}
  zone['options']['nav'] = {}
  zone['options']['nav'] = { ['log'] = 'off', ['distance'] = '5' }
  zone['options']['button'] = {}
  zone['options']['button'] = { ['y'] = '180', ['x'] = '20' }





  zone['poknowledge'] = {}
  zone['poknowledge']['zone'] = {}
  
  
  zone['poknowledge']['zone']['gunthak'] = { ['name'] = 'Gulf of Gunthak', ['tooltip'] = '', ['locyxz'] = '-746.82 1216.73 -152.06' }
  zone['poknowledge']['zone']['paineel'] = { ['name'] = 'Toxula Forest',  ['tooltip'] = 'Paineel', ['locyxz'] = '-897.82 1227.09 -151.08' }
  zone['poknowledge']['zone']['overthere'] = { ['name'] = 'Overthere',  ['tooltip'] = 'Overthere / Ring of scale', ['locyxz'] = '-899.82 884.41 -151.07' }
  zone['poknowledge']['zone']['osggok'] = { ['name'] = 'Oggok',  ['tooltip'] = 'Ferrott / Dream', ['locyxz'] = '-897.31 443.77 -151.07' }
  zone['poknowledge']['zone']['nektulos'] = { ['name'] = 'Nektulos Forest',  ['tooltip'] = 'Neriak', ['locyxz'] = '-895.05 131.87 -151.07' }
  zone['poknowledge']['zone']['innothule'] = { ['name'] = 'Innothule Swamp',  ['tooltip'] = 'Grobb', ['locyxz'] = '-812.21 46.58 -151.06' }
  zone['poknowledge']['zone']['fob'] = { ['name'] = 'Field of Bone',  ['tooltip'] = 'Cabilis', ['locyxz'] = '-610.27 35.38 -151.08' }
  zone['poknowledge']['zone']['arena'] = { ['name'] = 'Arena',  ['tooltip'] = 'Arena', ['locyxz'] = '-451.92 142.16 -152.06' }
  zone['poknowledge']['zone']['steamfont'] = { ['name'] = 'Steamfont Mountains',  ['tooltip'] = 'Ak`Anon', ['locyxz'] = '-451.07 -75.26 -151.08' }
  zone['poknowledge']['zone']['wfreeport'] = { ['name'] = 'West Freeport',  ['tooltip'] = '', ['locyxz'] = '-449.24 -235.99 -151.07' }
  zone['poknowledge']['zone']['hookersandcoke'] = { ['name'] = 'Firiona Vie',  ['tooltip'] = '', ['locyxz'] = '-363.98 -322.06 -151.06' }
  zone['poknowledge']['zone']['PoT'] = { ['name'] = 'Plane of Tranquility',  ['tooltip'] = '', ['locyxz'] = '-147.01 -321.74 -151.07' }
  zone['poknowledge']['zone']['qeynos'] = { ['name'] = 'North Qeynos',  ['tooltip'] = '', ['locyxz'] = '147.95 -321.12 -151.05' }
  zone['poknowledge']['zone']['litterbox'] = { ['name'] = "Shadeweaver's Thicket",  ['tooltip'] = "Shar Vahl", ['locyxz'] = '364.17 -321.31 -151.08' }
  zone['poknowledge']['zone']['gdivide'] = { ['name'] = 'The Great Divide',  ['tooltip'] = '', ['locyxz'] = '448.37 -234.99 -151.07' }
  zone['poknowledge']['zone']['nexus'] = { ['name'] = 'The Nexus',  ['tooltip'] = '', ['locyxz'] = '449.05 -75.93 -151.07' }
  zone['poknowledge']['zone']['ebay'] = { ['name'] = 'The Bazaar',  ['tooltip'] = '', ['locyxz'] = '317.70 1433.26 -115.04' }
  zone['poknowledge']['zone']['lobby'] = { ['name'] = 'Lobby',  ['tooltip'] = '', ['locyxz'] = '-352.65 1400.80 -115.32' }
  zone['poknowledge']['zone']['slums'] = { ['name'] = 'Blightfire Moors',  ['tooltip'] = 'Crescent Reach', ['locyxz'] = '60.55 -145.93 -151.94' }
  zone['poknowledge']['zone']['bookmobile'] = { ['name'] = 'Library',  ['tooltip'] = '(elevator)', ['locyxz'] = '1.77 921.98 5.42' }
  zone['poknowledge']['zone']['snootyelves'] = { ['name'] = 'Greater Faydark',  ['tooltip'] = 'Felwithe', ['locyxz'] = '811.95 42.87 -150.65' }

  -- object switch
  zone['poknowledge']['zone']['erud'] = { ['name'] = 'Toxxulia Forest',  ['tooltip'] = 'Erudin City', ['door'] = 'POKERPORT500' }
  zone['poknowledge']['zone']['kelethin'] = { ['name'] = 'Greater Faydark',  ['tooltip'] = 'Kelethin', ['door'] = 'POKKELPORT500' }
  zone['poknowledge']['zone']['asslings'] = { ['name'] = 'Misty Thicket',  ['tooltip'] = 'Rivervale', ['door'] = 'POKRVPORT500' }
  zone['poknowledge']['zone']['froglegs'] = { ['name'] = 'Rathe Mountains',  ['tooltip'] = 'Gukta', ['door'] = 'OBJ_PORT_GUKTA' }
  zone['poknowledge']['zone']['bb'] = { ['name'] = 'Butcherblock',  ['tooltip'] = 'Kaladim', ['door'] = 'POKKALPORT500' }
  zone['poknowledge']['zone']['halas'] = { ['name'] = 'Everfrost',  ['tooltip'] = 'Halas', ['door'] = 'POKHALPORT500' }



  zone['poknowledge']['tradeskill'] = {}
  zone['poknowledge']['tradeskillorder'] = { 'forge', 'oven', 'kiln', 'pwheel', 'brew', 'fletch', 'loom', 'jc', 'fish', 'research', 'tforge', 'tkiln', 'tloom', 'tpwheel', 'tbrew', 'toven' }
  zone['poknowledge']['tradeskill']['forge'] = { ['name'] = 'Forge', ['tooltip'] = '', ['locyxz'] = '-351.46 762.04 -91.08' }
  zone['poknowledge']['tradeskill']['oven'] = { ['name'] = 'Oven', ['tooltip'] = '', ['locyxz'] = '-353.82 776.91 -91.07' }
  zone['poknowledge']['tradeskill']['kiln'] = { ['name'] = 'Kiln', ['tooltip'] = '', ['locyxz'] = '-344.45 801.02 -91.04' }
  zone['poknowledge']['tradeskill']['pwheel'] = { ['name'] = 'Pottery Wheel', ['tooltip'] = '', ['locyxz'] = '-281.36 774.70 -92.19' }
  zone['poknowledge']['tradeskill']['brew'] = { ['name'] = 'Brewing Barrel', ['tooltip'] = '', ['locyxz'] = '-314.86 970.70 -91.06' }
  zone['poknowledge']['tradeskill']['fletch'] = { ['name'] = 'Fletching Table', ['tooltip'] = '', ['locyxz'] = '-327 860.43 -91.08' }
  zone['poknowledge']['tradeskill']['loom'] = { ['name'] = 'Loom', ['tooltip'] = '', ['locyxz'] = '-338.86 927.77 -90.35' }
  zone['poknowledge']['tradeskill']['jc'] = { ['name'] = 'Jewelry Table', ['tooltip'] = '', ['locyxz'] = '-294.87 929.25 -90.63' }
  zone['poknowledge']['tradeskill']['fish'] = { ['name'] = 'Fly Making Table', ['tooltip'] = '', ['locyxz'] = '-325.69 850.76 -90.66' }
  zone['poknowledge']['tradeskill']['research'] = { ['name'] = 'Research', ['tooltip'] = '', ['locyxz'] = '-252.01 728.29 -90.65' }
  zone['poknowledge']['tradeskill']['tforge'] = { ['name'] = 'Tannin Forge', ['tooltip'] = 'Tanaan Forge', ['locyxz'] = '-421.18 551.28 -122.64' }
  zone['poknowledge']['tradeskill']['tkiln'] = { ['name'] = 'Tannin Kiln', ['tooltip'] = 'Tanaan Kiln', ['locyxz'] = '340.23 813.43 -90.61' }
  zone['poknowledge']['tradeskill']['tloom'] = { ['name'] = 'Tannin Loom', ['tooltip'] = 'Tanaan Loom', ['locyxz'] = '146.19 1461.11 -122.64' }
  zone['poknowledge']['tradeskill']['tpwheel'] = { ['name'] = 'Tannin Pottery Wheel', ['tooltip'] = 'Tanaan Pottery Wheel', ['locyxz'] = '358.31 1000.33 -90.65' }
  zone['poknowledge']['tradeskill']['tbrew'] = { ['name'] = 'Tannin Brewing Barrel', ['tooltip'] = 'Tanaan Brewing Barrel', ['locyxz'] = '83.20 261.78 -122.66' }
  zone['poknowledge']['tradeskill']['toven'] = { ['name'] = 'Tannin Oven', ['tooltip'] = 'Tanaan Oven', ['locyxz'] = '-81.47 261.63 -122.65' }



  zone['poknowledge']['npc'] = {}
  zone['poknowledge']['npcorder'] =  { 'dogle', 'caden', 'presence', 'expensivehooker' }
  zone['poknowledge']['npc']['dogle'] = { ['name'] = 'Dogle Pitt', ['tooltip'] = 'Small Banker' }
  zone['poknowledge']['npc']['caden'] = { ['name'] = 'Caden Zharik', ['tooltip'] = 'Parcels / General Supplies' }
  -- zone['poknowledge']['npc']['druzzil'] = { ['name'] = 'Herald of Druzzil Ro', ['tooltip'] = 'Time / Void porter' }
  zone['poknowledge']['npc']['presence'] = { ['name'] = 'a mysterious presence', ['tooltip'] = 'Overseer Coin Merchant' }
  zone['poknowledge']['npc']['expensivehooker'] = { ['name'] = 'Alerynril the Loyal', ['tooltip'] = 'Loyalist Coin Merchant' }
 






  zone['poeartha'] = {}   
  zone['poeartha']['zone'] = {}   
  zone['poeartha']['zone']['pot'] = { ['name'] = "Plane of Tranquility", ['locyxz'] = '257.80 -1165.05 73.38' }
  zone['poeartha']['zone']['poeb'] = { ['name'] = "Plane of Earth B", ['locyxz'] = '142.90 -1171.01 73.33' }




  zone['guildhalllrg_int'] = {}
  zone['guildhalllrg_int'] = { ['id'] = 1}
  
  zone['guildhalllrg_int']['zone'] = {}  
  zone['guildhalllrg_int']['zone']['neighborhood'] = { ['name'] = 'Neighborhood Exit', ['locyxz'] = '0.88 77.24 1.56' }  


  zone['guildhalllrg_int']['clickport'] = {}  
  --zone['guildhalllrg_int']['clickport']['halas2'] = { ['name'] = "Mounted Bear Head", ['desc'] = "" }
  --zone['guildhalllrg_int']['clickport']['halas3'] = { ['name'] = "Mounted Snake Head", ['desc'] = "" }
  --zone['guildhalllrg_int']['clickport']['halas4'] = { ['name'] = "Mounted Tiger Head", ['desc'] = "" }
  zone['guildhalllrg_int']['clickport']['everfrost'] = { ['name'] = "Claw Sconce Torch", ['desc'] = "Everfrost" }
  zone['guildhalllrg_int']['clickport']['permafrost'] = { ['name'] = "Frozen Barbarian Adventures", ['desc'] = "" }
  zone['guildhalllrg_int']['clickport']['steamfront1'] = { ['name'] = "Steamfronnt Lava Lamp", ['desc'] = "Steamfont Mountains" }
  zone['guildhalllrg_int']['clickport']['steamfront2'] = { ['name'] = "Fantastic Fuel Orb", ['desc'] = "Steamfont Mountains" }
  --zone['guildhalllrg_int']['clickport']['ak-anon2'] = { ['name'] = "AK'Anon Bubble Lamp", ['desc'] = "" }
  zone['guildhalllrg_int']['clickport']['sebilis'] = { ['name'] = "Froglok Head in a Jar", ['desc'] = "Old Sebilis" }
  zone['guildhalllrg_int']['clickport']['surefall'] = { ['name'] = "Brazier: The Everburning Ruby", ['desc'] = "Surfall Glade" }
  zone['guildhalllrg_int']['clickport']['highhold'] = { ['name'] = "Banner: The Knotted Serpent", ['desc'] = "High Keep" }
  zone['guildhalllrg_int']['clickport']['qeynos1'] = { ['name'] = "Banner: Traveler's Tapestry", ['desc'] = "South Qeynos" }
  zone['guildhalllrg_int']['clickport']['qeynos2'] = { ['name'] = "Coat of Arms: Qeynos", ['desc'] = "North Qeynos" }
  zone['guildhalllrg_int']['clickport']['furry'] = { ['name'] = "Oceanographer's Globe", ['desc'] = "Hate's Fury" }
  zone['guildhalllrg_int']['clickport']['nadox'] = { ['name'] = "Nadox Chandelier", ['desc'] = "Crypt of Nadox" }
  --zone['guildhalllrg_int']['clickport']['cabilisw'] = { ['name'] = "Brain in a Jar", ['desc'] = "" }
  --zone['guildhalllrg_int']['clickport']['trakanon'] = { ['name'] = "Statue: Iksaar Bust", ['desc'] = "" }
  --zone['guildhalllrg_int']['clickport']['grobb1'] = { ['name'] = "Darkone's Throne", ['desc'] = "" }
  --zone['guildhalllrg_int']['clickport']['grobb3'] = { ['name'] = "Troll's Butchery", ['desc'] = "" }
  --zone['guildhalllrg_int']['clickport']['swamp'] = { ['name'] = "Statue: Iksaar Head", ['desc'] = ""}
  --zone['guildhalllrg_int']['clickport']['abysmal'] = { ['name'] = "The Grozmok Stone", ['desc'] = "" }
  zone['guildhalllrg_int']['clickport']['frost'] = { ['name'] = "Froststone Crystal Echo", ['desc'] = "Froststone" }
  zone['guildhalllrg_int']['clickport']['kaladim'] = { ['name'] = "Underfoot Monument", ['desc'] = "North Kaladim" }
  zone['guildhalllrg_int']['clickport']['thuragdin'] = { ['name'] = "Dwarven Ice Statue", ['desc'] = "Thurgadin" }
  zone['guildhalllrg_int']['clickport']['brells'] = { ['name'] = "Temple Torchiere", ['desc'] = "Brells Temple" }
  zone['guildhalllrg_int']['clickport']['seru1'] = { ['name'] = "Banner: Sanctus Seru", ['desc'] = "Sanctus Seru" }
  zone['guildhalllrg_int']['clickport']['cc'] = { ['name'] = "Painting: Froststone Gate", ['desc'] = "Crystal Caverns" }
  --zone['guildhalllrg_int']['clickport']['brell'] = { ['name'] = "Statue of Brell", ['desc'] = "" }
  zone['guildhalllrg_int']['clickport']['sfelw'] = { ['name'] = "Felwithe Candelabra", ['desc'] = "Southern Felwithe" }
  zone['guildhalllrg_int']['clickport']['marr'] = { ['name'] = "Statue of Mithaniel Marr", ['desc'] = "Temple of Marr" }
  zone['guildhalllrg_int']['clickport']['skyshrine'] = { ['name'] = "Skyshrine Dragon Brazier", ['desc'] = "Cobalt Scar" }
  zone['guildhalllrg_int']['clickport']['unbral'] = { ['name'] = "Umbral Plains Scrying Bowl", ['desc'] = "Umbral Planes" }
  zone['guildhalllrg_int']['clickport']['shadowhaven'] = { ['name'] = "Shadow Haven Teleport Pad", ['desc'] = "Shadow Haven" }
  zone['guildhalllrg_int']['clickport']['laurions'] = { ['name'] = "Laurion's Door", ['desc'] = "Laurion Inn" }
  zone['guildhalllrg_int']['clickport']['lobby'] = { ['name'] = "Shabby Lobby Door", ['desc'] = "Door to the Lobby" }  
  zone['guildhalllrg_int']['clickport']['tbl'] = { ['name'] = "Stratos Fire Platform", ['desc'] = "Stratos" }
  zone['guildhalllrg_int']['clickport']['tbm'] = { ['name'] = "Cynosure of Health", ['desc'] = "Plane of Health" }
  zone['guildhalllrg_int']['clickport']['eok'] = { ['name'] = "Ancient Iksar Translocator Statue", ['desc'] = "Frontier Mountains" }
  zone['guildhalllrg_int']['clickport']['ros'] = { ['name'] = "Gorowyn Translocator Lantern", ['desc'] = "Skyfire Mountains" }
  zone['guildhalllrg_int']['clickport']['halas1'] = { ['name'] = "Placard: Halas", ['desc'] = "Halas" }
  zone['guildhalllrg_int']['clickport']['grim1'] = { ['name'] = "Painting: Grimling Forest Outpost", ['desc'] = "Grimling Forest" }
  zone['guildhalllrg_int']['clickport']['eldar1'] = { ['name'] = "Painting: Eldar Forest", ['desc'] = "Eldar Forest" }
  zone['guildhalllrg_int']['clickport']['neriak1'] = { ['name'] = "Painting: Toadstool Tavern", ['desc'] = "Neriak - Commons" }
  zone['guildhalllrg_int']['clickport']['neriak2'] = { ['name'] = "Painting: The Blind Fish", ['desc'] = "Neriak - Commons" }
  zone['guildhalllrg_int']['clickport']['neriak3'] = { ['name'] = "Painting: Maiden's Fancy", ['desc'] = "Neriak - Third Gate" }
  zone['guildhalllrg_int']['clickport']['neriak4'] = { ['name'] = "Painting: Slugs Tavern", ['desc'] = "Neriak - Foreign Quarter" }
  zone['guildhalllrg_int']['clickport']['grobb2'] = { ['name'] = "Sign: Gunthak's Beltch", ['desc'] = "Grob" }
  zone['guildhalllrg_int']['clickport']['cabilise'] = { ['name'] = "Plackard: Tink N Babble", ['desc'] = "East Cabilis" }
  zone['guildhalllrg_int']['clickport']['blackburrow'] = { ['name'] = "Banner: Blackburrow", ['desc'] = "Blackburrow" }
  zone['guildhalllrg_int']['clickport']['pom'] = { ['name'] = "Painting: Haunting Laughter", ['desc'] = "Stare into Madness" }
  zone['guildhalllrg_int']['clickport']['ak-anon1'] = { ['name'] = "Shelf of Gnomish Spirits", ['desc'] = "Ak'Anon" }
  zone['guildhalllrg_int']['clickport']['powar'] = { ['name'] = "Plane of War Spire", ['desc'] = "The Plane of War" }
  zone['guildhalllrg_int']['clickport']['drunder'] = { ['name'] = "Painting: Drunder, the Frotress of Zek", ['desc'] = "Drunder, the Frotress of Zek" }
  zone['guildhalllrg_int']['clickport']['stonebrunt'] = { ['name'] = "Painting: Stonebrunt Mountains", ['desc'] = "Stonebrunt Mountains" }
  zone['guildhalllrg_int']['clickport']['dulak'] = { ['name'] = "Painting: Dulak's Harbor", ['desc'] = "Dulak's Harbor" }
  zone['guildhalllrg_int']['clickport']['nrownie'] = { ['name'] = "Painting: Brownie Encampment", ['desc'] = "Lesser Faydark" }
  zone['guildhalllrg_int']['clickport']['tunare'] = { ['name'] = "Painting: Tunare's Tree", ['desc'] = "Tunare's Tree" }
  zone['guildhalllrg_int']['clickport']['nedaria'] = { ['name'] = "Painting: Nedaria's Landing", ['desc'] = "Nedaria's Landing" }
  zone['guildhalllrg_int']['clickport']['toxxulia'] = { ['name'] = "Painting: Toxxulia Forest", ['desc'] = "Toxxulia Forest" }
  zone['guildhalllrg_int']['clickport']['takish'] = { ['name'] = "Painting: Ruins of Takish-Hiz", ['desc'] = "Ruins of Takish-Hiz" }
  zone['guildhalllrg_int']['clickport']['takish'] = { ['founder'] = "Painting: The Founder", ['desc'] = "Surfall Glade" }
  zone['guildhalllrg_int']['clickport']['skyshrine'] = { ['name'] = "Skyshrine Claw Sconce", ['desc'] = "Skyshrine" }
  zone['guildhalllrg_int']['clickport']['oggok'] = { ['name'] = "Oggok Boulder Lounger", ['desc'] = "Oggok" }
  zone['guildhalllrg_int']['clickport']['ashengate'] = { ['name'] = "Seal of Ashengate", ['desc'] = "Ashengate, Reliquary of the Scale" }
  zone['guildhalllrg_int']['clickport']['moor'] = { ['name'] = "Hollowshade Moor Bonfire", ['desc'] = "Hollowshade Moor" }
  zone['guildhalllrg_int']['clickport']['brood'] = { ['name'] = "Draconic Shrine of the Brood", ['desc'] = "The Broodlands" }
  zone['guildhalllrg_int']['clickport']['veskar'] = { ['name'] = "Veskar Chandelier", ['desc'] = "Veskar" }
  zone['guildhalllrg_int']['clickport']['books'] = { ['name'] = "Bookshelf of Paineel", ['desc'] = "Paineel" }
  zone['guildhalllrg_int']['clickport']['rmcart'] = { ['name'] = "Rathe Mountain Cart", ['desc'] = "The Rathe Mountain" }
  zone['guildhalllrg_int']['clickport']['rmcart'] = { ['name'] = "Runnyeye Adventurer's Head", ['desc'] = "Liberated Citadel of Runnyeye" }
  zone['guildhalllrg_int']['clickport']['bed'] = { ['name'] = "Misty Thicket Halfling Bed", ['desc'] = "Misty Thicket" }
  zone['guildhalllrg_int']['clickport']['woodtorch'] = { ['name'] = "Torch of Kelthin", ['desc'] = "Greater Faydark" }
  zone['guildhalllrg_int']['clickport']['frogpond'] = { ['name'] = "Guktan Brazier", ['desc'] = "Innothule Swamp" }
  zone['guildhalllrg_int']['clickport']['mesa'] = { ['name'] = "Runed Dragon Totem", ['desc'] = "Goru`kar Mesa" }
  zone['guildhalllrg_int']['clickport']['aten'] = { ['name'] = "Statue of Aten Ha Ra", ['desc'] = "Vex Thal" }
  zone['guildhalllrg_int']['clickport']['gunthak'] = { ['name'] = "Gunthak Altar", ['desc'] = "The Gulf of Gunthak" }
  zone['guildhalllrg_int']['clickport']['spit'] = { ['name'] = "Ogrish Spit", ['desc'] = "The Feerrott" }
  zone['guildhalllrg_int']['clickport']['firiona'] = { ['name'] = "Champion of Tunare Statue", ['desc'] = "Firiona Vie" }
  zone['guildhalllrg_int']['clickport']['tosk'] = { ['name'] = "Statue of Toskirakk", ['desc'] = "Toskirakk" }
  zone['guildhalllrg_int']['clickport']['kitty'] = { ['name'] = "Banner of the Vah Shir Crest", ['desc'] = "Shadeweaver's Thicket" }
  zone['guildhalllrg_int']['clickport']['xorbb'] = { ['name'] = "Painting: Throne of Xorbb", ['desc'] = "Valley of King Xorbb" }
  zone['guildhalllrg_int']['clickport']['hammock'] = { ['name'] = "Islander Hammock", ['desc'] = "Ocean of Tears" }





  zone['erudnext'] = {}   
  zone['erudnext']['zone'] = {}   
  zone['erudnext']['zone']['tox'] = { ['name'] = "Toxxulia Forest", ['locyxz'] = '-1538.28 -186.72 -42.61' }
  zone['erudnext']['zone']['eurd'] = { ['name'] = "Eurd's Crossing", ['locyxz'] = '93.39 -353.30 25.36' }


  -- The Stonebrunt Mountains --------------------
  zone['stonebrunt'] = {}   
  zone['stonebrunt']['zone'] = {}   
  zone['stonebrunt']['zone']['warrens'] = { ['name'] = "The Warrens", ['locyxz'] = '-3734.93 2923.98 -34.35' }
  



-- Year of the Dark Paw anniversay tower
  zone['anniversarytower'] = {}
  zone['anniversarytower']['floor'] = {}
  zone['anniversarytower']['floororder'] = { '12', '11', '10', '9', '8', '7', '6', '5', '4', '3', '2', '1', }
  zone['anniversarytower']['floor']['1'] = { ['name'] = "[1] Oasis of Sand", ['locyxz'] = '39.02 21.88 34.85' }
  zone['anniversarytower']['floor']['2'] = { ['name'] = "[2] Oasis of Lava", ['locyxz'] = '-0.24 -50.05 83.17' }
  zone['anniversarytower']['floor']['3'] = { ['name'] = "[3] Oasis of Forests", ['locyxz'] = '-43.12 21.47 131.41' }
  zone['anniversarytower']['floor']['4'] = { ['name'] = "[4] Oasis of Frost", ['locyxz'] = '40.34 22.76 179.57' }
  zone['anniversarytower']['floor']['5'] = { ['name'] = "[5] Oasis of Sky", ['locyxz'] = '-0.85 -47.91 227.82' }
  zone['anniversarytower']['floor']['6'] = { ['name'] = "[6] Oasis of Steam", ['locyxz'] = '-36.57 18.89 275.17' }
  zone['anniversarytower']['floor']['7'] = { ['name'] = "[7] Oasis of the Jungle", ['locyxz'] = '35.51 20.14 323' }
  zone['anniversarytower']['floor']['8'] = { ['name'] = "[8] Oasis of Fire", ['locyxz'] = '-0.30 -45.49 371' }
  zone['anniversarytower']['floor']['9'] = { ['name'] = "[9] Oasis of Swamps", ['locyxz'] = '-39.88 20.00 420.00' }
  zone['anniversarytower']['floor']['10'] = { ['name'] = "[10] Oasis of Fear", ['locyxz'] = '36.34 20.84 468' }
  zone['anniversarytower']['floor']['11'] = { ['name'] = "[11] Oasis of the Void", ['locyxz'] = '-0.51 -45.59 516' }
  zone['anniversarytower']['floor']['12'] = { ['name'] = "[12] Oasis of Dragons", ['locyxz'] = '49.98 -1.84 637' }
  zone['anniversarytower']['npc'] = {}
  zone['anniversarytower']['npcorder'] =  { 'robot' }
  zone['anniversarytower']['npc']['robot'] = { ['name'] = 'a clockwork artificer', ['tooltip'] = 'Quests' }



-- Laurion's Song expansion doors
  zone['laurioninn'] = {}   
  zone['laurioninn']['zone'] = {}   
  zone['laurioninn']['zone']['4'] = { ['name'] = 'Unkempt Woods', ['locyxz'] = '-1007.63 -189.04 23.96' }
  zone['laurioninn']['zone']['6'] = { ['name'] = 'Timorous Falls', ['locyxz'] = '-1007.64 -149.08 23.96' }
  zone['laurioninn']['zone']['7'] = { ['name'] = "Pal'Lomen", ['locyxz'] = '-1018.63 -127.48 23.96' }
  zone['laurioninn']['zone']['9'] = { ['name'] = 'Moors of Nokk', ['locyxz'] = '-932.03 -129.13 23.96' }
  zone['laurioninn']['zone']['10'] = { ['name'] = 'Anknexfen Keep', ['locyxz'] = '-931.20 -176.35 23.96' }
  zone['laurioninn']['zone']['12'] = { ['name'] = 'PoM', ['locyxz'] = '-861.90 -162.43 23.96' }
  zone['laurioninn']['zone']['14'] = { ['name'] = 'Eldar Forest', ['locyxz'] = '-867.43 -92.28 23.96' }
  zone['laurioninn']['zone']['heroes'] = { ['name'] = "Heroe's Forge", ['locyxz'] = '-345 1038 4' }
  zone['laurioninn']['zone']['pot'] = { ['name'] = 'Plane of Tranquility Door', ['locyxz'] = '-350 -1294 -11' }

  zone['herosforge'] = {}
  zone['herosforge']['zone'] = {}
  zone['herosforge']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '599.27 -1361.80 327.65' }

  zone['ankexfen'] = {}
  zone['ankexfen']['zone'] = {}
  zone['ankexfen']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '-57.00 41.00 -8.84' }

  zone['pallomen'] = {}
  zone['pallomen']['zone'] = {}
  zone['pallomen']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '-1011.86 -773.33 -24.98' }

  zone['pallomen_raid'] = {}
  zone['pallomen_raid']['zone'] = {}
  zone['pallomen_raid']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '-1011.86 -773.33 -24.98' }

  zone['timorousfalls'] = {}
  zone['timorousfalls']['zone'] = {}
  zone['timorousfalls']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '-25.58 -26.71 -9.30' }

  zone['unkemptwoods'] = {}
  zone['unkemptwoods']['zone'] = {}
  zone['unkemptwoods']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '2530.00 -3410.00 -289.77' }

  zone['unkemptwoods_raid'] = {}
  zone['unkemptwoods_raid']['zone'] = {}
  zone['unkemptwoods_raid']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '2530.00 -3410.00 -289.77' }

  zone['moorsofnokk'] = {}
  zone['moorsofnokk']['zone'] = {}
  zone['moorsofnokk']['zone']['inn'] = { ['name'] = 'Inn', ['locyxz'] = '1748.00 750.00 -94.03' }
  
-- Latta Castellum group and raid event
  zone['katta'] = {}
  zone['katta']['zone'] = {}
  zone['katta']['zone']['anni'] = { ['name'] = 'Anniversary Events (Group and Raid)', ['locyxz'] = '-278.92 136.89 69.37' } 




  zone['potranquility'] = {}
  zone['potranquility']['zone'] = {}
  zone['potranquility']['zone']['pok'] = { ['name'] = 'PoK Book', ['door'] = 'POKTELE500' }
  zone['potranquility']['zone']['poe'] = { ['name'] = 'Plane of Earth', ['locyxz'] = '-1343.25 2212.39 -711.23' }
  zone['potranquility']['zone']['poti'] = { ['name'] = 'Plane of Time', ['locyxz'] = '-2231.12 1228.25 -900.36' }
  zone['potranquility']['zone']['poi'] = { ['name'] = 'Plane of Innovation', ['locyxz'] = '-1542.17 -13.16 -918.35' }
  zone['potranquility']['zone']['powa'] = { ['name'] = 'Plane of Water', ['locyxz'] = '-1180.97 989.61 -776.51' }
  zone['potranquility']['zone']['poj'] = { ['name'] = 'Plane of Justice', ['locyxz'] = '0.46 -614.83 -510.42' }
  zone['potranquility']['zone']['pow'] = { ['name'] = 'Plane of War', ['door'] = 'WARPORT500' }
  zone['potranquility']['zone']['pov'] = { ['name'] = 'Plane of Valor', ['locyxz'] = '-221.88 -1.62 -616.95' }
  zone['potranquility']['zone']['tro'] = { ['name'] = 'Tower of Solusek Ro', ['locyxz'] = '-201.20 23.26 -616.94' }
  zone['potranquility']['zone']['hoh'] = { ['name'] = 'Halls of Honor', ['locyxz'] = '-168.87 16.11 -613.65' }
  zone['potranquility']['zone']['potac'] = { ['name'] = 'Plane of Tactics', ['locyxz'] = '-158.95 -18.74 -613.00' }
  zone['potranquility']['zone']['poa'] = { ['name'] = 'Plane of Air', ['locyxz'] = '828.79 -686.86 -609.85' }
  zone['potranquility']['zone']['stratos'] = { ['name'] = 'Stratos', ['locyxz'] = '864.23 -835.79 -747.57' }
  zone['potranquility']['zone']['podi'] = { ['name'] = 'Plane of Disease', ['locyxz'] = '1704.62 -1399.31 -768.99' }
  zone['potranquility']['zone']['pode'] = { ['name'] = 'Plane of Decay', ['locyxz'] = '1897.87 -1106.16 -882.81' }
  zone['potranquility']['zone']['pof3'] = { ['name'] = 'Plane of Fear', ['locyxz'] = '2001.42 -696.25 -693.24' }
  zone['potranquility']['zone']['poh3'] = { ['name'] = 'Plane of Hate', ['locyxz'] = '1096.02 -1879.46 -905.14' }
  zone['potranquility']['zone']['potor'] = { ['name'] = 'Plane of Torment', ['locyxz'] = '709.57 -1657.96 -905.96' }
  zone['potranquility']['zone']['pohea'] = { ['name'] = 'Plane of Health', ['locyxz'] = '-344.48 -1422.28 -930.15' }
  zone['potranquility']['zone']['pon'] = { ['name'] = 'Plane of Nightmares', ['locyxz'] = '-195.22 -1279.96 -905.23' }
  zone['potranquility']['zone']['ls'] = { ['name'] = "Laurion's Song", ['door'] = 'OBJ_LAURIONINNDOOR' }
  zone['potranquility']['zone']['post'] = { ['name'] = 'Plane of Storms', ['locyxz'] = '-710.29 1160.38 -925.75' }
  zone['potranquility']['zone']['bot'] = { ['name'] = 'Bastion of Thunder', ['locyxz'] = '-691.11 1788.56 -923.6' }

  zone['potranquility']['npc'] = {}
  zone['potranquility']['npcorder'] =  { 'taisa' }
  zone['potranquility']['npc']['taisa'] = { ['name'] = 'Taisika Cloudfire', ['tooltip'] = 'Banker' }





  zone['rathemtn'] = {}
  zone['rathemtn']['zone'] = {}
  zone['rathemtn']['zone']['pok'] = { ['name'] = 'PoK Book', ['door'] = 'POKTELE500' }

  zone['mistythicket'] = {}
  zone['mistythicket']['zone'] = {}
  zone['mistythicket']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-365.55 -205.97 6.26' }

  zone['gfaydark'] = {}
  zone['gfaydark']['zone'] = {}
  zone['gfaydark']['zone']['pokk'] = { ['name'] = 'PoK Book (Kelethin)', ['locyxz'] = '-176.03 -750.18 1.53' }
  zone['gfaydark']['zone']['pokf'] = { ['name'] = 'PoK Book (Felwithe)', ['locyxz'] = '-2246.93 -1818.39 2.35' }
  zone['gfaydark']['zone']['felwithe'] = { ['name'] = 'Felwithe', ['locyxz'] = '-1976.93 -2597.97 25.77' }
  zone['gfaydark']['zone']['lfey'] = { ['name'] = 'Lesser Faydark', ['locyxz'] = '-2612.52 -1109.77 5.35' }
  zone['gfaydark']['zone']['bblock'] = { ['name'] = 'Butcherblock', ['locyxz'] = '-1644.16 2659.45 5.34' }
  zone['gfaydark']['zone']['crush'] = { ['name'] = 'Crushbone', ['locyxz'] = '2589.93 -52.58 21.17' }
  zone['gfaydark']['zone']['elev1'] = { ['name'] = 'Kelethin (elevator south)', ['locyxz'] = '54.55 -136.00 2.75' }


  zone['crushbone'] = {}
  zone['crushbone']['zone'] = {}
  zone['crushbone']['zone']['gfay'] = { ['name'] = 'Greater Faydark', ['locyxz'] = '-660.00 162.00 5.35' }




  zone['butcher'] = {}
  zone['butcher']['zone'] = {}
  zone['butcher']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '1749.33 -507.02 1.94' }
  zone['butcher']['zone']['cauldron'] = { ['name'] = "Dagnor's Cauldron", ['locyxz'] = '-2935.00 -337.00 5.37' }
  zone['butcher']['zone']['gfey'] = { ['name'] = 'Greater Faydark', ['locyxz'] = '-1307.45 -3056.82 5.38' }
  zone['butcher']['zone']['kaladim'] = { ['name'] = 'Kaladim', ['locyxz'] = '3119.04 -179.87 5.36' }
  zone['butcher']['npc'] = {}
  zone['butcher']['npcorder'] =  { 'fithop', 'tira' }
  zone['butcher']['npc']['fithop'] = { ['name'] = 'Translocator Fithop', ['tooltip'] = 'OOT Translocator' }
  zone['butcher']['npc']['tira'] = { ['name'] = 'Magus Tira', ['tooltip'] = 'LDON Magus' }

  zone['kaladima'] = {}
  zone['kaladima']['zone'] = {}
  zone['kaladima']['zone']['bb'] = { ['name'] = 'Butcherblock', ['locyxz'] = '-64.00 42.00 3.82' }
  zone['kaladima']['zone']['nkw'] = { ['name'] = 'North Kaladim (west)', ['locyxz'] = '414.89 329.95 -17.34' }
  zone['kaladima']['zone']['nke'] = { ['name'] = 'North Kaladim (east)', ['locyxz'] = '383.01 -261.59 3.81' }
  
  zone['kaladimb'] = {}
  zone['kaladimb']['zone'] = {}
  zone['kaladimb']['zone']['nkw'] = { ['name'] = 'South Kaladim (west)', ['locyxz'] = '417.60 337.85 -21.27' }
  zone['kaladimb']['zone']['nke'] = { ['name'] = 'South Kaladim (east)', ['locyxz'] = '405.69 -268.85 3.81' }

  zone['cauldron'] = {}
  zone['cauldron']['zone'] = {}
  zone['cauldron']['zone']['bb'] = { ['name'] = 'Butcherblock Mountains', ['locyxz'] = '2856.00 262.00 474.70' }
  
  
 
  zone['everfrost'] = {}
  zone['everfrost']['zone'] = {}
  zone['everfrost']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '2876.41 -75.43 -58.99' }
 
  zone['toxxulia'] = {}
  zone['toxxulia']['zone'] = {}
  zone['toxxulia']['zone']['poke'] = { ['name'] = 'PoK Book', ['locyxz'] = '1908.56 -1807.78 122.32' }
  zone['toxxulia']['zone']['pokp'] = { ['name'] = 'PoK Book (Paineel)', ['locyxz'] = '-1687.75 252.01 34.59' }
  zone['toxxulia']['zone']['erudin'] = { ['name'] = 'Erudin', ['locyxz'] = '2298.46 -933.40 45.40' }

  zone['nexus'] = {}
  zone['nexus']['zone'] = {}
  zone['nexus']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '45.24 472.97 -25.96' }

  zone['greatdivide'] = {}
  zone['greatdivide']['zone'] = {}
  zone['greatdivide']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '1.85 -1813.57 394.60' }

  zone['greatdividetwo'] = {}
  zone['greatdividetwo']['zone'] = {}
  zone['greatdividetwo']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-34.90 -1305.63 98.88' }

  zone['shadeweaver'] = {}
  zone['shadeweaver']['zone'] = {}
  zone['shadeweaver']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-3001.61 -2427.76 -213.16' }

  zone['shadeweavertwo'] = {}
  zone['shadeweavertwo']['zone'] = {}
  zone['shadeweavertwo']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-463.77 -1153.29 -200.19' }

  zone['qeynos2'] = {}
  zone['qeynos2']['zone'] = {}
  zone['qeynos2']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '193.37 484.57 4.91' }
   
  zone['firiona'] = {}
  zone['firiona']['zone'] = {}
  zone['firiona']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-455.00 4708.73 14.67' }
  zone['firiona']['zone']['dread'] = { ['name'] = 'Dreadlands', ['locyxz'] = '291.21 6023.23 -78.21' }


  zone['dreadlands'] = {}
  zone['dreadlands']['zone'] = {}
  zone['dreadlands']['zone']['dread'] = { ['name'] = 'Firiona Vie', ['locyxz'] = '291.00 -6102.00 140.00' }
  zone['dreadlands']['zone']['karnor'] = { ['name'] = "Karnor's Castle", ['locyxz'] = '497.69 -1941.02 27.81' }
  zone['dreadlands']['zone']['fm'] = { ['name'] = 'Frontier Mountains', ['locyxz'] = '2341.00 -3474.00 140.00' }



  
  zone['freeportwest'] = {}
  zone['freeportwest']['zone'] = {}
  zone['freeportwest']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-188.50 -168.21 -67.09' }

  zone['freeportwest']['tradeskill'] = {}
  zone['freeportwest']['tradeskillorder'] = { 'forge', 'oven', 'kiln', 'pwheel', 'brew', 'fletch', 'loom', 'jc', 'fish', 'research' }
  zone['freeportwest']['tradeskill']['forge'] = { ['name'] = 'Forge', ['tooltip'] = '', ['locyxz'] = '-185.36 -533.44 -86.40' }
  zone['freeportwest']['tradeskill']['oven'] = { ['name'] = 'Oven', ['tooltip'] = '', ['locyxz'] = '106.53 -473.43 -88.04' }
  zone['freeportwest']['tradeskill']['kiln'] = { ['name'] = 'Kiln', ['tooltip'] = '', ['locyxz'] = '156.82 -470.19 -87.20' }
  zone['freeportwest']['tradeskill']['pwheel'] = { ['name'] = 'Pottery Wheel', ['tooltip'] = '', ['locyxz'] = '217.82 -499.95 -88.01' }
  zone['freeportwest']['tradeskill']['brew'] = { ['name'] = 'Brewing Barrel', ['tooltip'] = '', ['locyxz'] = '104.17 -591.49 -87.03' }
  zone['freeportwest']['tradeskill']['fletch'] = { ['name'] = 'Fletching Table', ['tooltip'] = '', ['locyxz'] = '' }
  zone['freeportwest']['tradeskill']['loom'] = { ['name'] = 'Loom', ['tooltip'] = '', ['locyxz'] = '' }
  zone['freeportwest']['tradeskill']['jc'] = { ['name'] = 'Jewelry Table', ['tooltip'] = '', ['locyxz'] = '' }
  zone['freeportwest']['tradeskill']['fish'] = { ['name'] = 'Fly Making Table', ['tooltip'] = '', ['locyxz'] = '' }
  zone['freeportwest']['tradeskill']['research'] = { ['name'] = 'Research', ['tooltip'] = '', ['locyxz'] = '' }



















  zone['steamfontmts'] = {}
  zone['steamfontmts']['zone'] = {}
  zone['steamfontmts']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-1129.72 946.81 7.16' }

  zone['arena'] = {}
  zone['arena']['zone'] = {}
  zone['arena']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-1015.35 146.72 51.72' }
  
  zone['fieldofbone'] = {}
  zone['fieldofbone']['zone'] = {}
  zone['fieldofbone']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-2998.38 1843.60 13.54' }

  zone['innothuleb'] = {}
  zone['innothuleb']['zone'] = {}
  zone['innothuleb']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-435.81 -361.87 7.04' }

  zone['nektulos'] = {}
  zone['nektulos']['zone'] = {}
  zone['nektulos']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-802.45 -848.79 9.48' }
  
  zone['feerrott'] = {}
  zone['feerrott']['zone'] = {}
  zone['feerrott']['zone']['pok'] = { ['name'] = 'PoK Book', ['door'] = 'POKTELE500' }
  
  zone['feerrott2'] = {}
  zone['feerrott2']['zone'] = {}
  zone['feerrott2']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '1291.70 218.76 54.17' }

  zone['overthere'] = {}
  zone['overthere']['zone'] = {}
  zone['overthere']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '3134.32 1924.36 -48.21' }





  -- Ring of Scale: Veeshan's Peak----------------
  zone['veeshantwo'] = {}
  zone['veeshantwo']['zone'] = {}
  zone['veeshantwo']['zone']['skyfire'] = { ['name'] = 'Skyfire Mountains', ['locyxz'] = '1218.92 -468.75 673.44' }
  zone['veeshantwo']['npc'] = {}
  zone['veeshantwo']['npcorder'] =  { 'calcesa' }
  zone['veeshantwo']['npc']['calcesa'] = { ['name'] = 'Ingisitorma Calcesa', ['tooltip'] = 'Quests' }


  -- Ring of Scale: The Skyfire Mountains------------------------
  zone['skyfiretwo'] = {}
  zone['skyfiretwo']['zone'] = {}
  zone['skyfiretwo']['zone']['gorowyn'] = { ['name'] = 'Gorowyn', ['locyxz'] = '3124.75 -1942.66 -182.94' }
  zone['skyfiretwo']['zone']['vp'] = { ['name'] = "Veeshan's Peek", ['locyxz'] = '2825.16 2088.96 -181.21' }
  zone['skyfiretwo']['zone']['over'] = { ['name'] = 'The Overthere', ['locyxz'] = '-820.02 -2502.91 20.19' }
  zone['skyfiretwo']['npc'] = {}
  zone['skyfiretwo']['npcorder'] =  { 'jerok', 'maestra', 'sedilious', 'stormsinger' }
  zone['skyfiretwo']['npc']['jerok'] = { ['name'] = 'Praetor Jerok', ['tooltip'] = 'Gorowyn: Mercenary Quests' }
  zone['skyfiretwo']['npc']['maestra'] = { ['name'] = 'Praetor Maestra', ['tooltip'] = 'Gorowyn: Partisan Quest' }
  zone['skyfiretwo']['npc']['sedilious'] = { ['name'] = 'Captain Sedilious', ['tooltip'] = "Veeshan's Peek: Mercenary Quest" }
  zone['skyfiretwo']['npc']['stormsinger'] = { ['name'] = 'Gelidalin Stormsinger', ['tooltip'] = "Veeshan's Peek: Partisan Quests" }



  -- Ring of Scale: Gorrowyn ------------------------------------    
  zone['gorowyn'] = {}
  zone['gorowyn']['zone'] = {}
  zone['gorowyn']['zone']['skyfire'] = { ['name'] = 'Skyfire', ['locyxz'] = '112.33 52.31 -3.92' }
  zone['gorowyn']['npc'] = {}
  zone['gorowyn']['npcorder'] =  { 'sickly'}
  zone['gorowyn']['npc']['sickly'] = { ['name'] = 'a sickly chokidai', ['tooltip'] = 'Partisan Quest' }


  -- Ring of Scale: Overthere --------------------
  zone['overtheretwo'] = {}
  zone['overtheretwo']['zone'] = {}
  zone['overtheretwo']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '2101.00 582.00 5.88' }
  zone['overtheretwo']['zone']['skyfire'] = { ['name'] = 'Skyfire Mountains', ['locyxz'] = '24.00 2555.00 24.01' }
  zone['overtheretwo']['npc'] = {}
  zone['overtheretwo']['npcorder'] =  { 'ellidia', 'krama', 'crestra'}
  zone['overtheretwo']['npc']['crestra'] = { ['name'] = 'Crestra', ['tooltip'] = 'Crestra Earring Quest' }
  zone['overtheretwo']['npc']['ellidia'] = { ['name'] = 'Scout Ellidia', ['tooltip'] = 'Mercenary Quests' }
  zone['overtheretwo']['npc']['krama'] = { ['name'] = 'Krama Alaeus', ['tooltip'] = 'Partisan Quests' }






  zone['gunthak'] = {}
  zone['gunthak']['zone'] = {}
  zone['gunthak']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '1779.93 -1030.97 61.01' }
 
  zone['moors'] = {}
  zone['moors']['zone'] = {}
  zone['moors']['zone']['pok'] = { ['name'] = 'PoK Book', ['locyxz'] = '-1211.00 3341.00 -19.99' }
   

  zone['arxmentis'] = {}
  zone['arxmentis']['zone'] = {}
  zone['arxmentis']['zone']['down'] = { ['name'] = 'Click to go down', ['locyxz'] = '-5.98 9.94 4.45' }
  zone['arxmentis']['zone']['up'] = { ['name'] = 'Click to go up', ['locyxz'] = '112.00 4.00 -425.00' }
  



  -- Seeds of Destruction: Field of Bone ---------
  zone['oldfieldofbone'] = {}  
  zone['oldfieldofbone']['npc'] = {}
  zone['oldfieldofbone']['npcorder'] =  { 'jaled', 'phara', 'tale', 'gore', 'serv', 'trak' }
  zone['oldfieldofbone']['npc']['phara'] = { ['name'] = 'Phara Dar', ['tooltip'] = 'Quests' }
  zone['oldfieldofbone']['npc']['jaled'] = { ['name'] = 'Jaled`Dar', ['tooltip'] = 'Quests' }
  zone['oldfieldofbone']['npc']['tale'] = { ['name'] = 'Talendor', ['tooltip'] = 'Quests' }
  zone['oldfieldofbone']['npc']['gore'] = { ['name'] = 'Gorenaire', ['tooltip'] = 'Quests' }
  zone['oldfieldofbone']['npc']['serv'] = { ['name'] = 'Severilous', ['tooltip'] = 'Quests' }
  zone['oldfieldofbone']['npc']['trak'] = { ['name'] = 'Trakanon', ['tooltip'] = 'Quests' }
  zone['oldfieldofbone']['zone'] = {}
  zone['oldfieldofbone']['zone']['library'] = { ['name'] = 'Kaesora Library', ['locyxz'] = '-2218.79 28.33 -43.46' }
  zone['oldfieldofbone']['zone']['tower'] = { ['name'] = 'Kurns Tower', ['locyxz'] = '432.86 899.51 103.66' }
  zone['oldfieldofbone']['zone']['hatchery'] = { ['name'] = 'Hatchery Wing', ['locyxz'] = '-1919.25 -567.88 -43.05' }
  zone['oldfieldofbone']['zone']['void'] = { ['name'] = 'Void', ['locyxz'] = '1163.59 1698.37 -48.01' }





  -- Call of the Forsaken: Tower of Rot ----------
  zone['towerofrot'] = {}
  zone['towerofrot']['floor'] = {}
  zone['towerofrot']['floor']['main'] = { ['name'] = 'main floor', ['locyxz'] = '-19.30 -32.34 4.50' }
  zone['towerofrot']['floor']['1'] = { ['name'] = 'first floor', ['locyxz'] = '-20.79 -29.50 104.50' }
  zone['towerofrot']['floor']['2'] = { ['name'] = 'second floor', ['locyxz'] = '-22.12 -31.18 204.55' }
  zone['towerofrot']['floor']['3'] = { ['name'] = 'third floor', ['locyxz'] = '-20.10 -34.89 304.55' }
  zone['towerofrot']['floor']['4'] = { ['name'] = 'fourth floor', ['locyxz'] = '-19.71 -32.55 404.45' }
  zone['towerofrot']['floor']['5'] = { ['name'] = 'fifth (top) floor', ['locyxz'] = '-19.20 -31.27 504.50' }
  zone['towerofrot']['floor']['top'] = { ['name'] = 'fifth (top) floor', ['locyxz'] = '-19.20 -31.27 504.50' }
  zone['towerofrot']['floor']['-1'] = { ['name'] = 'sub 1', ['locyxz'] = '22.11 -31.96 -195.47' }
  zone['towerofrot']['floor']['-2'] = { ['name'] = 'sub 2', ['locyxz'] = '17.98 -29.07 -392.77' }
  zone['towerofrot']['floor']['bottom'] = { ['name'] = 'sub 3 (bottom) floor', ['locyxz'] = '18.55 -29.49 -495.47' }
  zone['towerofrot']['zone'] = {}
  zone['towerofrot']['zone']['exit'] = { ['name'] = 'Exit to WK', ['locyxz'] = '-34.11 146.80 3.80' }


  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  

  -- The Outer Brood: Hodstock Hills ------------------------------    
  zone['hodstock'] = {}
  zone['hodstock']['zone'] = {}
  zone['hodstock']['zone']['toe'] = { ['name'] = "Theater of Eternity", ['locyxz'] = '972.39 1701.96 463.94' }
  zone['hodstock']['zone']['efreeport'] = { ['name'] = 'East Freeport', ['locyxz'] = '-2444.18 -1592.26 -74.95' }
  zone['hodstock']['npc'] = {}
  zone['hodstock']['npcorder'] =  { 'karin', 'malachi', 'teiya', 'revlonproducts', 'veronica', 'osgood', 'emli', 'aunrae' }
  zone['hodstock']['npc']['malachi'] = { ['name'] = 'Sergeant Malachi', ['tooltip'] = 'Mercenary Quests' }
  zone['hodstock']['npc']['teiya'] = { ['name'] = 'Captain Teiya', ['tooltip'] = 'Partisan Quests' }
  zone['hodstock']['npc']['revlonproducts'] = { ['name'] = 'Revol Aleslay', ['tooltip'] = 'quest mob (camp)' }
  zone['hodstock']['npc']['veronica'] = { ['name'] = 'Veronica Dasknell', ['tooltip'] = 'quest mob (beach)' }
  zone['hodstock']['npc']['osgood'] = { ['name'] = 'Sergeant Osgood', ['tooltip'] = 'quest mob (beach)' }
  zone['hodstock']['npc']['emli'] = { ['name'] = 'Emli Widgetton', ['tooltip'] = 'quest mob (camp)' }
  zone['hodstock']['npc']['karin'] = { ['name'] = 'Karina Stalis', ['tooltip'] = 'Raid' }
  zone['hodstock']['npc']['aunrae'] = { ['name'] = 'Aunrae V`Len', ['tooltip'] = 'quest mob (tower)' }

  -- The Outer Brood: Theater of Eternity --------
  zone['toe'] = {}
  zone['toe']['zone'] = {}
  zone['toe']['zone']['cradle'] = { ['name'] = "Harbinger's Cradle", ['locyxz'] = '-440.19 2207.31 -12.21' }
  zone['toe']['zone']['aureate'] = { ['name'] = 'Aureate Covert', ['locyxz'] = '498.95 2295.04 75.30' }
  zone['toe']['zone']['hodstock'] = { ['name'] = 'Hodstock Hills ', ['locyxz'] = '28.56 -275.26 -7.89' }
  zone['toe']['npc'] = {}
  zone['toe']['npcorder'] =  { 'balino', 'wellalanon', 'mokolin', 'krithss', 'krithss', 'dexter' }
  zone['toe']['npc']['dexter'] = { ['name'] = 'Dexter Tibblesbit', ['tooltip'] = 'quest mob' }
  zone['toe']['npc']['krithss'] = { ['name'] = 'Krithss', ['tooltip'] = 'quest mob' }
  zone['toe']['npc']['wellalanon'] = { ['name'] = 'Wellalanon', ['tooltip'] = 'Mercenary Quests' }
  zone['toe']['npc']['mokolin'] = { ['name'] = 'Mokolin', ['tooltip'] = 'Partisan Quests' }
  zone['toe']['npc']['balino'] = { ['name'] = 'Alchemist Balino Frugrin', ['tooltip'] = 'Mission / Raid' }
  
  -- The Outer Brood: Aureate Covert -------------
  zone['aureatecovert'] = {}
  zone['aureatecovert']['zone'] = {}
  zone['aureatecovert']['zone']['spire'] = { ['name'] = 'The Guilded Spire', ['locyxz'] = '5.62 423.75 114.64' }
  zone['aureatecovert']['zone']['cradle'] = { ['name'] = 'The Harbingers Cradle', ['locyxz'] = '5.04 385.91 4.57' }
  zone['aureatecovert']['zone']['toe'] = { ['name'] = 'The Theater of Eternity', ['locyxz'] = '8.90 -1587.46 -177.73' }
  zone['aureatecovert']['npc'] = {}
  zone['aureatecovert']['npcorder'] =  { 'karkoni', 'lokta', 'rose', 'crog' }
  zone['aureatecovert']['npc']['karkoni'] = { ['name'] = 'Admiral Karkoni', ['tooltip'] = 'Raid' }
  zone['aureatecovert']['npc']['lokta'] = { ['name'] = 'Lokta Geroth', ['tooltip'] = 'Mission / Raid' }
  zone['aureatecovert']['npc']['crog'] = { ['name'] = 'Sergeant Crog', ['tooltip'] = 'Mercenary Quests' }
  zone['aureatecovert']['npc']['rose'] = { ['name'] = 'Researcher Rosinda Wrannstad', ['tooltip'] = 'Partisan Quests' }

  -- The Outer Brood: The Harbingers Cradle ------
  zone['harbingerscradle'] = {}  
  zone['harbingerscradle']['zone'] = {}
  zone['harbingerscradle']['zone']['theater'] = { ['name'] = 'Theater of Eternity', ['locyxz'] = '7.46 -157.26 22.66' }
  zone['harbingerscradle']['zone']['puissance'] = { ['name'] = 'Chamber of Puissance', ['locyxz'] = '-768.94 -285.64 -67.22' }
  zone['harbingerscradle']['zone']['aureate'] = { ['name'] = 'Aureate Covert', ['locyxz'] = '-549.89 704.28 -9.65' }
  zone['harbingerscradle']['npc'] = {}
  zone['harbingerscradle']['npcorder'] =  { 'scout', 'impha' }
  zone['harbingerscradle']['npc']['scout'] = { ['name'] = 'a norrathian scout', ['type'] = 'Partisan / Mercenary Quests' }
  zone['harbingerscradle']['npc']['impha'] = { ['name'] = 'Impha Quae', ['tooltip'] = 'Partisan Quests' }
  
  -- The Outer Brood: Chamber of Puissance -------
  zone['puissance'] = {}  
  zone['puissance']['zone'] = {}
  zone['puissance']['zone']['harb'] = { ['name'] = "Harbinger's Cradle", ['locyxz'] = '25.21 -29.42 -43.19'}
  zone['puissance']['npc'] = {}
  zone['puissance']['npcorder'] =  { 'penigan', 'vesk', 'sylen', 'drenesh', 'xanathan' }
  zone['puissance']['npc']['vesk'] = { ['name'] = 'Private Vesk', ['tooltip'] = 'Partisan Quests' }
  zone['puissance']['npc']['xanathan'] = { ['name'] = 'Xanathan Foxheart', ['tooltip'] = 'Mercenary Quests' }
  zone['puissance']['npc']['sylen'] = { ['name'] = 'Scout Leader Sylen', ['tooltip'] = 'Partisan Quests' }
  zone['puissance']['npc']['drenesh'] = { ['name'] = 'Taruun Guardian Drenesh', ['tooltip'] = 'Partisan Quests' }
  zone['puissance']['npc']['penigan'] = { ['name'] = 'Master Alchemist Penigan', ['tooltip'] = 'Mission / Raid' }
  zone['puissance']['floor'] = {}
  zone['puissance']['floororder'] = { 'main', '-1', '-2', '-3', '-4' }
  zone['puissance']['floor']['main'] = { ['name'] = 'main floor', ['locyxz'] = '-321.76 248.87 -201.87' }
  zone['puissance']['floor']['-1'] = { ['name'] = 'first floor down', ['locyxz'] = '1' }
  zone['puissance']['floor']['-2'] = { ['name'] = 'second floor down', ['locyxz'] = '1' }
  zone['puissance']['floor']['-3'] = { ['name'] = 'third floor down', ['locyxz'] = '1' }
  zone['puissance']['floor']['-4'] = { ['name'] = 'fourth floor down', ['locyxz'] = '1' }

  -- The Outer Brood: The Guilded Spire ----------
  zone['gildedspire'] = {}
  zone['gildedspire']['floor'] = {}
  zone['gildedspire']['floororder'] = { '5', '4', '3', '2', '1', 'lobby' }
  zone['gildedspire']['floor']['lobby'] = { ['name'] = 'Lobby (Ground)', ['locyxz'] = '808.26 -3.55 1.50' }
  zone['gildedspire']['floor']['1'] = { ['name'] = 'Floor 1', ['locyxz'] = '93.74 1.15 274.06' }
  zone['gildedspire']['floor']['2'] = { ['name'] = 'Floor 2', ['locyxz'] = '106.06 -3.18 542.73' }
  zone['gildedspire']['floor']['3'] = { ['name'] = 'Floor 3', ['locyxz'] = '356.45 0.96 848.52' }
  zone['gildedspire']['floor']['4'] = { ['name'] = 'Floor 4', ['locyxz'] = '641.56 -269.06 1154.57' }
  zone['gildedspire']['floor']['5'] = { ['name'] = 'Floor 5', ['locyxz'] = '553.59 434.13 1468.55' }
  zone['gildedspire']['zone'] = {}
  zone['gildedspire']['zone']['covert'] = { ['name'] = 'Aureate Covert', ['locyxz'] = '-50.58 3.60 1.50' }
  zone['gildedspire']['npc'] = {}
  zone['gildedspire']['npcorder'] =  { 'fipnoc', 'koredi', 'steward' }
  zone['gildedspire']['npc']['steward'] = { ['name'] = 'a wayward steward', ['tooltip'] = 'Mercenary Quests' }
  zone['gildedspire']['npc']['fipnoc'] = { ['name'] = 'Fipnoc Birribit', ['tooltip'] = 'Partisan Quests' }
  zone['gildedspire']['npc']['koredi'] = { ['name'] = 'Koredi Onalen', ['tooltip'] = 'Partisan Quests' }



  -- The Burning Lands: Stratos ------------------
  zone['stratos'] = {}  
  zone['stratos']['zone'] = {}
  zone['stratos']['zone']['pot'] = { ['name'] = 'Plane of Tranquilty', ['locyxz'] = '12.57 -3.18 2.98'}
  zone['stratos']['zone']['smoke'] = { ['name'] = 'Plane of Smoke', ['locyxz'] = '-857.09 1228.49 228.58'}
  zone['stratos']['zone']['esianti'] = { ['name'] = 'Esianti', ['locyxz'] = '-1103.84 -1.15 237.24'}
  zone['stratos']['npc'] = {}
  zone['stratos']['npcorder'] =  { 'wandering', 'soulsent', 'iron', 'dusky', 'rianar', 'blue', 'fairelwil', 'greatjade', 'sky', 'azure' }
  zone['stratos']['npc']['fairelwil'] = { ['name'] = 'Fairelwil Amsapi', ['tooltip'] = 'Vendor: Class Spells' }
  zone['stratos']['npc']['greatjade'] = { ['name'] = 'Sagacious Great Jade', ['tooltip'] = 'Vendor: Misc Merchant' }
  zone['stratos']['npc']['soulsent'] = { ['name'] = 'Grieving Soul Scent', ['tooltip'] = 'Mercenary Quest / Mission' }
  zone['stratos']['npc']['wandering'] = { ['name'] = 'Ashen Wandering Horizon', ['tooltip'] = 'Mercenary Quest' }
  zone['stratos']['npc']['iron'] = { ['name'] = 'Iron Lightning Spirit', ['tooltip'] = 'Mercenary Quest / Partisan' }
  zone['stratos']['npc']['dusky'] = { ['name'] = 'Dusky Iron Meditation', ['tooltip'] = 'Partisan Quest' }
  zone['stratos']['npc']['rianar'] = { ['name'] = 'Rianar Gadliun', ['tooltip'] = 'Partisan Quest' }
  zone['stratos']['npc']['blue'] = { ['name'] = 'Unraveling Cpmciousness Blue', ['tooltip'] = 'Raid' }
  zone['stratos']['npc']['sky'] = { ['name'] = 'Great Sky Ocean', ['tooltip'] = 'Mission / Quest: Empyr' }
  zone['stratos']['npc']['azure'] = { ['name'] = 'Masterful Azure Heavens', ['tooltip'] = 'Raid' }

  -- The Burning Lands: Stratos ------------------
  zone['trialsofsmoke'] = {}  
  zone['trialsofsmoke']['zone'] = {}
  zone['trialsofsmoke']['zone']['stratos'] = { ['name'] = 'Stratos', ['locyxz'] = '3.75 1.40 1.37'}
  zone['trialsofsmoke']['zone']['empyr'] = { ['name'] = 'Empyr', ['locyxz'] = '846.41 90.38 1.37'}
  zone['trialsofsmoke']['npc'] = {}
  zone['trialsofsmoke']['npcorder'] =  { 'dark', 'hope' }
  zone['trialsofsmoke']['npc']['dark'] = { ['name'] = 'Darkened Victorious Scholar', ['tooltip'] = 'Mercenary Quests' }
  zone['trialsofsmoke']['npc']['hope'] = { ['name'] = 'Emerald Hope of the Stars', ['tooltip'] = 'Mercenary Quests' }

  -- The Burning Lands: Empyr --------------------
  zone['empyr'] = {}  
  zone['empyr']['zone'] = {}
  zone['empyr']['zone']['smoke'] = { ['name'] = 'Plane of Smoke', ['locyxz'] = '1343.62 1324.68 -26.29'}
  zone['empyr']['zone']['aalishai'] = { ['name'] = 'Aalishai', ['locyxz'] = '132.70 -585.40 -43.33'}
  zone['empyr']['npc'] = {}
  zone['empyr']['npcorder'] =  { 'forest', 'stealing', 'blighted' }
  zone['empyr']['npc']['forest'] = { ['name'] = 'Charred Forest', ['tooltip'] = 'Mercenary Quests' }
  zone['empyr']['npc']['blighted'] = { ['name'] = 'Horizon Blighted Sage', ['tooltip'] = 'Partisan Quest / Mission' }
  zone['empyr']['npc']['stealing'] = { ['name'] = 'Star Stealing Sage', ['tooltip'] = 'Partisan Quest' }

  -- The Burning Lands: Aalishai -----------------
  zone['aalishai'] = {}  
  zone['aalishai']['zone'] = {}
  zone['aalishai']['zone']['empyr'] = { ['name'] = 'Empyr', ['locyxz'] = '1343.62 1324.68 -26.29'}
  zone['aalishai']['npc'] = {}
  zone['aalishai']['npcorder'] =  { 'everna', 'spear' }
  zone['aalishai']['npc']['everna'] = { ['name'] = 'Everna Delestrod', ['tooltip'] = 'Mercenary Quests' }
  zone['aalishai']['npc']['spear'] = { ['name'] = 'Spear Sundering Ivory', ['tooltip'] = 'Partisan Quest' }
  zone['aalishai']['npc']['master'] = { ['name'] = 'Obsidian Sundering Master', ['tooltip'] = 'Partisan Quest' }

  -- The Burning Lands: Esianti ------------------
  zone['esianti'] = {}  
  zone['esianti']['zone'] = {}
  zone['esianti']['zone']['stratos'] = { ['name'] = 'Stratos', ['locyxz'] = '-480.00 -345.00 -57.75'}
  zone['esianti']['zone']['mearatas'] = { ['name'] = 'Mearatas', ['locyxz'] = '83.76 -97.22 -8.58'}
  zone['esianti']['npc'] = {}
  zone['esianti']['npcorder'] =  { 'phibbit', 'blossom', 'master' }
  zone['esianti']['npc']['phibbit'] = { ['name'] = 'Phibbit', ['tooltip'] = 'Mercenary Quests' }
  zone['esianti']['npc']['blossom'] = { ['name'] = 'Joyous Blossom', ['tooltip'] = 'Partisan Quest' }
  zone['esianti']['npc']['master'] = { ['name'] = 'Obsidian Sundering Master', ['tooltip'] = 'Partisan Quest' }

  -- The Burning Lands: Mearatas -----------------
  zone['mearatas'] = {}  
  zone['mearatas']['zone'] = {}
  zone['mearatas']['zone']['esianti'] = { ['name'] = 'Esianti', ['locyxz'] = '693.40 269.54 4.43'}
  zone['mearatas']['npc'] = {}
  zone['mearatas']['npcorder'] =  { 'emli', 'flexing', 'yiaga' }
  zone['mearatas']['npc']['emli'] = { ['name'] = 'Emli Widgetton', ['tooltip'] = 'Mercenary Quests' }
  zone['mearatas']['npc']['flexing'] = { ['name'] = 'Flexing Devout Purpose', ['tooltip'] = 'Partisan Quest' }
  zone['mearatas']['npc']['yiaga'] = { ['name'] = 'Dreadblade Yiaga S`Lon', ['tooltip'] = 'Raid' }


  -- Guild Loby -----------------
  zone['guildlobby'] = {}  
  zone['guildlobby']['zone'] = {}
  zone['guildlobby']['zone']['bighall'] = { ['name'] = 'Neighborhood Guild Hall', ['door'] = '619.96 48.62 3.39'}
  zone['guildlobby']['zone']['oldhall'] = { ['name'] = 'Standard Guild Hall', ['locyxz'] = '620.66 -47.61 3.39'}
  zone['guildlobby']['zone']['pok'] = { ['name'] = 'Plane of Knowledge', ['door'] = 'OBJ_TRANS_ENTRY'}
  zone['guildlobby']['zone']['slums'] = { ['name'] = 'Neighborhoods', ['door'] = 'OBJ_IRONGATESWITCH'}
  zone['guildlobby']['npc'] = {}
  zone['guildlobby']['npcorder'] =  { 'magus' }
  zone['guildlobby']['npc']['magus'] = { ['name'] = 'Magus Alaria', ['tooltip'] = 'Port Beyotch' }







  -- The Broken Mirror: The Plane of Health ------
  zone['pohealth'] = {}  
  zone['pohealth']['zone'] = {}
  zone['pohealth']['zone']['dlife'] = { ['name'] = 'Demiplane of Life', ['locyxz'] = '2876.47 1447.01 -26.01'}
  zone['pohealth']['zone']['pot'] = { ['name'] = 'Plane of Tranquility', ['locyxz'] = '1530.09 9.57 107.52'}
  zone['pohealth']['npc'] = {}
  zone['pohealth']['npcorder'] =  { 'neelo', 'lashun', 'tarl' }
  zone['pohealth']['npc']['neelo'] = { ['name'] = 'Neelo Leadwins', ['tooltip'] = 'Quests' }
  zone['pohealth']['npc']['lashun'] = { ['name'] = 'Lashun Novashine', ['tooltip'] = 'Heroic Adventure' }
  zone['pohealth']['npc']['tarl'] = { ['name'] = 'Tarl Punox', ['tooltip'] = 'Heroic Adventure' }

  -- The Broken Mirror: Demiplane of Life ------
  zone['exalted'] = {}  
  zone['exalted']['zone'] = {}
  zone['exalted']['zone']['poh'] = { ['name'] = 'Plane of Health', ['locyxz'] = '38.52 -0.48 -39.53'}
  zone['exalted']['zone']['sul'] = { ['name'] = 'Crypt of Sul', ['locyxz'] = '176.94 -4.62 -0.17'}
  zone['exalted']['npc'] = {}
  zone['exalted']['npcorder'] =  { 'mayor', 'kerath'}
  zone['exalted']['npc']['mayor'] = { ['name'] = 'Mayor Salvador West', ['tooltip'] = 'Quests' }
  zone['exalted']['npc']['kerath'] = { ['name'] = 'Kerath Punox', ['tooltip'] = 'Heroic Adventure' }

  -- The Broken Mirror: Demiplane of Decay ------
  zone['exaltedb'] = {}  
  zone['exaltedb']['zone'] = {}
  zone['exaltedb']['zone']['sul'] = { ['name'] = 'Crypt of Sul', ['locyxz'] = '176.94 -4.62 -0.17'}
  zone['exaltedb']['zone']['cod'] = { ['name'] = 'Crypt of Decay', ['locyxz'] = '504.44 0.10 -22.77'}
  zone['exaltedb']['npc'] = {}
  zone['exaltedb']['npcorder'] =  { 'mayor', 'karth'}
  zone['exaltedb']['npc']['mayor'] = { ['name'] = 'Mayor Soltiman Wex', ['tooltip'] = 'Quests' }
  zone['exaltedb']['npc']['karth'] = { ['name'] = 'Karth Punox', ['tooltip'] = 'Heroic Adventure' }

  -- The Broken Mirror: Ruins of Lxanvom ------
  zone['codecayb'] = {}  
  zone['codecayb']['zone'] = {}
  zone['codecayb']['zone']['dod'] = { ['name'] = 'Demiplane of Decay', ['locyxz'] = '-102.94 -112.23 -91.66'}
  zone['codecayb']['npc'] = {}
  zone['codecayb']['npcorder'] =  { 'jerill' }
  zone['codecayb']['npc']['jerill'] = { ['name'] = 'Jerill the Enraged', ['tooltip'] = 'Quests' }

