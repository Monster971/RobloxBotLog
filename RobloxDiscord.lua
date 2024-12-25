local Players = game.Players

local HttpService = game:GetService("HttpService")



Players.PlayerAdded:Connect(
	function(ConnectedPlayer)
		
		local WebHookURL = "Seu WebHook"
		
		local LogInfo = {}
		
		LogInfo["embeds"] = {
				
			{
				title = ConnectedPlayer.Name.."está em jogo",
				description = "clique no link acima para ver o perfil deste player",
				image = {
					url = "https://www.roblox.com/headshot-thumbnail/image?userid="..ConnectedPlayer.UserId.."&width=420&height=420&format=png"
				},
				url = "https://www.roblox.com/users/"..ConnectedPlayer.UserId.."/profile"
				
			}
		}
		local JsonConverter = HttpService:JSONEncode(LogInfo)
		
		HttpService:PostAsync(WebHookURL, JsonConverter)


	end
)
