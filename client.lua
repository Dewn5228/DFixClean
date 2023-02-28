RegisterNetEvent("d-fix:fix")
AddEventHandler("d-fix:fix", function()
	local playerPed = GetPlayerPed( -1)
	if IsPedInAnyVehicle(playerPed) then
		local vehicle = GetVehiclePedIsIn(playerPed)
		SetVehicleEngineHealth(vehicle, 9999)
		SetVehiclePetrolTankHealth(vehicle, 9999)
		SetVehicleFixed(vehicle)
		SetVehicleDirtLevel(vehicle, 0)
		Notification(locale("vehicle_repaired"), "success")
	else
		Notification(locale("not_in_vehicle"), "error")
	end
end)

RegisterNetEvent('d-fix:clean')
AddEventHandler('d-fix:clean', function()
	local playerPed = GetPlayerPed( -1)
	if IsPedInAnyVehicle(playerPed, false) then
		local vehicle = GetVehiclePedIsIn(playerPed, false)
		SetVehicleDirtLevel(vehicle, 0)
		Notification(locale("vehicle_cleaned"), "success")
	else
		Notification(locale("not_in_vehicle"), "error")
	end
end)
