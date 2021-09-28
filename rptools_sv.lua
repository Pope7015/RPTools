-- RPCommands Discord Webhook
rpcommandswebhook = 'https://discord.com/api/webhooks/889317873317707796/tO3pLC49YZVa1seJiu2wonOdyFzH6PCa0CpiVmJJlZ3m72etH_i_xWlrjov_OOk6Adht' -- Change this webhook to where you want the RPCommands logging to be


---------------------------------------------


-- Antiswear
if Config.antiswear then
AddEventHandler('chatMessage', function(source, n, message)
      for k,n in pairs(Config.wordlist) do
        if string.match(message:lower(),n:lower()) then
        CancelEvent()
        if Config.kickplayer then
        DropPlayer(source, Config.kickmessage)
        end
      end
    end
end)
end

---------------------------------------------------------------------------------------------
-- Clear Chat Script
RegisterCommand(Config.commandName, function(source, args) 
    if IsPlayerAceAllowed(source, "chat.clear") then
        TriggerClientEvent("chat:clear", -1)
        Citizen.Wait(10)
        TriggerClientEvent('chatMessage', -1, Config.textMessage)
        TriggerClientEvent('chatMessage', -1, "^1 Chat has been cleared by ID: " .. source .. " Name: " .. GetPlayerName(source))
        Print("Chat has been cleared by ID: " .. source .. " Name: " .. GetPlayerName(source))
    else 
        TriggerClientEvent('chatMessage', -1, "[^3SYSTEM^0] Access Denied")
        print("A user with the ID tried to run the clearchat script without having proper perms ID: " .. source .. " Name: " .. GetPlayerName(source))
    end
end)

----------------------------------------------------------------------------------------------
-- Drag script
if Config.drag then
RegisterServerEvent("RPCore:drag")
AddEventHandler("RPCore:drag", function(Target)
	local Source = source
	TriggerClientEvent("RPCore:drag", Target, Source)
end)
end
------------------------------------------------------------------------
-- Server Uptime Convar
if Config.serverlistuptime then
Citizen.CreateThread(function()
	local uptimeMinute, uptimeHour, uptime = 0, 0, ''

	while true do
		Citizen.Wait(1000 * 60) -- every minute
		uptimeMinute = uptimeMinute + 1

		if uptimeMinute == 60 then
			uptimeMinute = 0
			uptimeHour = uptimeHour + 1
		end

		uptime = string.format("%02dh %02dm", uptimeHour, uptimeMinute)
		SetConvarServerInfo('Uptime', uptime)


		TriggerClientEvent('uptime:tick', -1, uptime)
		TriggerEvent('uptime:tick', uptime)
	end
end)
end
------------------------------------------------------------------------------
-- RPCommands script

-- Twitter Command
if Config.rpcommands then
if Config.twitter then
    RegisterCommand("twt", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            local steam = GetPlayerName(source)
            args = table.concat(args, ' ')
            TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^4Twitter | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end

if Config.rpcommands then
    if Config.radio then
        if IsPlayerAceAllowed(source, "radio.command") then
        RegisterCommand("radio", function(source, args, raw)
                if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.missingargs)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^4Twitter | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**TWITTER:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
        end
    end

    
    -- Dispatch Command
    if Config.rpcommands then
    if Config.dispatch then
    RegisterCommand("dispatch", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^3Dispatch | ".. GetPlayerName(source) .."", { 30, 144, 255 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DISPATCH:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end
    
    -- Darkweb Command
    if Config.rpcommands then
    if Config.darkweb then
    RegisterCommand("darkweb", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            local steam = GetPlayerName(source)
            args = table.concat(args, ' ')
            TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^6Dark Web ", { 33, 33, 38 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DARKWEB:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end
    
    -- News Command
    if Config.rpcommands then
    if Config.news then
    RegisterCommand("news", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            local steam = GetPlayerName(source)
            args = table.concat(args, ' ')
            TriggerClientEvent('chatMessage', -1, "^0" .. source .. " | ^2NEWS | ".. GetPlayerName(source) .."", { 194, 255, 51 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**NEWS:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end
    -- Do Command
    if Config.rpcommands then
    if Config.doo then
    RegisterCommand("do", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^9Do | ".. GetPlayerName(source) .."", { 51, 153, 255 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**DO:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end
    
    -- OOC Command
    if Config.rpcommands then
    if Config.ooc then
    RegisterCommand("ooc", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            local steam = GetPlayerName(source)
            args = table.concat(args, ' ')
            TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^3OOC | ".. GetPlayerName(source) .."", { 128, 128, 128 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**OOC:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end
    -- Me Command
    if Config.rpcommands then
    if Config.me then
    RegisterCommand("me", function(source, args, raw)
            if #args <= 0 then
            TriggerClientEvent('chatMessage', source, Config.missingargs)
            else
            local message = table.concat(args, " ")
            local steam = GetPlayerName(source)
            args = table.concat(args, ' ')
            TriggerClientEvent('chatMessage', -1, "Me | ".. GetPlayerName(source) .."", { 255, 0, 0 }, message)
            PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
        end
    end)
    end
end

    -- Me Command
    if Config.rpcommands then
        if Config.gme then
        RegisterCommand("gme", function(source, args, raw)
                if #args <= 0 then
                TriggerClientEvent('chatMessage', source, Config.missingargs)
                else
                local message = table.concat(args, " ")
                local steam = GetPlayerName(source)
                args = table.concat(args, ' ')
                TriggerClientEvent('chatMessage', -1, "^0" .. source ..  " | ^3 gMe | ".. GetPlayerName(source) .."", { 255, 0, 0 }, message)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = "**ME:** ".. message .."", avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
            end
        end)
        end
    end
    
    -- ShowID Command
    if Config.rpcommands then
    if Config.showid then
    RegisterCommand("showid", function(source, color, msg)
        cm = stringsplit(msg, " ")
            CancelEvent()
            if tablelength(cm) == 3 then
                local firstname = tostring(cm[2])
                local lastname = tostring(cm[3])
                local steam = GetPlayerName(source)
                TriggerClientEvent("RPCore:sendMessageShowID", -1, source, firstname, lastname)
                PerformHttpRequest(rpcommandswebhook, function(err, text, headers) end, 'POST', json.encode({username = steam, content = '**ShowID** | **First Name:** ' .. firstname .. ' **Last Name:** ' .. lastname .. '', avatar_url = DISCORD_IMAGE}), { ['Content-Type'] = 'application/json' })
                
            else
                TriggerClientEvent('chatMessage', source, "Use the following format:", {255, 0, 0}, "/showid [First Name] [Last Name]")
            end
        end)
    end
end
    
    
      
    function stringsplit(inputstr, sep)
        if sep == nil then
            sep = "%s"
        end
        local t={} ; i=1
        for str in string.gmatch(inputstr, "([^"..sep.."]+)") do
            t[i] = str
            i = i + 1
        end
        return t
    end
    
    
    
    function tablelength(T)
        local count = 0
        for _ in pairs(T) do count = count + 1 end
        return count
    end


------------------------------------------------------------------------------
-- Delallveh Script --
if Config.delallveh then
RegisterCommand(Config.commandname, function(source, args, rawCommand) 
	TriggerClientEvent("RPCore:delallveh", -1) 
end, Config.restrictcommand)
end
-------------------------------------------------







versionChecker = false -- Set to false to disable version checker


-- Don't touch
resourcename = "RPTools"
version = "1.0.4"
rawVersionLink = "https://raw.githubusercontent.com/Swqppingg/RPCore/main/version.txt"

-- Check for version updates.
if versionChecker then
print(branding)
PerformHttpRequest(rawVersionLink, function(errorCode, result, headers)
    if (string.find(tostring(result), version) == nil) then
        print("\n\r[".. GetCurrentResourceName() .."] ^1WARNING: Your version of ".. resourcename .." is not up to date. Please make sure to update whenever possible.\n\r")
    else
        print("\n\r[".. GetCurrentResourceName() .."] ^2You are running the latest version of ".. resourcename ..".\n\r")
    end
end, "GET", "", "")
end