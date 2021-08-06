----------------------------------------------------------------------------------------------------------
--[   Esse script foi desenvolvido pela equipe da Ziraflix Dev Group, por favor mantenha os créditos   ]--
--[                     Contato: contato@ziraflix.com   Discord: discord.gg/6p3M3Cz                    ]--
----------------------------------------------------------------------------------------------------------
local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
local Tools = module("vrp","lib/Tools")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

Resg = {}
Tunnel.bindInterface("nav_ponto-medico",Resg)
-----------------------------------------------------------------------------------------------------------------------------------------
--[ WEBHOOK ]----------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
local resgatePonto = "https://discordapp.com/api/webhooks/760881424193683519/drOJUhYdTTX5nOKOilt7dpP7aYCEleOD164dfwbbki3cSDLNgyXeLMYirJqJtg5AWV1Z"
-----------------------------------------------------------------------------------------------------------------------------------------
--[ PONTO ]------------------------------------------------------------------------------------------------------------------------------
-----------------------------------------------------------------------------------------------------------------------------------------
RegisterServerEvent("entrar-servico")
AddEventHandler("entrar-servico",function()
    local user_id = vRP.getUserId(source)

    if vRP.hasPermission(user_id,"dmla.permissao") then
        TriggerClientEvent("Notify",source,"negado","Você já está em serviço.")
    else
        vRP.addUserGroup(user_id,"dmla")
        TriggerClientEvent("Notify",source,"sucesso","Você entrou em serviço.")
        logEntradaServico()
    end
end)

RegisterServerEvent("sair-servico")
AddEventHandler("sair-servico",function()
    local user_id = vRP.getUserId(source)

    if vRP.hasPermission(user_id,"paisana-dmla.permissao") then
        TriggerClientEvent("Notify",source,"negado","Você já está fora de serviço.")
    else
        vRP.addUserGroup(user_id,"paisana-dmla")
        TriggerClientEvent("Notify",source,"sucesso","Você saiu de serviço.")
        logSaidaServico()
    end
end)

function logEntradaServico()
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)

    PerformHttpRequest(resgatePonto, function(err, text, headers) end, 'POST', json.encode({embeds = {{ title = identity.name.." entrou em serviço.", description = "Registro de Ponto do Departamento Médico de Los Anjos. Registro de entrada em serviço.\n⠀", thumbnail = {url = "https://media.discordapp.net/attachments/393527746514649088/760899098223575080/rich.png"}, fields = {{ name = "**Nome do Colaborador:**", value = "` "..identity.name.." "..identity.firstname.." ` " },{ name = "**Nº Passaporte:**", value = "` "..user_id.." `\n⠀" }}, footer = { text = os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S"), icon_url = "https://media.discordapp.net/attachments/393527746514649088/760899098223575080/rich.png" },color = 15906321 }}}), { ['Content-Type'] = 'application/json' })
end

function logSaidaServico()
    local user_id = vRP.getUserId(source)
    local identity = vRP.getUserIdentity(user_id)

    PerformHttpRequest(resgatePonto, function(err, text, headers) end, 'POST', json.encode({embeds = {{ title = identity.name.." saiu de serviço.", description = "Registro de Ponto do Departamento Médico de Los Anjos. Registro de saída de serviço.\n⠀", thumbnail = {url = "https://media.discordapp.net/attachments/393527746514649088/760899098223575080/rich.png"}, fields = {{ name = "**Nome do Colaborador:**", value = "` "..identity.name.." "..identity.firstname.." ` " },{ name = "**Nº Passaporte:**", value = "` "..user_id.." `\n⠀" }}, footer = { text = os.date("\n[Data]: %d/%m/%Y [Hora]: %H:%M:%S"), icon_url = "https://media.discordapp.net/attachments/393527746514649088/760899098223575080/rich.png" },color = 15906321 }}}), { ['Content-Type'] = 'application/json' })
end

function Resg.checkPermissao()
	local source = source
	local user_id = vRP.getUserId(source)
    if vRP.hasPermission(user_id,"dmla.permissao") or vRP.hasPermission(user_id,"paisana-dmla.permissao") then
        return true
	end
end