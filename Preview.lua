local AUTO_UPDATE = true
local VERSION = 1 -- This is intended to be a constant value meaning it shouldn't be changed
--[ END OF CONSTANTS ]--

if AUTO_UPDATE then
    local server_version = tonumber(GetWebResult("raw.github.com", "/iAmPain/Bot-of-Legends/master/Revision/Preview.version")) -- I have a file on my github which just shows the newest version, what I'm doing here is downloading it and comparing with the constant value above and if there is a newer version then go through the update process
    if server_version > VERSION then -- compare
        PrintChat("Script is outdated. Updating to version: " .. server_version .. "...")
        DownloadFile("https://raw.github.com/Jo7j/BoL/master/Preview.lua", SCRIPT_PATH .. "Preview.lua", function() -- Download the new script (we're literally overwriting the current one)
        	PrintChat("Script updated. Please reload (F9).")
        end)
    end
    if server_version > VERSION then return end -- Quit out the script as it will cause issues
end