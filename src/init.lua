local Players = game:GetService("Players")
local RunService = game:GetService("RunService")

local t = require(script.Parent.t)

local function getUserId(player)
	if not player and RunService:IsClient() then
		player = Players.LocalPlayer
	end
	assert(t.instanceOf("Player")(player))
	return tostring(player.UserId)
end

return getUserId