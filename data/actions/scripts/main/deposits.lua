
local addXP = 1
local XPM = 1

function makeffect(cid)
doSendAnimatedText(getPlayerPosition(cid), "XP+++", math.random(0,255))
doSendAnimatedText(getPlayerPosition(cid), "XP++", math.random(0,255))
doSendAnimatedText(getPlayerPosition(cid), "XP+", math.random(0,255))
doSendAnimatedText(getPlayerPosition(cid), "XP+++++", math.random(0,255))
doSendAnimatedText(getPlayerPosition(cid), "XP+++", math.random(0,255))
doSendAnimatedText(getPlayerPosition(cid), "XP+++++", math.random(0,255))
doSendMagicEffect(getPlayerPosition(cid),  math.random(27,30))
end


---9966 actionid
---27001 AbDendriel
---27002 Carlin
---27003 Thais
--27004 Venore



function onUse(cid, item, frompos, item2, topos)
-- Ab dendriel
	if item.uid == 27001 then
	
		if getPlayerStorageValue(cid,27001) <= 0 then
			--if getPlayerFreeCap(cid) <= 1 then
			--doPlayerSendTextMessage(cid,22,"You need 1 cap or more to loot this!")
			--return TRUE
			--end
			doPlayerSendTextMessage(cid,22,"You visited Ab'dendriel!")
			--KEY = doPlayerAddItem(cid, 2088, 1)
			--doSetItemActionId(KEY, 2011)
			--doSetItemSpecialDescription(KEY, "(Key: 4009)")
			setPlayerStorageValue(cid,27001,1)
			if addXP == 1 then
			doPlayerAddExperience(cid, 10000*XPM)
			makeffect(cid)
			end
		else
		doPlayerSendTextMessage(cid,22,"You already visited this place.")
		end

	end
-----
-- Carlin
	if item.uid == 27002 then
		if getPlayerStorageValue(cid,27002) <= 0 then
			doPlayerSendTextMessage(cid,22,"You visited Carlin!")
			setPlayerStorageValue(cid,27002,1)
			if addXP == 1 then
			doPlayerAddExperience(cid, 10000*XPM)
			makeffect(cid)
			end

			else
			doPlayerSendTextMessage(cid,22,"You already visited this place.")
		end
	end
-----

-- Thais
if item.uid == 27003 then
	if getPlayerStorageValue(cid,27003) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Thais!")
		setPlayerStorageValue(cid,27003,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end

		else
		doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end
-----

-- Venore
if item.uid == 27004 then
	if getPlayerStorageValue(cid,27004) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Venore!")
		setPlayerStorageValue(cid,27004,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end
	else
	doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end
-----

-- Edron
if item.uid == 27005 then
	if getPlayerStorageValue(cid,27005) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Edron!")
		setPlayerStorageValue(cid,27005,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end
	else
	doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end
-----



-- Darashia
if item.uid == 27006 then
	if getPlayerStorageValue(cid,27006) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Darashia!")
		setPlayerStorageValue(cid,27006,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end
		else
		doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end
-----

-- Ankrahmun
if item.uid == 27007 then
	if getPlayerStorageValue(cid,27007) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Ankrahmun!")
		setPlayerStorageValue(cid,27007,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end
		else
		doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end


-- Port Hope
if item.uid == 27008 then
	if getPlayerStorageValue(cid,27008) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Port Hope!")
		setPlayerStorageValue(cid,27008,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end
		else
		doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end
-----


-- Kazordoon
if item.uid == 27009 then
	if getPlayerStorageValue(cid,27009) <= 0 then
		doPlayerSendTextMessage(cid,22,"You visited Kazordoon!")
		setPlayerStorageValue(cid,27009,1)
		if addXP == 1 then
		doPlayerAddExperience(cid, 10000*XPM)
		makeffect(cid)
		end
		else
		doPlayerSendTextMessage(cid,22,"You already visited this place.")
	end
end




end