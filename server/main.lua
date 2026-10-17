RegisterNetEvent('Arg-Microfono:server:setMuteState', function(isMuted)
    local src = source
    MumbleSetPlayerMuted(src, isMuted)
    local playerState = Player(src).state
    if playerState then
        playerState:set('isMicMuted', isMuted, true)
    end
end)

AddEventHandler('playerDropped', function()
    local src = source
    MumbleSetPlayerMuted(src, false)
end)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    local players = GetPlayers()
    for _, playerId in ipairs(players) do
        MumbleSetPlayerMuted(tonumber(playerId), false)
    end
end)

AddEventHandler('onResourceStart', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end

    local version = '1.0.0'
    local script = 'Arg-Microfono'
    local date = '17/10/2026'
    local crew = 'FiveM AR'
    local author = 'Argento'

    local function centerText(text)
        local consoleWidth = 80  
        local padding = math.floor((consoleWidth - #text) / 2)  
        return string.rep(' ', padding) .. text  
    end

    print(centerText('^5/////////////////////////////////////////////^7'))
    print(centerText('^5/////////////////////////////////////////////^7'))
    print(centerText('^7  ////////////////^3'..script..'^7////////////////'))
    print(centerText('^7  ///////////////^3Versión: ' .. version .. '^7////////////////'))
    print(centerText('^7 //////////^3Creador: '..author..'/'..crew..'^7//////////'))
    print(centerText('^7 ///////////////^3Fecha: ' .. date .. '^7/////////////'))
    print(centerText('^5/////////////////////////////////////////////^7'))
    print(centerText('^5/////////////////////////////////////////////^7'))
end)
