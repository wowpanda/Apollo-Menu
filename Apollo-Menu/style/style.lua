  AddEventHandler("playerSpawned", function(spawn)
        ShowNotification("~r~Apollo's Menu~w~ Loaded [~r~M~w~] ♥")
        Citizen.Wait(15000)
        ShowNotification("Need help?~n~ ~r~Join~w~ The Discord [~r~discord.gg/hHrswgd~w~] ♥")
    end)


    function ShowNotification( text )
        SetNotificationTextEntry("STRING")
        AddTextComponentSubstringPlayerName(text)
        DrawNotification(false, false)
    end