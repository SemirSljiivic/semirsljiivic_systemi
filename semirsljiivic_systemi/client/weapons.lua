
local weapons = {
	[-1716189206] = "WEAPON_KNIFE",
	[2578778090] = "WEAPON_KNIFE",
	[1737195953] = "WEAPON_NIGHTSTICK",
	[1317494643] = "WEAPON_HAMMER",
	[-1786099057] = "WEAPON_BAT",
	[-2067956739] = "WEAPON_CROWBAR",
	[1141786504] = "WEAPON_GOLFCLUB",
	[-102323637] = "WEAPON_BOTTLE",
	[-1834847097] = "WEAPON_DAGGER",
	[-102973651] = "WEAPON_HATCHET",
	[-656458692] = "WEAPON_KNUCKLE",
	[-581044007] = "WEAPON_MACHETE",
	[-1951375401] = "WEAPON_FLASHLIGHT",
	[-538741184] = "WEAPON_SWITCHBLADE",
	[-1810795771] = "WEAPON_POOLCUE",
	[419712736] = "WEAPON_WRENCH",
	[-853065399] = "WEAPON_BATTLEAXE",

	[453432689] = "WEAPON_PISTOL",
	[3219281620] = "PistolMk2",
	[1593441988] = "WEAPON_COMBATPISTOL",
	[-1716589765] = "WEAPON_PISTOL50",
	[-1076751822] = "WEAPON_SNSPISTOL",
	[-771403250] = "WEAPON_HEAVYPISTOL",
	[137902532] = "WEAPON_VINTAGEPISTOL",
	[-598887786] = "WEAPON_MARKSMANPISTOL",
	[-1045183535] = "WEAPON_REVOLVER",
	[-1746263880] = "WEAPON_DOUBLEACTION",
	[584646201] = "WEAPON_APPISTOL",
	[911657153] = "WEAPON_STUNGUN",
	[1198879012] = "WEAPON_FLAREGUN",

	[324215364] = "WEAPON_MICROSMG",
	[-619010992] = "WEAPON_MACHINEPISTOL",
	[736523883] = "WEAPON_SMG",
	[2024373456] = "SMGMk2",
	[-270015777] = "WEAPON_ASSAULTSMG",
	[171789620] = "WEAPON_COMBATPDW",
	[-1660422300] = "WEAPON_MG",
	[2144741730] = "WEAPON_COMBATMG",
	[3686625920] = "CombatMGMk2",
	[1627465347] = "WEAPON_GUSENBERG",
	[-1121678507] = "WEAPON_MINISMG",

	[-1074790547] = "WEAPON_ASSAULTRIFLE",
	[961495388] = "AssaultRifleMk2",
	[-2084633992] = "WEAPON_CARBINERIFLE",
	[4208062921] = "CarbineRifleMk2",
	[-1357824103] = "WEAPON_ADVANCEDRIFLE",
	[-1063057011] = "WEAPON_SPECIALCARBINE",
	[2132975508] = "WEAPON_BULLPUPRIFLE",
	[1649403952] = "WEAPON_COMPACTRIFLE",

	[100416529] = "WEAPON_SNIPERRIFLE",
	[205991906] = "WEAPON_HEAVYSNIPER",
	[177293209] = "HeavySniperMk2",
	[-952879014] = "WEAPON_MARKSMANRIFLE",

	[487013001] = "WEAPON_PUMPSHOTGUN",
	[2017895192] = "WEAPON_SAWNOFFSHOTGUN",
	[-1654528753] = "WEAPON_BULLPUPSHOTGUN",
	[-494615257] = "WEAPON_ASSAULTSHOTGUN",
	[-1466123874] = "WEAPON_MUSKET",
	[984333226] = "WEAPON_HEAVYSHOTGUN",
	[-275439685] = "WEAPON_DBSHOTGUN",
	[317205821] = "WEAPON_AUTOSHOTGUN",

	[-1568386805] = "WEAPON_GRENADELAUNCHER",
	[-1312131151] = "WEAPON_RPG",
	[1119849093] = "WEAPON_MINIGUN",
	[2138347493] = "WEAPON_FIREWORK",
	[1834241177] = "WEAPON_RAILGUN",
	[1672152130] = "WEAPON_HOMINGLAUNCHER",
	[1305664598] = "WEAPON_GRENADELAUNCHER",
	[125959754] = "WEAPON_COMPACTLAUNCHER",

	[-1813897027] = "WEAPON_GRENADE",
	[741814745] = "WEAPON_STICKYBOMB",
	[-1420407917] = "WEAPON_PROXMINE",
	[-1600701090] = "BZGas",
	[615608432] = "WEAPON_MOLOTOV",
	[101631238] = "FireExtinguisher",
	[883325847] = "WEAPON_PETROLCAN",
	[1233104067] = "Flare",
	[600439132] = "Ball",
	[126349499] = "Snowball",
	[-37975472] = "WEAPON_SMOKEGRENADE",
	[-1169823560] = "WEAPON_PIPEBOMB",


	[-72657034] ="Parachute"
}


Citizen.CreateThread(function()

  if(config.LogWhenHaveBlackListedGun) then
  	while true do
			local playerPed = PlayerPedId()
  		for _,k in pairs(config.blacklistedGuns) do
  			if(HasPedGotWeapon(playerPed, k, false) == 1) then
  				TriggerServerEvent("logs:addWeapon", weapons[k])
  				if(config.DeleteBlackListedGun) then
  					RemoveWeaponFromPed(playerPed, k)
  				end
  			end
				Citizen.Wait(5)
  		end
  		Citizen.Wait(5000)
  	end
  end
end)
