dofile(getDataDir() .. 'global/greeting.lua')

local keywordHandler = KeywordHandler:new()
local npcHandler = NpcHandler:new(keywordHandler)
NpcSystem.parseParameters(npcHandler)



-- OTServ event handling functions start
function onCreatureAppear(cid)				npcHandler:onCreatureAppear(cid) end
function onCreatureDisappear(cid) 			npcHandler:onCreatureDisappear(cid) end
function onCreatureSay(cid, type, msg) 	npcHandler:onCreatureSay(cid, type, msg) end
function onThink() 						npcHandler:onThink() end


keywordHandler:addKeyword({'sell bow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy used bows."})
keywordHandler:addKeyword({'sell crossbow'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I don't buy used crossbows."})
keywordHandler:addKeyword({'job'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am nothing but a humble fletcher. I am selling bows, crossbows, and ammunition. Do you need any of these?"})
keywordHandler:addKeyword({'fletcher'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am nothing but a humble fletcher. I am selling bows, crossbows, and ammunition. Do you need any of these?"})
keywordHandler:addKeyword({'name'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am Edoch Ibn Ibrach."})
keywordHandler:addKeyword({'time'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "You surely can buy a watch somewhere on this bazaar."})
keywordHandler:addKeyword({'tibia'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "The world is vast and dangerous. Better prepare yourself with a bow before you travel out there."})
keywordHandler:addKeyword({'thais'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I was there once to learn about their ways. Needless to say I was horrified and returned to Darashia as soon as possible."})
keywordHandler:addKeyword({'sell'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'have'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'offer'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'good'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "I am selling bows, crossbows, and ammunition. Do you need anything?"})
keywordHandler:addKeyword({'ammo'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow, or bolts for a crossbow?"})
keywordHandler:addKeyword({'ammunition'}, StdModule.say, {npcHandler = npcHandler, onlyFocus = true, text = "Do you need arrows for a bow, or bolts for a crossbow?"})

local shopModule = ShopModule:new()
npcHandler:addModule(shopModule)


shopModule:addBuyableItem({'crossbow'}, 					Cfcrossbow, 500)
shopModule:addBuyableItem({'bow'}, 					Cfbow, 400)
shopModule:addBuyableItem({'arrow'}, 					Cfarrow, 2)
shopModule:addBuyableItem({'bolt'}, 					Cfbolt, 3)
shopModule:addBuyableItem({'bursts'}, 					Cfburstarrow, 300)
shopModule:addBuyableItem({'assassin star'}, 					5836, 500)


npcHandler:setCallback(CALLBACK_MESSAGE_DEFAULT, creatureSayCallback)
npcHandler:addModule(FocusModule:new())
