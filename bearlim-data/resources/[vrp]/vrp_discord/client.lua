local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")

emD = Tunnel.getInterface("vrp_discord")
----------------------------------------------------------------------------------------------------
--[ DISCORD ]---------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------------------
Citizen.CreateThread(function()
	while true do
        SetDiscordAppId(760303481646219286)

	    local players = emD.discord()
		
	    SetDiscordRichPresenceAsset('rich')
		SetDiscordRichPresenceAssetText('Construindo a cidade, 85% concluída')
		--SetRichPresence("discord.gg/mrNuVAs")
		--SetDiscordRichPresenceAssetSmall('small')
		--SetDiscordRichPresenceAssetSmallText("discord.gg/mrNuVAs")
		SetRichPresence("Moradores conectados: "..players.." de 128")
		--SetRichPresence("SÓ TEM EU NESSA BAGAÇA")
		Citizen.Wait(10000)
	end
end)