function data()
return {
	info = {
		minorVersion = 0,
		severityAdd = "NONE",
		severityRemove = "NONE",
		name = _("Faster Car Speeds"),
		description = _("Increases the speeds of all modern-era cars to max 90MPH.\nRecommended to use this with my Realistic Highway Speeds mod."),
		tags = { "Script Mod" },
		authors = {
			{
				name = "ThePotatoGuy",
				role = "CREATOR",
			},
		},
	},
	runFn = function (settings)
		addModifier("loadModel", function (fileName, data)
			if data.metadata.car and data.metadata.availability and data.metadata.availability.yearTo == 0 and data.metadata.roadVehicle then
				data.metadata.roadVehicle.topSpeed = 40 
				-- 40 is roughly 90mph based on the default (27.778) being equivalent to 62mph
			end
			return data
		end)
	end
}
end
