lib.locale()

function Notification(msg, type)
	lib.notify({
		description = msg,
		type = type,
	})
end

Config = {}

Config.discordlog = false