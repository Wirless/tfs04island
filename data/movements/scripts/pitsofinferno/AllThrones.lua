function onStepIn(cid, item, pos)
    if item.uid == 10274 then
        if getPlayerStorageValue(cid,10274) == -1 then
            setPlayerStorageValue(cid,10274,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Verminor�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Verminor�s throne and absorbed some of his spirit.", 16)
        else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Veminor�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Veminor�s spirit.", 16)
        end
    elseif item.uid == 10275 then
        if getPlayerStorageValue(cid,10275) == -1 then
            setPlayerStorageValue(cid,10275,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Infernatil�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Infernatil�s throne and absorbed some of his spirit.", 16)
        else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Infernatil�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Infernatil�s spirit.", 16)
        end
    elseif item.uid == 10276 then
        if getPlayerStorageValue(cid,10276) == -1 then
            setPlayerStorageValue(cid,10276,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Tafariel�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Tafariel�s throne and absorbed some of his spirit.", 16)
        else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Tafariel�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Tafariel�s spirit.", 16)
        end
    elseif item.uid == 10277 then
        if getPlayerStorageValue(cid,10277) == -1 then
            setPlayerStorageValue(cid,10277,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Apocalypse�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Apocalypse�s throne and absorbed some of his spirit.", 16)
		else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Apocalypse�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Apocalypse�s spirit.", 16)
        end
    elseif item.uid == 10278 then
        if getPlayerStorageValue(cid,10278) == -1 then
            setPlayerStorageValue(cid,10278,1)
           --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Pumin�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Pumin�s throne and absorbed some of his spirit.", 16)
		else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Pumin�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Pumin�s spirit.", 16)
        end
    elseif item.uid == 10279 then
        if getPlayerStorageValue(cid,10279) == -1 then
            setPlayerStorageValue(cid,10279,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Bazir�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Bazir�s throne and absorbed some of his spirit.", 16)
		else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Bazir�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Bazir�s spirit.", 16)
        end
    elseif item.uid == 10280 then
        if getPlayerStorageValue(cid,10280) == -1 then
            setPlayerStorageValue(cid,10280,1)
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have touched Ashfalor�s throne and absorbed some of his spirit.')
			doPlayerSay(cid, "You have touched Ashfalor�s throne and absorbed some of his spirit.", 16)
	   else
            --doPlayerSendTextMessage(cid,MESSAGE_EVENT_ADVANCE,'You have already absorbed some of Ashfalor�s spirit.')
			doPlayerSay(cid, "You have already absorbed some of Ashfalor�s spirit.", 16)
        end
    end
    return 1
end