ESX = nil
RMenu.Add('jobcenter', 'main', RageUI.CreateMenu("", "Bonjour à vous, je peux vous aider ?"))
RMenu.Add('jobcenter', 'metier', RageUI.CreateSubMenu(RMenu:Get('jobcenter', 'main'), "", "Choisissez entre tous ces métiers intérim"))
RMenu.Add('jobcenter', 'organisation', RageUI.CreateSubMenu(RMenu:Get('jobcenter', 'main'), " ", "Interaction Organisation"))




Citizen.CreateThread(function()
    while true do
        RageUI.IsVisible(RMenu:Get('jobcenter', 'main'), true, true, true, function()

            RageUI.Button("Recherche d'emploi", "Je peux trouver un emploi pour vous, oui..", {RightLabel = "💬"},true, function()
            end, RMenu:Get('jobcenter', 'metier'))

            RageUI.Button("Organisation", "Chut, mais je travail pour des organisations.", {RightLabel = "🕕"},true, function()
            end, RMenu:Get('jobcenter', 'organisation'))
        end, function()
        end)

        RageUI.IsVisible(RMenu:Get('jobcenter', 'metier'), true, true, true, function()

            RageUI.Button("Quitter son travail", "Mince, c'est dommage mais bon aucun souci...", {RightLabel = "❌"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('dmx_jobcenter:quitJob')
                    ESX.ShowNotification("Nastasya:~r~ Tu viens de quitter ton travail.")
                    
                end

                
            end)


            RageUI.Button("Laveur de vitres", "Un métier super ! mon père travaillait hier chez eux.", {RightLabel = "💦"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('dmx_jobcenter:laveurdeVitre')
                    ESX.ShowNotification("Nastasya:~g~ Super le patron t'attend, regarde sur ton gps !")
                end

                
            end)

            RageUI.Button("Facteur", "Un métier super ! mon père travaillait hier chez eux.", {RightLabel = "📦"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('dmx_jobcenter:goPost')
                    ESX.ShowNotification("Nastasya:~g~ Super le patron t'attend, regarde sur ton gps !")
                end

                
            end)

            RageUI.Button("Nettoyeur de piscine", "Un métier super ! mon père travaillait hier chez eux.", {RightLabel = "🌊"}, true, function(Hovered, Active, Selected)
                if (Selected) then
                    TriggerServerEvent('dmx_jobcenter:poolCleaner')
                    ESX.ShowNotification("Nastasya:~g~ Super le patron t'attend, regarde sur ton gps !")
                end

                
            end)

        end, function()
               end)

                


            RageUI.IsVisible(RMenu:Get('jobcenter', 'organisation'), true, true, true, function()

                RageUI.Button("Quitter mon organisation", "Votre chef est d'accord au moins ?", {RightLabel = ""}, true, function(Hovered, Active, Selected)

                      if (Selected) then
                        TriggerServerEvent('dmx_jobcenter:quitOrg')
                        ESX.ShowNotification("~g~Nastasya: ~r~Tu viens de quitter ton organisation.")
                    end
                 end)
                    end, function()
             
                    end, 1)
            
                    Citizen.Wait(0)
                end
            end)



local position = {
        {x = -267.35 , y = -959.40, z = 31.22, }
    }    
    
    
    Citizen.CreateThread(function()
        while true do
            Citizen.Wait(0)
    
            for k in pairs(position) do
    
                local plyCoords = GetEntityCoords(GetPlayerPed(-1), false)
                local dist = Vdist(plyCoords.x, plyCoords.y, plyCoords.z, position[k].x, position[k].y, position[k].z)
    
                if dist <= 1.0 then
                    ESX.ShowHelpNotification("Appuyez sur ~INPUT_TALK~ pour parler avec ~g~Nastasya")
                    if IsControlJustPressed(1,51) then
                        RageUI.Visible(RMenu:Get('jobcenter', 'main'), not RageUI.Visible(RMenu:Get('jobcenter', 'main')))
                    end
                end
            end
        end
    end)


    Citizen.CreateThread(function()
        while ESX == nil do
            TriggerEvent('dmx:getSharedObject', function(obj) ESX = obj end)
            Citizen.Wait(100)
        end
    end)

    -- Create blips
    local blips = {
        -- Example {title="", colour=, id=, x=, y=, z=},
    
         {title="Pôle Emploi", colour=26, id=480, x = -267.35, y = -959.40, z = 31.22}
      }


      Citizen.CreateThread(function ()
        local blip2 = AddBlipForCoord(-266.00, -961.86, 32.15)
        SetBlipSprite (blip2, 457)
        SetBlipDisplay(blip2, 4)
        SetBlipScale  (blip2, 0.6)
        SetBlipColour (blip2, 37)
        SetBlipAsShortRange(blip2, true)
    
        BeginTextCommandSetBlipName('STRING')
        AddTextComponentString('Pôle Emploi')
        EndTextCommandSetBlipName(blip2)
    end)
    
    