dofile(getDataDir() .. 'global/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)

-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)

shopModule:addSellableItem({'two handed sword'}, 					Cftwohandedsword, 450)
shopModule:addSellableItem({'battle axe'}, 					Cfbattleaxe, 80)
shopModule:addSellableItem({'dagger'}, 					Cfdagger, 2)
shopModule:addSellableItem({'hand axe'}, 					Cfhandaxe, 4)
shopModule:addSellableItem({'halberd'}, 					Cfhalberd, 400)
shopModule:addSellableItem({'spike sword'}, 					Cfspikesword, 240)
shopModule:addSellableItem({'rapier'}, 					Cfrapier, 5)
shopModule:addSellableItem({'sabre'}, 					Cfsabre, 12)
shopModule:addSellableItem({'spear'}, 					Cfspear, 3)
shopModule:addSellableItem({'morning star'}, 					Cfmorningstar, 90)
shopModule:addSellableItem({'short sword'}, 					Cfshortsword, 10)
shopModule:addSellableItem({'battle hammer'}, 					Cfbattlehammer, 120)
shopModule:addSellableItem({'clerical mace'}, 					Cfclericalmace, 170)
shopModule:addSellableItem({'barbarian axe'}, 					Cfbarbarianaxe, 185)
shopModule:addSellableItem({'leather armor'}, 					Cfleatherarmor, 12)
shopModule:addSellableItem({'chain armor'}, 					Cfchainarmor, 70)
shopModule:addSellableItem({'brass armor'}, 					Cfbrassarmor, 150)
shopModule:addSellableItem({'plate armor'}, 					Cfplatearmor, 400)
shopModule:addSellableItem({'chain legs'}, 					Cfchainlegs, 25)
shopModule:addSellableItem({'leather helmet'}, 					Cfleatherhelmet, 4)
shopModule:addSellableItem({'iron helmet'}, 					Cfironhelmet, 150)
shopModule:addSellableItem({'chain helmet'}, 					Cfchainhelmet, 17)
shopModule:addSellableItem({'steel helmet'}, 					Cfsteelhelmet, 190)
shopModule:addSellableItem({'wooden shield'}, 					Cfwoodenshield, 5)
shopModule:addSellableItem({'battle shield'}, 					Cfbattleshield, 95)
shopModule:addSellableItem({'steel shield'}, 					Cfsteelshield, 80)
shopModule:addSellableItem({'viking shield'}, 					Cfvikingshield, 85)
shopModule:addSellableItem({'sword'}, 					Cfsword, 25)
shopModule:addSellableItem({'mace'}, 					Cfmace, 30)
shopModule:addSellableItem({'axe'}, 					Cfaxe, 7)
shopModule:addSellableItem({'club'}, 					Cfclub, 1)

shopModule:addBuyableItem({'dagger'}, 					Cfdagger, 5)
shopModule:addBuyableItem({'hand axe'}, 					Cfhandaxe, 8)
shopModule:addBuyableItem({'spear'}, 					Cfspear, 10)
shopModule:addBuyableItem({'rapier'}, 					Cfrapier, 15)
shopModule:addBuyableItem({'barbarian axe'}, 					Cfbarbarianaxe, 590)
shopModule:addBuyableItem({'sabre'}, 					Cfsabre, 35)
shopModule:addBuyableItem({'clerical mace'}, 					Cfclericalmace, 540)
shopModule:addBuyableItem({'mace'}, 					Cfmace, 90)
shopModule:addBuyableItem({'battle hammer'}, 					Cfbattlehammer, 350)
shopModule:addBuyableItem({'crossbow'}, 					Cfcrossbow, 500)
shopModule:addBuyableItem({'bow'}, 					Cfbow, 400)
shopModule:addBuyableItem({'arrow'}, 					Cfarrow, 2)
shopModule:addBuyableItem({'bolt'}, 					Cfbolt, 3)
shopModule:addBuyableItem({'throwing star'}, 					Cfthrowingstar, 50)
shopModule:addBuyableItem({'chain armor'}, 					Cfchainarmor, 200)
shopModule:addBuyableItem({'brass armor'}, 					Cfbrassarmor, 450)
shopModule:addBuyableItem({'leather armor'}, 					Cfleatherarmor, 35)
shopModule:addBuyableItem({'chain helmet'}, 					Cfchainhelmet, 52)
shopModule:addBuyableItem({'leather helmet'}, 					Cfleatherhelmet, 12)
shopModule:addBuyableItem({'steel shield'}, 					Cfsteelshield, 240)
shopModule:addBuyableItem({'wooden shield'}, 					Cfwoodenshield, 15)
shopModule:addBuyableItem({'viking shield'}, 					Cfvikingshield, 260)
shopModule:addBuyableItem({'chain legs'}, 					Cfchainlegs, 80)
shopModule:addBuyableItem({'sword'}, 					Cfsword, 85)
shopModule:addBuyableItem({'axe'}, 					Cfaxe, 20)
shopModule:addBuyableItem({'bursts'}, 					Cfburstarrow, 300)
shopModule:addBuyableItem({'assassin star'}, 					5836, 500)



keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My name is Willard."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am the blacksmith of castle Bloodrock."})
keywordHandler:addKeyword({'king'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hail to the King! He's our benevolent protector."})
keywordHandler:addKeyword({'tibianus'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Hail to the King! He's our benevolent protector."})
keywordHandler:addKeyword({'army'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I supply them with all they need."})
keywordHandler:addKeyword({'ferumbras'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I would be honored if it's one of my blades that one day delivers him his punishment."})
keywordHandler:addKeyword({'excalibug'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Adventurers search for this blade all over the world. Even here."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "A fine city, but I love the peace of Edron more."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "It's my dream that one day the whole world will profit from the Thaian governance."})
keywordHandler:addKeyword({'carlin'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "If the king sees the time is right, he will certainly start a campaign to reclaim what belongs to Thais."})
keywordHandler:addKeyword({'edron'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Edron is a fine city to live in."})
keywordHandler:addKeyword({'new'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rumors are too sinister things that a true warrior would care for them."})
keywordHandler:addKeyword({'rumo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Rumors are too sinister things that a true warrior would care for them."})
keywordHandler:addKeyword({'buy'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armors, helmets, and shields."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armors, helmets, and shields."})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "What do you need? I sell weapons, armors, helmets, and shields."})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "My offers are weapons, ammunition, armors, helmets, legs, and shields."})
keywordHandler:addKeyword({'weapon'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have hand axes, axes, barbarian axes, spears, maces, clerical maces, battle hammers, swords, rapiers, daggers, sabres, bows, and crossbows. What's your choice?"})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I have arrows for bows and bolts for crossbows. What do you want?"})
keywordHandler:addKeyword({'helmet'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather helmets and chain helmets. What do you want?"})
keywordHandler:addKeyword({'armor'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling leather, chain, and brass armor. What do you need?"})
keywordHandler:addKeyword({'shield'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling wooden shields, steel shields, and viking shields. What do you want?"})
keywordHandler:addKeyword({'trousers'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})
keywordHandler:addKeyword({'legs'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling chain legs. Do you want to buy any?"})

npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())