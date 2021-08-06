local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")
func = {}
Tunnel.bindInterface("vrp_trafico",func)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function func.checkPermission(perm)
	local source = source
	local user_id = vRP.getUserId(source)
	return vRP.hasPermission(user_id,perm)
end

local src = {
	[1] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "adubo", ['itemqtd'] = 10 },
	[2] = { ['re'] = "adubo", ['reqtd'] = 10, ['item'] = "fertilizante", ['itemqtd'] = 10 },
	[3] = { ['re'] = "fertilizante", ['reqtd'] = 10, ['item'] = "maconha", ['itemqtd'] = 20 },

	[4] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "capsula", ['itemqtd'] = 20 },
	[5] = { ['re'] = "capsula", ['reqtd'] = 20, ['item'] = "polvora", ['itemqtd'] = 20 },
	[6] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_ASSAULTSMG", ['itemqtd'] = 20 },
	[7] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_ASSAULTRIFLE", ['itemqtd'] = 20 },
	[8] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_GUSENBERG", ['itemqtd'] = 20 },
	[9] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_PISTOL_MK2", ['itemqtd'] = 20 },
	[10] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_COMPACTRIFLE", ['itemqtd'] = 20 },
	[11] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_CARBINERIFLE_MK2", ['itemqtd'] = 20 },
	[12] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_MACHINEPISTOL", ['itemqtd'] = 20 },
	[13] = { ['re'] = "polvora", ['reqtd'] = 20, ['item'] = "wammo|WEAPON_PUMPSHOTGUN", ['itemqtd'] = 20 },


	[25] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "pendriveinformacoes", ['itemqtd'] = 2 },
	[26] = { ['re'] = "pendriveinformacoes", ['reqtd'] = 2, ['item'] = "acessodeepweb", ['itemqtd'] = 2 },
	[27] = { ['re'] = "acessodeepweb", ['reqtd'] = 2, ['item'] = "keysinvasao", ['itemqtd'] = 2 },

	[28] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "pendriveinformacoes", ['itemqtd'] = 2 },
	[29] = { ['re'] = "pendriveinformacoes", ['reqtd'] = 2, ['item'] = "acessodeepweb", ['itemqtd'] = 2 },
	[30] = { ['re'] = "acessodeepweb", ['reqtd'] = 2, ['item'] = "keysinvasao", ['itemqtd'] = 2 },

	[31] = { ['re'] = "pecadearma", ['reqtd'] = 5, ['item'] = "armacaodearma", ['itemqtd'] = 1 },
	[32] = { ['re'] = "armacaodearma", ['reqtd'] = 5, ['item'] = "wbody|WEAPON_COMPACTRIFLE", ['itemqtd'] = 1 },
	[33] = { ['re'] = "armacaodearma", ['reqtd'] = 3, ['item'] = "wbody|WEAPON_CARBINERIFLE_MK2", ['itemqtd'] = 1 },
	[34] = { ['re'] = "armacaodearma", ['reqtd'] = 2, ['item'] = "wbody|WEAPON_MACHINEPISTOL", ['itemqtd'] = 1 },

	[35] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "fungo", ['itemqtd'] = 10 },
	[36] = { ['re'] = "fungo", ['reqtd'] = 10, ['item'] = "dietilamina", ['itemqtd'] = 10 },
	[37] = { ['re'] = "dietilamina", ['reqtd'] = 10, ['item'] = "lsd", ['itemqtd'] = 20 },



	[48] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "pano", ['itemqtd'] = 10},
	[49] = { ['re'] = "pano", ['reqtd'] = 10, ['item'] = "costura", ['itemqtd'] = 10},
	[50] = { ['re'] = "costura", ['reqtd'] = 10, ['item'] = "panoduro", ['itemqtd'] = 5},
	[51] = { ['re'] = "panoduro", ['reqtd'] = 20, ['item'] = "colete", ['itemqtd'] = 1},
	[56] = { ['re'] = "pano", ['reqtd'] = 25, ['item'] = "capuz", ['itemqtd'] = 1},

	[52] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "placa-metal", ['itemqtd'] = 4 },
	[53] = { ['re'] = "placa-metal", ['reqtd'] = 10, ['item'] = "lockpick", ['itemqtd'] = 1 },
	[54] = { ['re'] = "placa-metal", ['reqtd'] = 15, ['item'] = "placa", ['itemqtd'] = 1},
	[55] = { ['re'] = nil, ['reqtd'] = nil, ['item'] = "algema", ['itemqtd'] = 1},
}

function func.checkPayment(id)
	local source = source
	local user_id = vRP.getUserId(source)
	if user_id then
		if src[id].re ~= nil then
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				if vRP.tryGetInventoryItem(user_id,src[id].re,src[id].reqtd,false) then
					vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
					vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_ped"}},true)
					return true
				end
			end
		else
			if vRP.getInventoryWeight(user_id)+vRP.getItemWeight(src[id].item)*src[id].itemqtd <= vRP.getInventoryMaxWeight(user_id) then
				vRP.giveInventoryItem(user_id,src[id].item,src[id].itemqtd,false)
				vRPclient._playAnim(source,false,{{"mini@repair","fixing_a_ped"}},true)
				return true
			end
		end
	end
end