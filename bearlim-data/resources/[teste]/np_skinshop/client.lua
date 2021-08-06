
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
func = Tunnel.getInterface("np_skinshop")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")



RegisterCommand("open", function(source,args,rawCommand)
    --local user_id = vRP.getUserId(source)
    local user_id = vRP.getUserId(source)
        TriggerEvent("skinshop:toggleMenu")
end)


local lojas = {
  {75.339393615723,-1392.8393554688,29.376142501831},
  {-709.77020263672,-153.62467956543,37.415149688721},
  {-162.95561218262,-301.95889282227,39.733310699463},
  {425.57709106445,-806.83494628906,29.491134643555},
  {-822.16873779297,-1073.3705810547,11.338109741211},
  {-1193.0816650391,-768.4091796875,17.319240570068},
  {-1450.8023681641,-238.09056091309,49.810741424561},
  {4.6313786506653,6512.228515625,31.877855300903},
  {1693.9893798828,4822.4775390625,42.063129425049},
  {125.03887176514,-223.01191711426,54.557834625244},
  {614.94299316406,2762.6518554688,42.088138580322},
  {1196.7967529297,2710.1872558594,38.222637176514},
  {-3170.7709960938,1044.0794677734,20.863214492798},
  {-1101.2919921875,2710.7524414063,19.107866287231},
  {166.41175842285,-716.28253173828,42.0661277771},
  {452.57,-990.80,30.68},
}


Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        for k,v in pairs(lojas) do
            local x,y,z = table.unpack(v)
            z = z-1
            local pCoords = GetEntityCoords(GetPlayerPed(-1))
            local distance = GetDistanceBetweenCoords(pCoords.x, pCoords.y, pCoords.z, x, y, z, true)
                if distance < 3.5 then
                    DrawText3d(x, y, z+1.5, "~w~Pressione ~g~[E]~w~ Abrir Loja de roupas.")
                    DrawMarker(21, x, y, z)
                    if (IsControlJustPressed(1, 38)) then
                    if func.checkPayment() then
                 TriggerEvent("skinshop:toggleMenu")
            end
        end
    end
    end
    end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Menu toggle
-----------------------------------------------------------------------------------------------------------------------------------------
local m, f = GetHashKey("mp_m_freemode_01"), GetHashKey("mp_f_freemode_01")
local cor = 0
local menuactive = false
RegisterNetEvent("skinshop:toggleMenu")
AddEventHandler("skinshop:toggleMenu", function()
	menuactive = not menuactive
	if menuactive then
		SetNuiFocus(true,true)

		local ped = PlayerPedId()
		if IsPedModel(ped, m) then
			SendNUIMessage({ showMenu = true, masc = true })
		elseif IsPedModel(ped, f) then
			SendNUIMessage({ showMenu = true, masc = false })		
		end
	else
		cor = 0
		dados, tipo = nil
		SetNuiFocus(false)
		SendNUIMessage({ showMenu = false, masc = true })
	end
end)

Citizen.CreateThread(function()
	while true do
		Citizen.Wait(1000)
		if menuactive then InvalidateIdleCam() end
	end
end)

-----------------------------------------------------------------------------------------------------------------------------------------
-- Retornos
-----------------------------------------------------------------------------------------------------------------------------------------

RegisterNUICallback("exit", function()
	TriggerEvent("skinshop:toggleMenu")
end)

RegisterNUICallback("rotate", function(data, cb)
	local ped = PlayerPedId()
	local heading = GetEntityHeading(ped)
	if data == "left" then
		SetEntityHeading(ped, heading + 15)
	elseif data == "right" then
		SetEntityHeading(ped, heading - 15)
	end
end)

RegisterNUICallback("update", function(data, cb)
	dados = tonumber(json.encode(data[1]))
	tipo = tonumber(json.encode(data[2]))
	cor = 0
	setRoupa(dados, tipo, cor)
end)

RegisterNUICallback("color", function(data, cb)
	if data == "left" then
		if cor ~= 0 then cor = cor - 1 else cor = 20 end
	elseif data == "right" then
		if cor ~= 21 then cor = cor + 1 else cor = 0 end
	end
	if dados and tipo then setRoupa(dados, tipo, cor) end
end)

function setRoupa(dados, tipo, cor)
	local ped = PlayerPedId()
	if dados < 100 then		
		SetPedComponentVariation(ped, dados, tipo, cor, 1)
	else
		SetPedPropIndex(ped, dados-100, tipo, cor, 1)
	end
end

function DrawText3d(x,y,z, text)
    local onScreen,_x,_y=World3dToScreen2d(x,y,z)
    local px,py,pz=table.unpack(GetGameplayCamCoords())
    
    SetTextScale(0.35, 0.35)
    SetTextFont(4)
    SetTextProportional(1)
    SetTextColour(255, 255, 255, 215)
    SetTextEntry("STRING")
    SetTextCentre(1)
    AddTextComponentString(text)
    DrawText(_x,_y)
    local factor = (string.len(text)) / 370
    DrawRect(_x,_y+0.0125, 0.015+ factor, 0.03, 41, 11, 41, 68)
end

function drawTxt(x,y,width,height,scale,text,r,g,b,a)
    SetTextFont(4)
    SetTextScale(scale,scale)
    SetTextColour(r,g,b,a)
    SetTextOutline()
    SetTextEntry("STRING")
    AddTextComponentString(text)
    DrawText(x,y)
end

