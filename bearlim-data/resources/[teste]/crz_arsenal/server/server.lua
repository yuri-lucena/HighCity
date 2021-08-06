local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

local armas = {
}

RegisterServerEvent('crz_arsenal:permissao')
AddEventHandler('crz_arsenal:permissao', function()
	local src = source
	local user_id = vRP.getUserId(src)
	if vRP.hasPermission(user_id,"dpla.permissao") then
		TriggerClientEvent('crz_arsenal:permissao', src)
	end
end)

RegisterServerEvent('crz_arsenal:colete')
AddEventHandler('crz_arsenal:colete', function()
	local src = source
	local user_id = vRP.getUserId(src)
	if vRP.hasPermission(user_id,"dpla.permissao") then
		local colete = 100
		vRPclient.setArmour(src,100)
		vRP.setUData(user_id,"vRP:colete", json.encode(colete))
	end
end)
