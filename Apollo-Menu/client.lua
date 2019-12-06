-- ©Apollo https://discord.gg/7Km9ATw
Citizen.CreateThread(function()
    local Engine = true
    local DoorsLocked = false
	WarMenu.CreateMenu('menu', 'Apollo V1') ---Menu name
	WarMenu.CreateSubMenu('ApollosMenu', 'menu', 'Player Options')
    WarMenu.CreateSubMenu('vehMenu', 'menu', 'Vehicle Options')
    WarMenu.CreateSubMenu('advertMenu', 'ApollosMenu', 'Adverts')
    WarMenu.CreateSubMenu('toolsmenu', 'menu', 'Tools Options')
    WarMenu.CreateSubMenu('DrugsMenu', 'menu', 'Drug / Alcohol Options')


	
	
---This is the menu structure		
	while true do	
        if WarMenu.IsMenuOpened('menu') then -- If warmenu open then display the following sub menus.
        if WarMenu.Button('Send ~b~Tweet~w~.') then
            TriggerEvent( 'tweet' )
        elseif WarMenu.Button('Call ~r~Tow~w~. ') then
            TriggerEvent( 'calltow' )
        elseif WarMenu.MenuButton('Player ~w~Options', 'ApollosMenu') then
        elseif WarMenu.MenuButton('Drug / Alcohol Options', 'DrugsMenu') then
        elseif WarMenu.MenuButton('Advertisements', 'advertMenu') then
        elseif WarMenu.MenuButton('Vehicle Options', 'vehMenu') then
        elseif WarMenu.MenuButton('Misc Utility Tools ⚠️', 'toolsmenu') then
        end
        


            --- PLAYER MENU
		WarMenu.Display()
         elseif WarMenu.IsMenuOpened('ApollosMenu') then
			if WarMenu.Button('Put your hands up') then
				TriggerEvent('handsup')
			elseif WarMenu.Button('~w~Put your hands up ~r~& ~w~crouch.') then
                TriggerEvent('handsupCrouch')
			elseif WarMenu.Button('~w~Place your hands on your head') then
                TriggerEvent('handsonhead')
            elseif WarMenu.Button('Ragdoll') then
				TriggerEvent("Ragdoll")
            elseif WarMenu.Button('Blow your head off 🤯') then
                TriggerEvent('BlowYourHeadOff')
            elseif WarMenu.Button("Stealth ~r~Suicide") then
                TriggerEvent("StealthSuicide")
            elseif WarMenu.MenuButton('Back','menu') then
            end
            


            -- DRUGS MENU
            WarMenu.Display()
            elseif WarMenu.IsMenuOpened('DrugsMenu') then
            if WarMenu.Button('Smoke some DMT') then
                TriggerEvent("DMT")
            elseif WarMenu.Button('Take a tab of acid') then
                TriggerEvent("acid")
            elseif WarMenu.Button('🍺 Drink a beer ~r~& [get drunk]~w~. ') then
            TriggerEvent("beer")
            elseif WarMenu.Button('Sober up') then
                sober()
            elseif WarMenu.MenuButton('←←← Back','menu') then
        end


        -- ADVERT MENU
			WarMenu.Display()
        elseif WarMenu.IsMenuOpened('advertMenu') then
            if WarMenu.Button('24/7') then
                TriggerEvent( 'ad1' )
            elseif WarMenu.Button('Ammunation') then
                TriggerEvent( 'ad2' )
            elseif WarMenu.Button('Weazel News') then
                TriggerEvent( 'ad3' )
            elseif WarMenu.Button('Vanilla Unicorn') then
                TriggerEvent( 'ad4' )
            elseif WarMenu.Button('Downtown Cab Co') then
                TriggerEvent( 'ad5' )
            elseif WarMenu.Button('Los Santos Traffic Info') then
                TriggerEvent( 'ad6' )
            elseif WarMenu.Button('Los Santos Customs') then
                TriggerEvent( 'ad7' )
            elseif WarMenu.Button('Liquor Ace') then
                TriggerEvent( 'ad8' )
            elseif WarMenu.Button('Limited Gasoline') then
                TriggerEvent( 'ad9' )
            elseif WarMenu.Button('GoPostal') then
                TriggerEvent( 'ad10' )
            elseif WarMenu.Button('Mike Towing') then
                TriggerEvent( 'ad11' )
            elseif WarMenu.Button('Black Market') then
                TriggerEvent( 'ad12' )
            elseif WarMenu.Button('Cluckin\' Bell') then
                TriggerEvent( 'ad13' )
            elseif WarMenu.Button('Bugstars') then
                TriggerEvent( 'ad14' )
            elseif WarMenu.Button('Fleeca Bank') then
                TriggerEvent( 'ad15' )
            elseif WarMenu.Button('Mors Mutual Insurance') then
                TriggerEvent( 'ad17' )
            elseif WarMenu.Button('PostOP') then
                TriggerEvent( 'ad18' )
            elseif WarMenu.Button('Auto Exotic') then
                TriggerEvent( 'ad19' )
            elseif WarMenu.Button('Los Santos Water and Power') then
                TriggerEvent( 'ad20' )
            elseif WarMenu.Button('Dynasty 8') then
                TriggerEvent( 'ad21' )
            elseif WarMenu.MenuButton('Back','menu') then
            end

            -- VEHICLE MENU
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('vehMenu') then
            if WarMenu.CheckBox('Engine', Engine, function(checked)
                Engine = checked
               TriggerEvent("engine")
            end) then
            elseif WarMenu.CheckBox('Lock Doors', DoorsLocked, function(checked)
                DoorsLocked = checked
                DisplayNotification("Doors ~r~locked~w~!")
                local vehicle = GetPlayersLastVehicle()
                if DoorsLocked then
                    SetVehicleDoorsLockedForAllPlayers(vehicle, true)
                else
                    SetVehicleDoorsLockedForAllPlayers(vehicle, false)
                    DisplayNotification("Doors ~r~Unlocked~w~!")
                end               
            end) then
			elseif WarMenu.Button("~r~Delete Vehicle") then
				local vehicle = GetVehiclePedIsUsing(PlayerPedId())
				SetEntityAsMissionEntity(vehicle, 1, 1)
				SetEntityAsNoLongerNeeded(vehicle)
				DeleteEntity(vehicle)
				if not DoesEntityExist(vehicle) then
					DisplayNotification("~w~Vehicle ~r~deleted")
				else
					DisplayNotification("~r~Vehicle could not be deleted.")
                end
            elseif WarMenu.MenuButton('Back','menu') then
            end


            -- TOOLS MENU -- 
            WarMenu.Display()
        elseif WarMenu.IsMenuOpened('toolsmenu') then
            if WarMenu.Button('Display Total Online') then
                TriggerEvent("onlineplayers")
            elseif WarMenu.MenuButton('Back','menu') then
            end

---Menu control
		WarMenu.Display()
			elseif WarMenu.IsMenuOpened('closeMenu') then
				if WarMenu.Button('Yes') then
		WarMenu.CloseMenu()
			elseif WarMenu.MenuButton('No', 'menu') then
		end
		WarMenu.Display()
			elseif IsControlJustReleased(0, 244) and GetLastInputMethod( 0 ) then  --M by default
		WarMenu.OpenMenu('menu')
		end
		Citizen.Wait(0)
    end
end)

-- JeremyTheDev©