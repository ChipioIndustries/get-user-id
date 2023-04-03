local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local t = require(script.Parent.t)

local function getUserId(player)
	assert(t.instanceOf("Player")(player))
	if not player and RunService:IsClient() then
		player = Players.LocalPlayer
	end
	return tostring(player.UserId)
end

return getUserId