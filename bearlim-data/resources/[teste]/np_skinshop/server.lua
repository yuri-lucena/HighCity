local Tunnel = module("vrp","lib/Tunnel")
local Proxy = module("vrp","lib/Proxy")
vRP = Proxy.getInterface("vRP")
vRPclient = Tunnel.getInterface("vRP")

func = {}
Tunnel.bindInterface("np_skinshop",func)



	function func.checkPayment()
    local source = source
    local user_id = vRP.getUserId(source)
	local reward = math.random(100,500)
      if vRP.tryPayment(user_id,reward) then 
      -- vRPclient.notify(source,"~r~Pagou 10$")
	   TriggerClientEvent("Notify",source,"importante","Você fez um pagamento de: R$ "..reward.." ")
return true;
         else
      --  vRPclient.notify(source,"~r~Você Precisa de 200$")
	   TriggerClientEvent("Notify",source,"importante","Você não tem dinheiro suficiente")
return false;
        end
    end
	
	
	
	
	
	
	
	
	
	
	