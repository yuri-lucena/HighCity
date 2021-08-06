-------------------
-- C o n f i g s --
-------------------


companyName = "HighCity Concerta Tralha"       
companyIcon = "CHAR_CARSITE3" -- https://wiki.gtanet.work/index.php?title=Notification_Pictures
spawnRadius = 100               -- Default Value: 
drivingStyle = 786603           -- Default Value: 786603
simplerRepair = false           -- When enabled, instead of getting out of the vehicle to repair, the mechanic stops his vehicle and the repair happens automatically.
repairComsticDamage = false     -- When enabled, the vehicle's cosmetic damage gets reset.
flipVehicle = true             -- When enabled, the vehicle will be flipped if on roof or side after repair.
 
-- To change the chat command (def. /mechanic), see line 1 of client.lua

-- Edit / Add Drivers and their information here!

mechPeds = {
                --  * Find the icons here:      https://wiki.gtanet.work/index.php?title=Notification_Pictures
                --  * Find the ped models here: https://wiki.gtanet.work/index.php?title=Peds
                --  * Find the vehicles here    https://wiki.gtanet.work/index.php?title=Vehicle_Models
                --  * Find the colours here:    https://wiki.gtanet.work/index.php?title=Vehicle_Colors

                [1] = {name = "Mecânico Jovenaldos", icon = "CHAR_MP_MECHANIC", model = "S_M_Y_DockWork_01", vehicle = 'UtilliTruck3', colour = 111, 
                                ['lines'] = {
                                        "Novinha em folha!.",
                                        "Tudo feito.",
                                        "Pensei que estava se escondendo, vamos a massa",
                                        "Prontinho.",
                                        "Sou muito bom, pode dizer ae",
                                        "Tava quase pegando o livro de magia negra para ver se essa tranqueira funcionava",
                                        "Pra quem chamar quando a bosta acontece? Pode chamar o Mecânico Jovenaldos",
                                        "Mais fácil que isso, só se for chegar na sua mina",
                                        "Pega leve no acelerador na próxima",
                                        "Consigo concertar tudo, menos meu casamento :(",
                                        "Novin em folha, toma cuidado para não bater de novo",
                                        "Tá meio complicado aqui, mas funciona perfeitinho, creio eu",}},

                [2] = {name = "Mecânico Vintaum", icon = "CHAR_MP_BIKER_MECHANIC", model = "S_M_Y_Construct_01", vehicle = 'BobcatXL', colour = 118, 
                                ['lines'] = {
                                        "Novinha, parece até que saiu do ventre da mãe agora",
                                        "Tudo feito",
                                        "Trabalho concluído, sou o melhor médico para os carros.",
                                        "Foi tenso aqui, mas fiz o que eu pude",
                                        "Dei umas marretadas, deu uma amassada, mas tá funcionando, creio eu.",
                                        "Não me responsabilizo se o motor pegar fogo, boa sorte :)",
                                        "As vezes eu me pergunto, mas que porra eu to fazendo aqui, mas acho que tá tudo certo com sua lata velha, boa sorte!",
                                        "Tudo feito, agora vamos dar uma lavada nessa lata velha ae, tá precisando",
                                        "Até parece que saiu da concessionária",
                                        "Mais fácil que isso, só se for roubar o contato da sua mina",
                                        "Tudo funcionando como deveria, mas me fala ae, qual o insta da tua mina mesmo?"}},

                -- You can use this template to make your own driver.

                --  * Find the icons here:      https://wiki.gtanet.work/index.php?title=Notification_Pictures
                --  * Find the ped models here: https://wiki.gtanet.work/index.php?title=Peds
                --  * Find the colours here:    https://wiki.gtanet.work/index.php?title=Vehicle_Colors
                --  * Driver ID needs to be a number (in sequential order from the previous one. In this example it would be 3).
                --[[
                
                --Edit the NAME, ICON, PED MODEL and TRUCK COLOUR here:
                [driver_ID] = {name = "driver_name", icon = "driver_icon", model = "ped_model", vehicle = 'vehicle_model' colour = 'driver_colour',

                                --You can add or edit any existing vehicle fix lines here:
                                [1] = {"Sample text 1","Sample text 2",}}, -- lines of dialogue.

                  
                ]]
                }
