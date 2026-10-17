local isMicActive = false
local lastToggle = 0

local function GetPlayerDisplayName()
    if GetResourceState('qbx_core') == 'started' then
        local success, player = pcall(function()
            return exports.qbx_core:GetPlayerData()
        end)
        if success and player and player.charinfo then
            local fn = player.charinfo.firstname or ''
            local ln = player.charinfo.lastname or ''
            if fn ~= '' or ln ~= '' then
                return (fn .. ' ' .. ln):gsub('^%s*(.-)%s*$', '%1')
            end
        end
    end

    if GetResourceState('qb-core') == 'started' then
        local success, player = pcall(function()
            local QBCore = exports['qb-core']:GetCoreObject()
            return QBCore.Functions.GetPlayerData()
        end)
        if success and player and player.charinfo then
            local fn = player.charinfo.firstname or ''
            local ln = player.charinfo.lastname or ''
            if fn ~= '' or ln ~= '' then
                return (fn .. ' ' .. ln):gsub('^%s*(.-)%s*$', '%1')
            end
        end
    end

    if GetResourceState('es_extended') == 'started' then
        local success, data = pcall(function()
            local ESX = exports['es_extended']:getSharedObject()
            return ESX.GetPlayerData()
        end)
        if success and data then
            if data.firstName and data.lastName and data.firstName ~= '' then
                return data.firstName .. ' ' .. data.lastName
            elseif data.name and data.name ~= '' then
                return data.name
            end
        end
    end

    return GetPlayerName(PlayerId())
end

local function ToggleMic()
    local now = GetGameTimer()
    if (now - lastToggle) < 250 then return end
    lastToggle = now

    isMicActive = not isMicActive

    SendNUIMessage({
        action = 'toggle',
        active = isMicActive,
        playerName = GetPlayerDisplayName()
    })

    if isMicActive then
        CreateThread(function()
            while isMicActive do
                SetControlNormal(0, 249, 1.0)
                SetControlNormal(1, 249, 1.0)
                SetControlNormal(2, 249, 1.0)
                Wait(0)
            end
        end)
    end
end

RegisterCommand('+togglemicrofono', function()
    ToggleMic()
end, false)
RegisterCommand('-togglemicrofono', function() end, false)

RegisterKeyMapping('+togglemicrofono', 'Alternar Microfono', 'keyboard', 'F10')

RegisterCommand('microfono', function()
    ToggleMic()
end, false)

AddEventHandler('onResourceStop', function(resourceName)
    if GetCurrentResourceName() ~= resourceName then return end
    isMicActive = false
end)

exports('ToggleMic', function()
    ToggleMic()
end)

exports('IsMicActive', function()
    return isMicActive
end)
