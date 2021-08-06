local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("vrp_trafico")
-----------------------------------------------------------------------------------------------------------------------------------------
-- TELEPORT
-----------------------------------------------------------------------------------------------------------------------------------------
local Teleport = {
	["MARABUNTA"] = {
		positionFrom = { ['x'] = 2848.5, ['y'] = 4450.17, ['z'] = 48.52, ['perm'] = "marabunta.permissao" },
		positionTo = { ['x'] = 2849.89, ['y'] = 4451.06, ['z'] = 48.54, ['perm'] = "marabunta.permissao" }
	},
	["MOTOCLUB"] = {
		positionFrom = { ['x'] = 138.29, ['y'] = 2295.24, ['z'] = 94.08, ['perm'] = "motoclub.permissao" },
		positionTo = { ['x'] = 894.49, ['y'] = -3245.88, ['z'] = -98.25, ['perm'] = "motoclub.permissao" }
	},
	--[[["CORLEONE"] = {
		positionFrom = { ['x'] = -70.93, ['y'] = -801.04, ['z'] = 44.22, ['perm'] = "corleone.permissao" },
		positionTo = { ['x'] = -75.71, ['y'] = -827.08, ['z'] = 243.39, ['perm'] = "corleone.permissao" }
	},]]
	["HOSPITAL"] = {
		positionFrom = { ['x'] = 315.57, ['y'] = -583.07, ['z'] = 43.28, ['perm'] = "paramedico.permissao" },
		positionTo = { ['x'] = 275.74, ['y'] = -1361.42, ['z'] = 24.53, ['perm'] = "paramedico.permissao" }
	},
	["PCC"] = {
		positionFrom = { ['x'] = 719.86, ['y'] = -269.37, ['z'] = 62.69, ['perm'] = "pcc.permissao" },
		positionTo = { ['x'] = 96.95, ['y'] = 6327.47, ['z'] = 31.37, ['perm'] = "pcc.permissao" }
	},
	["TCC"] = {
		positionFrom = { ['x'] = 1660.97, ['y'] = -53.72, ['z'] = 168.31, ['perm'] = "tcc.permissao" },
		positionTo = { ['x'] = -1096.31, ['y'] = 4949.32, ['z'] = 218.35, ['perm'] = "tcc.permissao" }
	},
	["CRBC"] = {
		positionFrom = { ['x'] = 410.42, ['y'] = -1821.82, ['z'] = 31.42, ['perm'] = "crbc.permissao" },
		positionTo = { ['x'] = 1481.84, ['y'] = 6392.16, ['z'] = 22.95, ['perm'] = "crbc.permissao" }
	}
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(Teleport) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.positionFrom.x,v.positionFrom.y,v.positionFrom.z)
			local distance = GetDistanceBetweenCoords(v.positionFrom.x,v.positionFrom.y,cdz,x,y,z,true)
			local bowz,cdz2 = GetGroundZFor_3dCoord(v.positionTo.x,v.positionTo.y,v.positionTo.z)
			local distance2 = GetDistanceBetweenCoords(v.positionTo.x,v.positionTo.y,cdz2,x,y,z,true)

			if distance <= 3 then
				DrawMarker(21,v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
				if distance <= 1.5 then
					if IsControlJustPressed(0,38) and func.checkPermission(v.positionTo.perm) then
						SetEntityCoords(PlayerPedId(),v.positionTo.x,v.positionTo.y,v.positionTo.z-0.50)
					end
				end
			end

			if distance2 <= 3 then
				DrawMarker(21,v.positionTo.x,v.positionTo.y,v.positionTo.z-0.6,0,0,0,0.0,0,0,0.5,0.5,0.4,255,0,0,50,0,0,0,1)
				if distance2 <= 1.5 then
					if IsControlJustPressed(0,38) and func.checkPermission(v.positionFrom.perm) then
						SetEntityCoords(PlayerPedId(),v.positionFrom.x,v.positionFrom.y,v.positionFrom.z-0.50)
					end
				end
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- VARIAVEIS
-----------------------------------------------------------------------------------------------------------------------------------------
local processo = false
local segundos = 0
-----------------------------------------------------------------------------------------------------------------------------------------
-- LOCAIS
-----------------------------------------------------------------------------------------------------------------------------------------
local locais = {
	{ ['id'] = 1, ['x'] = 92.28, ['y'] = 6351.19, ['z'] = 31.37, ['text'] = "COLETAR ADUBO", ['perm'] = "pcc.permissao" }, -- Maconha ADUBO 
	{ ['id'] = 2, ['x'] = 102.70, ['y'] = 6328.72, ['z'] = 31.37, ['text'] = "PROCESSAR FERTILIZANTE", ['perm'] = "pcc.permissao" }, -- Maconha FERTILIZANTE
	{ ['id'] = 3, ['x'] = 114.28, ['y'] = 6360.26, ['z'] = 32.305, ['text'] = "PRODUZIR MACONHA", ['perm'] = "pcc.permissao" }, -- Maconha PRODUZIR

	{ ['id'] = 4, ['x'] = 882.80, ['y'] = -3202.40, ['z'] = -98.19, ['text'] = "COLETAR CAPSULA", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 5, ['x'] = 883.91, ['y'] = -3207.62, ['z'] = -98.19, ['text'] = "PROCESSAR POLVORA", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 6, ['x'] = 884.73, ['y'] = -3199.72, ['z'] = -98.19, ['text'] = "PRODUZIR MUNIÇÃO DE MTAR-21", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 7, ['x'] = 891.98, ['y'] = -3196.91, ['z'] = -98.19, ['text'] = "PRODUZIR MUNIÇÃO DE AK-103", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 8, ['x'] = 888.65, ['y'] = -3207.17, ['z'] = -98.19, ['text'] = "PRODUZIR MUNIÇÃO DE THOMPSON", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 9, ['x'] = 887.47, ['y'] = -3209.71, ['z'] = -98.19, ['text'] = "PRODUZIR MUNIÇÃO DE FN FIVE SEVEN", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 10, ['x'] = 905.71, ['y'] = -3230.46, ['z'] = -98.29, ['text'] = "PRODUZIR MUNIÇÃO DE AKS-74U", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 11, ['x'] = 898.11, ['y'] = -3221.64, ['z'] = -98.24, ['text'] = "PRODUZIR MUNIÇÃO DE MPX", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 12, ['x'] = 896.43, ['y'] = -3217.43, ['z'] = -98.22, ['text'] = "PRODUZIR MUNIÇÃO DE TEC-9", ['perm'] = "municao.permissao" }, -- motoclub
	{ ['id'] = 13, ['x'] = 908.18, ['y'] = -3211.58, ['z'] = -98.22, ['text'] = "PRODUZIR MUNIÇÃO DE SHOTGUN", ['perm'] = "municao.permissao" }, -- motoclub

	{ ['id'] = 26, ['x'] = 1049.91, ['y'] = -182.04, ['z'] = 71.41, ['text'] = "ACESSAR A DEEPWEB", ['perm'] = "anonymous.permissao" }, -- MAFIA ACESSO DEEPWEB
	{ ['id'] = 27, ['x'] = 1057.50, ['y'] = -186.92, ['z'] = 71.41, ['text'] = "OBTER KEYS PARA INVASÃO", ['perm'] = "anonymous.permissao" }, -- MAFIA KEYS PARA INVASO

	{ ['id'] = 28, ['x'] = 1186.59, ['y'] = 2637.08, ['z'] = 38.40, ['text'] = "OBTER PENDRIVE COM INFORMAÇÕES", ['perm'] = "corleone.permissao" }, -- MAFIA OBTER PENDRIVE
	{ ['id'] = 29, ['x'] = 1596.71, ['y'] = 3581.29, ['z'] = 38.77, ['text'] = "ACESSAR A DEEPWEB", ['perm'] = "corleone.permissao" }, -- MAFIA ACESSO DEEPWEB
	{ ['id'] = 30, ['x'] = 1592.68, ['y'] = 3585.56, ['z'] = 38.76, ['text'] = "OBTER KEYS PARA INVASÃO", ['perm'] = "corleone.permissao" }, -- MAFIA KEYS PARA INVASO

	{ ['id'] = 31, ['x'] = 3585.27, ['y'] = 3684.25, ['z'] = 27.63, ['text'] = "JUNTAR AS PEÇAS", ['perm'] = "serpentes.permissao" }, -- Mafia Juntar
	{ ['id'] = 32, ['x'] = 3591.55, ['y'] = 3680.24, ['z'] = 27.63, ['text'] = "MONTAR AKS-74U", ['perm'] = "serpentes.permissao" }, -- MONTAR AKS-74U
	{ ['id'] = 33, ['x'] = 3589.0, ['y'] = 3680.12, ['z'] = 27.63, ['text'] = "MONTAR MPX", ['perm'] = "serpentes.permissao" }, -- MONTAR MPX
	{ ['id'] = 34, ['x'] = 3593.35, ['y'] = 3682.49, ['z'] = 27.63, ['text'] = "MONTAR TEC-9", ['perm'] = "serpentes.permissao" }, -- MONTAR TEC-9

	{ ['id'] = 35, ['x'] = 2865.18, ['y'] = 4457.97, ['z'] = 48.54, ['text'] = "COLETAR FUNGO", ['perm'] = "marabunta.permissao" }, 
	{ ['id'] = 36, ['x'] = 2855.96, ['y'] = 4450.27, ['z'] = 49.01, ['text'] = "PROCESSAR DIETILAMINA", ['perm'] = "marabunta.permissao" },
	{ ['id'] = 37, ['x'] = 2853.38, ['y'] = 4454.31, ['z'] = 48.54, ['text'] = "PRODUZIR LSD", ['perm'] = "marabunta.permissao" },

	{ ['id'] = 48, ['x'] = 123.91, ['y'] = -1219.64, ['z'] = 29.31, ['text'] = "COLETEAR PANO", ['perm'] = "vanilla.permissao" }, 
	{ ['id'] = 49, ['x'] = 135.89, ['y'] = -1217.99, ['z'] = 29.41, ['text'] = "PRODUZIR CUSTURA", ['perm'] = "vanilla.permissao" },
	{ ['id'] = 50, ['x'] = 177.24, ['y'] = -1212.82, ['z'] = 29.3, ['text'] = "PRODUZIR PANO DURO", ['perm'] = "vanilla.permissao"},
	{ ['id'] = 51, ['x'] = 103.05, ['y'] = -1299.15, ['z'] = 28.77, ['text'] = "PRODUZIR COLETE", ['perm'] = "vanilla.permissao"},
	{ ['id'] = 56, ['x'] = 106.6, ['y'] = -1305.42, ['z'] = 28.77, ['text'] = "PRODUZIR CAPUZ", ['perm'] = "vanilla.permissao"},

	{ ['id'] = 52, ['x'] = 910.61, ['y'] = -1723.9, ['z'] = 32.16, ['text'] = "COLETAR PLACA DE METAL", ['perm'] = "anonymous.permissao" },
	{ ['id'] = 53, ['x'] = 760.62, ['y'] = -1904.44, ['z'] = 29.46, ['text'] = "FAZER LOCKPICK", ['perm'] = "anonymous.permissao"},
	{ ['id'] = 54, ['x'] = -905.84, ['y'] = -2028.15, ['z'] = 12.84, ['text'] = "INVADIR SISTEMA DA PREFEITURA", ['perm'] = "anonymous.permissao"},
	{ ['id'] = 55, ['x'] = -1097.18, ['y'] = -839.91, ['z'] = 19.01, ['text'] = "ROUBAR ALGEMAS", ['perm'] = "anonymous.permissao"},
}

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1)
		for k,v in pairs(locais) do
			local ped = PlayerPedId()
			local x,y,z = table.unpack(GetEntityCoords(ped))
			local bowz,cdz = GetGroundZFor_3dCoord(v.x,v.y,v.z)
			local distance = GetDistanceBetweenCoords(v.x,v.y,cdz,x,y,z,true)
			if distance <= 1.2 and not processo then
				drawTxt("PRESSIONE  ~r~E~w~  PARA "..v.text,4,0.5,0.93,0.50,255,255,255,180)
				if IsControlJustPressed(0,38) and func.checkPermission(v.perm) then
					if func.checkPayment(v.id) then
						TriggerEvent('cancelando',true)
						processo = true
						segundos = 5
					end
				end
			end
		end
		if processo then
			drawTxt("AGUARDE ~g~"..segundos.."~w~ SEGUNDOS ATÉ FINALIZAR O PROCESSO",4,0.5,0.93,0.50,255,255,255,180)
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- CONTAGEM --
-----------------------------------------------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if segundos > 0 then
			segundos = segundos - 1
			if segundos == 0 then
				processo = false
				TriggerEvent('cancelando',false)
				ClearPedTasks(PlayerPedId())
			end
		end
	end
end)
-----------------------------------------------------------------------------------------------------------------------------------------
-- FUNÇÕES
-----------------------------------------------------------------------------------------------------------------------------------------
function drawTxt(text,font,x,y,scale,r,g,b,a)
	SetTextFont(font)
	SetTextScale(scale,scale)
	SetTextColour(r,g,b,a)
	SetTextOutline()
	SetTextCentre(1)
	SetTextEntry("STRING")
	AddTextComponentString(text)
	DrawText(x,y)
end