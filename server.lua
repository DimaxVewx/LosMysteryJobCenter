ESX = nil

TriggerEvent('dmx:getSharedObject', function(obj) ESX = obj end)

RegisterServerEvent('dmx_jobcenter:quitOrg')
AddEventHandler('dmx_jobcenter:quitOrg', function(org)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local org = "unorg"
    local grade = "0"

        sourceXPlayer.setOrg(org, grade)
    
end)

RegisterServerEvent('dmx_jobcenter:joinFermier')
AddEventHandler('dmx_jobcenter:joinFermier', function(org)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local job = "farmer"
    local grade = "0"

        sourceXPlayer.setJob(job, grade)
    
end)

RegisterServerEvent('dmx_jobcenter:laveurdeVitre')
AddEventHandler('dmx_jobcenter:laveurdeVitre', function(org)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local job = "windowcleaner"
    local grade = "0"

        sourceXPlayer.setJob(job, grade)
    
end)

RegisterServerEvent('dmx_jobcenter:goPost')
AddEventHandler('dmx_jobcenter:goPost', function(org)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local job = "gopostal"
    local grade = "0"

        sourceXPlayer.setJob(job, grade)
    
end)

RegisterServerEvent('dmx_jobcenter:poolCleaner')
AddEventHandler('dmx_jobcenter:poolCleaner', function(org)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local job = "poolcleaner"
    local grade = "0"

        sourceXPlayer.setJob(job, grade)
    
end)

RegisterServerEvent('dmx_jobcenter:quitJob')
AddEventHandler('dmx_jobcenter:quitJob', function(org)
	local _source = source

	local sourceXPlayer = ESX.GetPlayerFromId(_source)
	local job = "unemployed"
    local grade = "0"

        sourceXPlayer.setJob(job, grade)
    
end)






