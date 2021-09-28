Config = {}
-- Edit this config for your server
-- Scripts (Set to false to disable) --
Config.deleteveh = true -- Delete vehicle command (/dv)
Config.antiswear = true -- Kicks a player when sending specific messages (You can change these messages below)
Config.rpcommands = true -- /twt, /dispatch, /darkweb, /news, /do, /ooc, /me, /show id commands with discord logging
Config.handsup = true -- Press x to put your hands up
Config.watermark = true -- Watermark for your server with customizable text
Config.crouch = true -- Pressing ctrl makes you crouch
Config.tazereffect = true -- Gives you an effect when you get tazed
Config.nogrip = false -- When jumping and running, there is an 90% chance of falling (Customizable)
Config.antiaircontrol = true -- Disable air control with vehicles
Config.pvp = true -- Enable pvp
Config.afkkick = false -- Kick players for being AFK
Config.delallveh = true -- Delete all vehicles on the map
Config.neverwanted = true -- Disable wanted level and emergency services


-- ANTI SWEAR --
Config.kickplayer = true -- Kick the player if they say a word listed below?
Config.kickmessage = 'You have been banned for saying a blacklisted work - relog for more information.' -- Kick message
Config.wordlist = {
    "nigger",
    "predatornetwork",
    "faggot",
    "fag",
    "gay",
    "Floyd",
    "nig"
}


-- Clear Chat Command
commandName = "cc",
-- This is the command that you will type into chat to execute the script.
textMessage = "ARP Chat has been cleared by a staff member."
-- This is the message that shows when chat is cleared.
-- Server Name
Config.servername = "~b~Atlantic ~w~Roleplay" -- Watermark text
-- The x and y offset (starting at the top left corner) --
Config.offsetX = 0.005
Config.offsetY = 0.001
Config.alpha = 255 -- Text transparency
Config.scale = 0.5 -- Text scale, NOTE: Number needs to be a float (so instead of 1 do 1.0)
Config.font = 4 -- Text Font, 0 - 5 possible
-- RPCOMMANDS --
-- Note: These commands will not work if rpcommands is set to false.
-- Enable or disable commands
-- Set to false to disable
Config.twitter = true -- /twt command?
Config.dispatch = true -- /dispatch command?
Config.darkweb = true -- /darkweb command?
Config.gme = true -- /Global Me command?
Config.news = true -- /news command?
Config.doo = true-- /do command?
Config.ooc = true -- /ooc command?
Config.me = false -- /me command?
Config.showid = true -- /showid command?
Config.missingargs = '^1Please provide a message.' -- Send this message when a player didn't provide a message
--Change the server.lua webhook for Discord logging.



-- DELETE ALL VEHICLES COMMAND --
Config.delay = 15 -- Delay before actually deleting all vehicles in seconds
Config.delaymessage = "^1Atlantic RP^0: ^7All unoccupied vehicles will be deleted in ".. Config.delay .. " seconds" -- Message before deleting all vehicles
Config.deletemessage = "^1Atlantic RP^0: ^7All unoccupied vehicles have been deleted by a staff member to reduce the amount of server lag and texture loss."
Config.commandname = "massdv" -- This is the command that you will type into chat to execute the script.
Config.restrictcommand = true
-- Setting this to false will allow anyone in the server to use the command. 
-- If you set it to true you will need to add a ace perm to allow people to use it.
-- Such as add_ace [GROUP] command.[commandName]
}
