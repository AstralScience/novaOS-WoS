-- Imports


prefered_input_mode = "GetPartFromPort" -- "GetPart" for GetPart(), anything else becomes GetPartFromPort()
currrent_callback = nil

imports = {"screen", "modem", "disk"}
if prefered_input_mode == "GetPart" then
	screen = GetPart("TouchScreen")
	modem = GetPart("Modem")
	disk = GetPart("Disk")
	keyboard = GetPart("Keyboard")
	speaker = GetPart("Speaker")
	instrument = GetPart("Instrument")
else
	screen = GetPartFromPort(1, "TouchScreen")
	modem = GetPartFromPort(1, "Modem")
	disk = GetPartFromPort(1, "Disk")
	keyboard = GetPartFromPort(1, "Keyboard")
	speaker = GetPartFromPort(1, "Speaker")
	instrument = GetPartFromPort(1, "Instrument")
end

screen:ClearElements()

a = 0
while not disk and a < 30 do
	warn("Disk Not Connected to: Port 1")
	a += 1
	if prefered_input_mode == "GetPart" then
		disk = GetPart("Disk")
	else
		disk = GetPartFromPort(1, "Disk")
	end
	wait(0.5)
end
if a == 30 then
	error("Disk was not connected")
end



--[[
Disk = {
			Desktop = {

			},
			Downloads = {

			},
			Program_Files = {
				Commands = {

},
User_InformationINS = {
	password = math.random(10000, 99999)
},
User_Information = {
	user_image = 87993593278797,
	username = "Administrator",
	wallpaper = 124348555312268
}
}

}
]]
-- IMPORTANT STUFF
generate_extra_folders = true
print("HEY, IM LOADED!!!!!!!!!")
if not disk:Read("root/") then
	print("HEY, IM (files) LOADED!!!!!!!")
	for i=1, 6 do
		disk:Write("root/user/folder" .. tostring(i), {1, "Folder" .. tostring(i), math.random(0, 100)/100, math.random(0, 91)/100, 1})
	end
	disk:Write("root/bin/commands/echo/", {0, "echo", {"echo", 1, [[terminalPrint("param1", "|")]]}, "cmd", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/", {1, "Main Storage", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/user/", {1, "User", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/", {1, "Program Files", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/commands/", {1, "Commands", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/user_info/", {1, -1, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/user_public/", {1, "User Information", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/user/desktop/", {1, "Desktop", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/user/downloads/", {1, "Downloads", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/user_info/password/", {0, "Password", tostring(math.random(10000, 99999)), "txt", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/user_public/user_img/", {0, "User Image", 87993593278797, "num", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/user_public/username/", {0, "Username", "Administrator", "txt", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/user_public/bg/", {0, "Wallpaper", 124348555312268, "num", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/secret/", {1, "???", math.random(0,1), math.random(0, 0.91), 1})
	disk:Write("root/user/taskbar/", {1, "Taskbar", math.random(0, 100)/100, math.random(0, 91)/100, 1})
	
	-- Important Terminal Commands
	
	disk:Write("root/bin/commands/sudo/", {0, "sudo", {"sudo", 1, [[terminalPrint("buddy this aint linux", "|")]]}, "cmd", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/commands/exec/", {0, "exec", {"exec", 1, [[


local function callback(input)
	if input == "Y" then
		terminalPrint("Your input will now be executed.", "|")
		loadstring('param1')()
	else
		terminalPrint("Execution not completed.", "|")
	end
end

fetchInput("This execution requires permission. Continue? [Y/n]", callback)
]]}, "cmd", 0, math.random(0, 100)/100, math.random(0, 91)/100, 1})
	
	
	disk:Write("root/bin/apps/terminal/", {0, "Terminal",
		
		
		{"Terminal", 0.5, 0.5, Color3.fromRGB(30, 30, 30), [[
	local scrollFrame = screen:CreateElement("ScrollingFrame", {
		Parent = windows["Terminal"].frame,
		Position = UDim2.fromScale(0, 0),
		Size = UDim2.fromScale(1, 1),
		CanvasSize = UDim2.fromScale(0, 1),
		BackgroundColor3 = Color3.fromRGB(30, 30, 30)
	})

	local general_frame = screen:CreateElement("TextButton", {TextScaled = true, Parent = scrollFrame, Position = UDim2.fromScale(0.05, 0), Size = UDim2.fromScale(1-0.1, 0.1), BackgroundTransparency = 0, Text = ">_", Font = Enum.Font.SciFi, TextColor3 = Color3.fromRGB(0, 255, 175), TextXAlignment = "Left", BorderSizePixel = 1, BorderColor3 = Color3.fromRGB(0, 255, 175), BackgroundColor3 = Color3.fromRGB(30, 30, 30)})
	local frames = {}
	last_message_terminal_omg_yay = ""
	function addLine(data, prefix)
		print("data given: " .. tostring(data))
		print("prefix given: " .. tostring(prefix))
		table.insert(frames, screen:CreateElement("TextLabel", {TextScaled = true, Parent = scrollFrame, Position = UDim2.fromScale(0, 0), Size = UDim2.fromScale(1, 0.1), BackgroundTransparency = 1, Text = prefix .. " " .. data, Font = Enum.Font.SciFi, TextColor3 = Color3.fromRGB(255, 255, 255), TextXAlignment = "Left"}))
		uncensorConstant(frames[#frames], prefix .. " " .. data, 1.5)
		if #frames > 9 then
			scrollFrame.CanvasSize = UDim2.fromScale(0, #frames*0.1+0.1)
			for i=1, #frames do
				frames[i].Position = UDim2.fromScale(0, (i-1)*1/(#frames+1))
				frames[i].Size = UDim2.fromScale(1, 1/(#frames+1))
			end
			general_frame.Position = UDim2.fromScale(0.05, 1-1/(#frames+1))
			general_frame.Size = UDim2.fromScale(1-0.05, 1/(#frames+1))
		else
			for i=1, #frames do
				frames[i].Position = UDim2.fromScale(0, (i-1)*0.1)
			end
			general_frame.Position = UDim2.fromScale(0.05, #frames * 0.1)
		end
	end
	function terminalPrint(data, prefix)
		local splices = data:split(" ")
		local current_splice = {}
		print(splices)
		for i=1, #splices do
			print(splices[i])
			print("+")
			print(current_splice)
			table.insert(current_splice, splices[i])
			print("=")
			print(current_splice)
			if i//10 == i/10 then
				addLine(table.concat(current_splice, " "), prefix)
				current_splice = {}
			end
		end
		addLine(table.concat(current_splice, " "), prefix)
	end
	fetching = false
	function fetchInput(data, new_callback)
		fetching = true
		terminalPrint(data, "?")
		current_callback = new_callback
	end
	terminalPrint("Command Line Terminal @ novaOS Beta", "|")
	addLine("Second Line", "|")
	addLine("another line?!", "|")
	
	selected_omg_term = false
	
	general_frame.MouseButton1Click:Connect(function()
	
		selected_omg_term = not selected_omg_term
		
		if selected_omg_term then
			general_frame.TextColor3 = Color3.fromRGB(255, 255, 255)
			general_frame.BorderColor3 = Color3.fromRGB(255, 255, 255)
		else
			general_frame.TextColor3 = Color3.fromRGB(0, 255, 175)
			general_frame.BorderColor3 = Color3.fromRGB(0, 255, 175)
		end
	
	end)
	
	allowed_commands = betterSearchFiles("root/bin/commands/")
	
	keyboard.TextInputted:Connect(function(data)

		if not fetching then
			t = data:sub(1, -2)
			print(t)

			if selected_omg_term then
				local parameters = t:split(" ") 
				local finished = false
				addLine(t, ">")
				for i, v in allowed_commands do
					print(i)
					if i ~= "root/bin/commands/" then
						print(v[3][1])
						print(v[3][2])
						print(v[3][3])
						print(v[3][1] == parameters[1])
						print(#(parameters) == v[3][2] + 1)
						if v[3][1] == parameters[1] then
							print("the chosen one?")
							if #(parameters) == v[3][2] + 1  then
								print("THE CHOSEN ONE!")
								finished = true
								local final_command = v[3][3]
								for p=1, v[3][2] do
									final_command = final_command:gsub("param" .. tostring(p), tostring(parameters[p+1]))
								end
								print(final_command)
								last_message_terminal_omg_yay = t
								loadstring(final_command)()
							end
						end
					end
				end
				if finished == false then
					addLine("Your command input is invalid, try again.", "!")
				end
			end
		else
			print("Currently Fetching!")
			if selected_omg_term then
				local success, result = pcall(current_callback, data:sub(1,-2))
				if not success then
					terminalPrint(result, "!")
				end
				print("No longer fetching!")
				fetching = false
			end
		end

	end)
	
		
		
		
		
		
		
		]]}
		, "exe", 0, math.random(0,100)/100, math.random(0, 91)/100, 1})
	disk:Write("root/bin/secret/tictactoe/", {0, "Tic Tac Toe",
		
		
		
		{"Tic Tac Toe", 0.5, 0.5, Color3.fromRGB(168, 168, 168), [[
	local iteration = "Circle"
	local t1 = "A"
	local t2 = "B"
	local t3 = "C"
	local t4 = "D"
	local t5 = "E"
	local t6 = "F"
	local t7 = "G"
	local t8 = "H"
	local t9 = "I"
	
	local b1 = ""
	local b2 = ""
	local b3 = ""
	local b4 = ""
	local b5 = ""
	local b6 = ""
	local b7 = ""
	local b8 = ""
	local b9 = ""
	local grid1 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(0, 0),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid2 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(1/3, 0),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid3 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(2/3, 0),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid4 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(0, 1/3),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid5 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(1/3, 1/3),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid6 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(2/3, 1/3),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid7 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(0, 2/3),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	local grid8 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(1/3, 2/3),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	task.spawn(function()
		while grid1 do
			if grid1.Text:gsub("#", "") ~= grid1.Text or b1 ~= grid1.Text then
				grid1.Text = b1
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid2 do
			if grid2.Text:gsub("#", "") ~= grid2.Text or b2 ~= grid2.Text then
				grid2.Text = b2
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid3 do
			if grid3.Text:gsub("#", "") ~= grid3.Text or b3 ~= grid3.Text then
				grid3.Text = b3
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid4 do
			if grid4.Text:gsub("#", "") ~= grid4.Text or b4 ~= grid4.Text then
				grid4.Text = b4
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid5 do
			if grid5.Text:gsub("#", "") ~= grid5.Text or b5 ~= grid5.Text then
				grid5.Text = b5
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid6 do
			if grid6.Text:gsub("#", "") ~= grid6.Text or b6 ~= grid6.Text then
				grid6.Text = b6
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid7 do
			if grid7.Text:gsub("#", "") ~= grid7.Text or b7 ~= grid7.Text then
				grid7.Text = b7
			end
			wait(0.5)
		end
	end)
	task.spawn(function()
		while grid8 do
			if grid8.Text:gsub("#", "") ~= grid8.Text or b8 ~= grid8.Text then
				grid8.Text = b8
			end
			wait(0.5)
		end
	end)
	local grid9 = screen:CreateElement("TextButton", {
		Parent = windows["Tic Tac Toe"].frame,
		Position = UDim2.fromScale(2/3, 2/3),
		Size = UDim2.fromScale(1/3, 1/3),
		Text = "",
		Font = Enum.Font.SciFi,
		TextScaled = true
	})
	task.spawn(function()
		while grid9 do
			if grid9.Text:gsub("#", "") ~= grid9.Text or b9 ~= grid9.Text then
				grid9.Text = b9
			end
			wait(0.5)
		end
	end)
	grid1.MouseButton1Click:Connect(function()
		if t1 == "A" then
			if iteration == "Circle" then
				grid1.Text = "O"
				b1 = "O"
				t1 = iteration
				iteration = "Cross"
			else
				grid1.Text = "X"
				b1 = "X"
				t1 = iteration
				iteration = "Circle"
			end
		end
		
		if ((t1 == t2 and t2 == t3) or (t1 == t5 and t5 == t9) or (t1 == t4 and t4 == t7)) and t1 ~= "" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t1 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = " "
				b2 = " "
				b3 = " "
				b4 = " "
				b5 = " "
				b6 = " "
				b7 = " "
				b8 = " "
				b9 = " "
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = " "
				b2 = " "
				b3 = " "
				b4 = " "
				b5 = " "
				b6 = " "
				b7 = " "
				b8 = " "
				b9 = " "
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid2.MouseButton1Click:Connect(function()
		if t2 == "B" then
			if iteration == "Circle" then
				grid2.Text = "O"
				b2 = "O"
				t2 = iteration
				iteration = "Cross"
			else
				grid2.Text = "X"
				b2 = "X"
				t2 = iteration
				iteration = "Circle"
			end
		end
		
		if (t1 == t2 and t2 == t3) or (t2 == t5 and t5 == t8) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 0.9),
				BackgroundTransparency = 0.6,
				Text = t2 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid3.MouseButton1Click:Connect(function()
		if t3 == "C" then
			if iteration == "Circle" then
				grid3.Text = "O"
				b3 = "O"
				t3 = iteration
				iteration = "Cross"
			else
				grid3.Text = "X"
				b3 = "X"
				t3 = iteration
				iteration = "Circle"
			end
		end
		
		if (t1 == t2 and t2 == t3) or (t3 == t6 and t6 == t9) or (t3 == t5 and t5 == t7) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t3 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid4.MouseButton1Click:Connect(function()
		if t4 == "D" then
			if iteration == "Circle" then
				grid4.Text = "O"
				b4 = "O"
				t4 = iteration
				iteration = "Cross"
			else
				grid4.Text = "X"
				b4 = "X"
				t4 = iteration
				iteration = "Circle"
			end
		end
		
		if (t4 == t5 and t5 == t6) or (t1 == t4 and t4 == t7) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t4 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid5.MouseButton1Click:Connect(function()
		if t5 == "E" then
			if iteration == "Circle" then
				grid5.Text = "O"
				b5 = "O"
				t5 = iteration
				iteration = "Cross"
			else
				grid5.Text = "X"
				b5 = "X"
				t5 = iteration
				iteration = "Circle"
			end
		end
		
		if (t4 == t5 and t5 == t6) or (t2 == t5 and t5 == t8) or (t1 == t5 and t5 == t9) or (t3 == t5 and t5 == t7) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t5 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid6.MouseButton1Click:Connect(function()
		if t6 == "F" then
			if iteration == "Circle" then
				grid6.Text = "O"
				b6 = "O"
				t6 = iteration
				iteration = "Cross"
			else
				grid6.Text = "X"
				b6 = "X"
				t6 = iteration
				iteration = "Circle"
			end
		end
		
		if (t4 == t5 and t5 == t6) or (t3 == t6 and t6 == t9) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t6 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid7.MouseButton1Click:Connect(function()
		if t7 == "G" then
			if iteration == "Circle" then
				grid7.Text = "O"
				b7 = "O"
				t7 = iteration
				iteration = "Cross"
			else
				grid7.Text = "X"
				b7 = "X"
				t7 = iteration
				iteration = "Circle"
			end
		end
		
		if (t1 == t4 and t4 == t7) or (t7 == t8 and t8 == t9) or (t7 == t5 and t5 == t3) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t7 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid8.MouseButton1Click:Connect(function()
		if t8 == "H" then
			if iteration == "Circle" then
				grid8.Text = "O"
				b8 = "O"
				t8 = iteration
				iteration = "Cross"
			else
				grid8.Text = "X"
				b8 = "X"
				t8 = iteration
				iteration = "Circle"
			end
		end
		
		if (t2 == t5 and t5 == t8) or (t7 == t8 and t8 == t9) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t8 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	grid9.MouseButton1Click:Connect(function()
		if t9 == "I" then
			if iteration == "Circle" then
				grid9.Text = "O"
				b9 = "O"
				t9 = iteration
				iteration = "Cross"
			else
				grid9.Text = "X"
				b9 = "X"
				t9 = iteration
				iteration = "Circle"
			end
		end
		
		if (t1 == t5 and t5 == t9) or (t7 == t8 and t8 == t9) or (t3 == t6 and t6 == t9) then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = t9 .. " Won!",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		elseif t1 ~= "A" and t2 ~= "B" and t3 ~= "C" and t4 ~= "D" and t5 ~= "E" and t6 ~= "F" and t7 ~= "G" and t8 ~= "H" and t9 ~= "I" then
			local win = screen:CreateElement("TextLabel", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(1, 1),
				BackgroundTransparency = 0.6,
				Text = "Draw..",
				TextScaled = true
			})
			local retry = screen:CreateElement("TextButton", {
				Parent = windows["Tic Tac Toe"].frame,
				Position = UDim2.fromScale(0, 0.9),
				Size = UDim2.fromScale(1, 0.1),
				Text = "Retry?",
				TextScaled = true
			})
			retry.MouseButton1Click:Connect(function()
				iteration = "Circle"
				t1 = "A"
				t2 = "B"
				t3 = "C"
			    t4 = "D"
				t5 = "E"
				t6 = "F"
			    t7 = "G"
				t8 = "H"
				t9 = "I"
	
				b1 = ""
				b2 = ""
				b3 = ""
				b4 = ""
				b5 = ""
				b6 = ""
				b7 = ""
				b8 = ""
				b9 = ""
				
				win:Destroy()
				retry:Destroy()
			end)
		end
	end)
	
	task.spawn(function()
		if win and retry then
			if win.Text:gsub("#", "") ~= win.Text then
				if #win.Text == 11 then
					win.Text = "Circle Won!"		
				elseif #win.text == 10 then
					win.Text = "Cross Won!"
				else
					win.Text = "Draw..."
				end
			end
			if retry.Text:gsub("#", "") ~= retry.Text then
				retry.Text = "Retry?"
			end
		end
		wait(0.5)
	end)
	]]

		}
		
		
		
		, "exe", 0, math.random(0,100)/100, math.random(0, 91)/100, 1})
	first_time = true
else
	first_time = false
end


disk:Write("root/", {1, "Main Storage", math.random(0, 100)/100, math.random(0, 91)/100, 1})
password = disk:Read("root/bin/user_info/password/")[3]
user_image = disk:Read("root/bin/user_public/user_img/")[3]
username = disk:Read("root/bin/user_public/username/")[3]
wallpaper = disk:Read("root/bin/user_public/bg/")[3]
-- Folder Format: name = {stuff here}

-- File Format: name = {data, extension}

--

--

--

--

--

--======

-- Types
type Packet = {from: string, to: string, data: any}

-- Window Management?
cancelRatio = 45/((screen:GetDimensions().Y * 0.8 * 0.15))
print(cancelRatio)
topFrameSize = screen:GetDimensions().Y*0.1
random = false
hold = nil
globalHold = false
users = {"tcw131106", "tcw131107"}
players = require("players")
windows = {}
function clickCount(button, delay)
	local count = 0
	local delaying = true
	local done = false
	
	task.spawn(function()
		wait(delay)
		delaying = false
	end)
	
	button.MouseButton1Click:Connect(function()
		if delaying then
			count = count + 1
		end
	end)
	
	while not done do
		if not delaying then
			return count
		end
	end
end
function uncensorDict(label, text, delay)
	task.spawn(function()
		while label do
			print("yes")
			if label then
				if label.Text:gsub("#", "") ~= label.Text or label.Text:gsub("_", "") == "" then
					if label.Text:gsub("_", "") ~= "" then
						label.Text = text[#label.Text]
					end
				end
			end
			wait(delay)
		end
	end)
end
function uncensorConstant(label, text, delay)
	task.spawn(function()
		while label and (label.Text:gsub("#", "") ~= label.Text or label.Text:gsub("_", "") == "") do
			print("yes")
			if label.Text:gsub("_", "") ~= "" then
				label.Text = text
			end
			wait(delay)
		end
	end)
end
global = {
	timah = "0:00"
}

function refactorImage(path)
	if path ~= "root/" and path:sub(1, #("root/bin/")) ~= "root/bin/" then
		local path_reading = disk:Read(path)
		if path_reading and path_reading[1] == 0 and path_reading[4] == "dec" then
			return "rbxassetid://" .. path_reading[3]
		end
	end
end
function uncensorVariable(label, variable_name, delay)
	task.spawn(function()
		while label do
			if (label.Text:gsub("_", "") ~= "") and (label.Text:gsub("#", "") ~= label.Text) then
				label.Text = global[variable_name]
			end
			
			wait(delay)
		end
	end)
end

has_been_maximized = false

function preWindow(name, sizeX, sizeYOrig, color, function_data, run_data)
	
	print("NOW LOADING " .. name)
	print(function_data)
	
	local firstClick = true
	local sizeY = sizeYOrig - (topFrameSize/(sizeYOrig*screen:GetDimensions().Y) * sizeYOrig) * 1.5

	local isActive = true
	local lockedIn = false
	local minimized = false
	local maximized = false

	local bottomFrame = screen:CreateElement("Frame", {
		Position = UDim2.fromScale(0.5-sizeX/2, (0.5-sizeY/2) - (topFrameSize/2)/screen:GetDimensions().Y + sizeY + 0.05),
		Size = UDim2.fromScale(sizeX, topFrameSize/(sizeY*screen:GetDimensions().Y) * sizeY),
		BackgroundColor3 = color,
		BackgroundTransparency = 0,
		ZIndex = 500
	})
	local curve1b = Instance.new("UICorner")
	curve1b.Parent = bottomFrame
	curve1b.CornerRadius = UDim.new(0.45, 0)

	local mainFrame = screen:CreateElement("Frame", {
		Position = UDim2.fromScale(0.5-sizeX/2, 0.5-sizeY/2+0.05),
		Size = UDim2.fromScale(sizeX, sizeY),
		BackgroundColor3 = color,
		BorderSizePixel = 0,
		ZIndex = 500
	})

	windows[name] = {frame = mainFrame}

	local connectFrame = screen:CreateElement("Frame", {
		Parent = mainFrame,
		Position = UDim2.fromScale(0, 0-topFrameSize/2/screen:GetDimensions().Y/sizeY),
		Size = UDim2.fromScale(1, topFrameSize/2/screen:GetDimensions().Y/sizeY),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BorderSizePixel = 0
	})


	local topFrame = screen:CreateElement("Frame", {
		Position = UDim2.fromScale(0.5-sizeX/2, (0.5-sizeY/2) - (topFrameSize/2)/screen:GetDimensions().Y),
		Size = UDim2.fromScale(sizeX, topFrameSize/(sizeY*screen:GetDimensions().Y) * sizeY),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		BackgroundTransparency = 0,
		ZIndex = 500
	})



	local curve1 = Instance.new("UICorner")
	curve1.Parent = topFrame
	curve1.CornerRadius = UDim.new(0.45, 0)




	local buttonSize = (topFrameSize)/(screen:GetDimensions().X * sizeX)
	local buttonOffsetX = (0.1 * topFrameSize)/(screen:GetDimensions().X * sizeX)
	local buttonOffsetXtrue = (0.15 * topFrameSize)/(screen:GetDimensions().X * sizeX)
	local cancelButtonOutline = screen:CreateElement("Frame", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonOffsetX, 0.1),
		Size = UDim2.fromScale(buttonSize*0.8, 0.8),
		BackgroundColor3 = Color3.fromRGB(255, 73, 73)
	})
	local cancelButton = screen:CreateElement("TextButton", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonOffsetXtrue, 0.15),
		Size = UDim2.fromScale(buttonSize*0.7, 0.7),
		BackgroundColor3 = Color3.fromRGB(81, 81, 81),
		Text = "X",
		TextColor3 = Color3.fromRGB(255, 74, 74),
		Font = Enum.Font.SciFi,
		TextSize = (screen:GetDimensions().Y * sizeY * 0.15) * cancelRatio,
		TextScaled = true
	})
	local curve2 = Instance.new("UICorner")
	curve2.Parent = cancelButton
	curve2.CornerRadius = UDim.new(1, 0)
	local curve3 = Instance.new("UICorner")
	curve3.Parent = cancelButtonOutline
	curve3.CornerRadius = UDim.new(1, 0)

	local minimizeButtonOutline = screen:CreateElement("Frame", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonOffsetX+(1-buttonSize), 0.1),
		Size = UDim2.fromScale(buttonSize*0.8, 0.35),
		BackgroundColor3 = Color3.fromRGB(255, 243, 80)
	})
	local minimizeButton = screen:CreateElement("TextButton", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonOffsetXtrue+(1-buttonSize), 0.15),
		Size = UDim2.fromScale(buttonSize*0.7, 0.25),
		BackgroundColor3 = Color3.fromRGB(81, 81, 81),
		Text = "-",
		TextColor3 = Color3.fromRGB(255, 255, 89),
		Font = Enum.Font.SciFi,
		TextSize = (screen:GetDimensions().Y * sizeY * 0.15) * cancelRatio,
		TextScaled = true
	})
	local curve4 = Instance.new("UICorner")
	curve4.Parent = minimizeButton
	curve4.CornerRadius = UDim.new(1, 0)
	local curve5 = Instance.new("UICorner")
	curve5.Parent = minimizeButtonOutline
	curve5.CornerRadius = UDim.new(1, 0)

	local maximizeButtonOutline = screen:CreateElement("Frame", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonOffsetX+(1-buttonSize), 0.55),
		Size = UDim2.fromScale(buttonSize*0.8, 0.35),
		BackgroundColor3 = Color3.fromRGB(51, 255, 58)
	})
	local maximizeButton = screen:CreateElement("TextButton", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonOffsetXtrue+(1-buttonSize), 0.6),
		Size = UDim2.fromScale(buttonSize*0.7, 0.25),
		BackgroundColor3 = Color3.fromRGB(81, 81, 81),
		Text = "O",
		TextColor3 = Color3.fromRGB(51, 255, 58),
		Font = Enum.Font.SciFi,
		TextSize = (screen:GetDimensions().Y * sizeY * 0.15) * cancelRatio,
		TextScaled = true
	})
	local curve6 = Instance.new("UICorner")
	curve6.Parent = maximizeButton
	curve6.CornerRadius = UDim.new(1, 0)
	local curve7 = Instance.new("UICorner")
	curve7.Parent = maximizeButtonOutline
	curve7.CornerRadius = UDim.new(1, 0)

	local upperText = screen:CreateElement("TextLabel", {
		Parent = topFrame,
		Position = UDim2.fromScale(buttonSize, 0),
		Size = UDim2.fromScale((1 - buttonSize*2), 1),
		Text = name,
		TextColor3 = Color3.fromRGB(26, 26, 26),
		TextScaled = true,
		Font = Enum.Font.SciFi,
		BackgroundTransparency = 1,
		BorderSizePixel = 0
	})
	wait(0.2)
	print(upperText.Text)

	task.spawn(function()
		while string.gsub(upperText.Text, "#", "A") ~= upperText.Text or string.gsub(upperText.Text, "_", "A") ~= upperText.Text do
			upperText:ChangeProperties({
				Text = name
			})
			wait(2)
		end
	end)

	task.spawn(function()
		while string.gsub(cancelButton.Text, "#", "A") ~= cancelButton.Text or string.gsub(cancelButton.Text, "_", "A") ~= cancelButton.Text do
			cancelButton:ChangeProperties({
				Text = "X"
			})
			wait(2)
		end
	end)

	task.spawn(function()
		while string.gsub(minimizeButton.Text, "#", "A") ~= minimizeButton.Text or string.gsub(minimizeButton.Text, "_", "A") ~= minimizeButton.Text do
			minimizeButton:ChangeProperties({
				Text = "-"
			})
			wait(2)
		end
	end)

	task.spawn(function()
		while string.gsub(maximizeButton.Text, "#", "A") ~= maximizeButton.Text or string.gsub(maximizeButton.Text, "_", "A") ~= maximizeButton.Text do
			maximizeButton:ChangeProperties({
				Text = "O"
			})
			wait(2)
		end
	end)



	loadstring(function_data)()


	cancelButton.MouseButton1Click:Connect(function()
		if not has_been_maximized then
			isActive = false
			mainFrame:Destroy()
			topFrame:Destroy()
			bottomFrame:Destroy()
			windows[name] = nil
		end
	end)

	minimizeButton.MouseButton1Click:Connect(function()
		if not has_been_maximized then
			if not minimized then
				mainFrame:ChangeProperties({Visible=false})
				bottomFrame:ChangeProperties({Visible=false})
				connectFrame:ChangeProperties({Visible=false})
				minimized = true
			else
				mainFrame:ChangeProperties({Visible=true})
				bottomFrame:ChangeProperties({Visible=true})
				connectFrame:ChangeProperties({Visible=true})
				minimized = false
			end
		end
	end)

	maximizeButton.MouseButton1Click:Connect(function()
		if not has_been_maximized or (has_been_maximized and maximized) then
			if not maximized then
				topFrame:ChangeProperties({Position=UDim2.fromScale(0, 0),
					Size = UDim2.fromScale(1, topFrame.Size.Y.Scale)
				})
				mainFrame:ChangeProperties({Position=UDim2.fromScale(0, topFrameSize/2/screen:GetDimensions().Y+0.05),
					Size=UDim2.fromScale(1, 1-topFrameSize/2/screen:GetDimensions().Y-0.05)
				})
				bottomFrame:ChangeProperties({Visible=false})
				maximized = true
				has_been_maximized = true
				taskbar.Visible = false
			else
				mainFrame:ChangeProperties({Size=UDim2.fromScale(sizeX, sizeY)})
				bottomFrame:ChangeProperties({Position=UDim2.fromScale(0, sizeY+0.05)})
				if bottomFrame.Visible == false then
					bottomFrame:ChangeProperties({Visible=true})
				end
				topFrame:ChangeProperties({Size = UDim2.fromScale(sizeX, topFrameSize/(sizeY*screen:GetDimensions().Y) * sizeY)})
				maximized = false
				has_been_maximized = false
				taskbar.Visible = true
			end
		end
	end)

	local dragger = nil



	screen.CursorMoved:Connect(function()
		if hold == true and isActive == true and maximized == false then




			local cursors = screen:GetCursors()
			for player, cursor in cursors do
				if screen:GetCursor(dragger) == nil then
					firstClick = true
				end
				if firstClick or dragger == cursor.Player then
					local startX = topFrame.Position.X.Scale * screen:GetDimensions().X
					local endX = startX + topFrame.Size.X.Scale * screen:GetDimensions().X
					local startY = topFrame.Position.Y.Scale * screen:GetDimensions().Y
					local endY = startY + topFrame.Size.Y.Scale * screen:GetDimensions().Y
					if (startX < cursor.X and cursor.X < endX and startY < cursor.Y and cursor.Y < endY and globalHold == false) or lockedIn == true then
						lockedIn = true
						globalHold = true
						local topParent = topFrame.Parent
						local mainParent = mainFrame.Parent
						local bottomParent = bottomFrame.Parent
						topFrame.Parent = nil
						mainFrame.Parent = nil
						bottomFrame.Parent = nil
						bottomFrame.Parent = bottomParent
						mainFrame.Parent = mainParent
						topFrame.Parent = topParent
						topFrame:ChangeProperties({
							Position = UDim2.fromScale(cursor.X/screen:GetDimensions().X-sizeX/2, cursor.Y/screen:GetDimensions().Y-topFrameSize/2/screen:GetDimensions().Y)
						})
						mainFrame:ChangeProperties({
							Position = UDim2.fromScale(cursor.X/screen:GetDimensions().X-sizeX/2, (cursor.Y+topFrameSize/2)/screen:GetDimensions().Y+0.05-topFrameSize/2/screen:GetDimensions().Y)
						})
						bottomFrame:ChangeProperties({
							Position = UDim2.fromScale(cursor.X/screen:GetDimensions().X-sizeX/2, (cursor.Y+sizeY*screen:GetDimensions().Y)/screen:GetDimensions().Y+0.05-topFrameSize/2/screen:GetDimensions().Y)
						})

						firstClick = false
						
						bottomFrame.Parent = bottomFrame.Parent
						mainFrame.Parent = mainFrame.Parent
						topFrame.Parent = topFrame.Parent

						dragger = cursor.Player

					end
				end
			end
		end
	end)

	screen.CursorReleased:Connect(function()
		hold = false
		lockedIn = false
		globalHold = false
		firstClick = true
		dragger = nil
		print("FIRE!!")
		print(hold)
		print(lockedIn)
		print(globalHold)
	end)
end
banned = {"disk", "file", "folder", "ZIndex", "loadstring(", "terminalPrint(", "addLine(", "createWindow(", "fetching", "fetchInput(", "last_message_terminal_omg_yay", "selected_omg_term"}
perms = {}
function verifyData(data: string)
	for i=1, #banned do
		if string.lower(data) == banned[i] then
			return false
		end
	end
	return true
end
function createWindow(name: string, sizeX: number, sizeYOrig: number, color: Color3, function_data: string, run_data: any, path: string)
	if windows[name] == nil then
		if function_data:gsub("preWindow", "") == function_data and function_data:gsub("perms", "") == function_data then
			if (verifyData(function_data) or perms[name] ~= nil) or (name == "Terminal" and path == "root/bin/apps/terminal/") then
				preWindow(name, sizeX, sizeYOrig, color, function_data, run_data)

			else
				local warning = screen:CreateElement("TextButton", {
					Position = UDim2.fromScale(0, 0),
					Size = UDim2.fromScale(1, 1),
					BackgroundColor3 = Color3.fromRGB(49, 49, 49),
					Text = "Warning! This application requires special permissions or influences the terminal. Click this button to add application to permisssions list.",
					Font = Enum.Font.SciFi,
					TextColor3 = Color3.fromRGB(255, 101, 101),
					TextScaled = true
				})
				local doing = true
				task.spawn(function()
					wait(2)
					if doing then
						warning:Destroy()
					end
				end)

				warning.MouseButton1Click:Connect(function()
					doing = false
					warning:Destroy()
					perms[name] = 0

					preWindow(name, sizeX, sizeYOrig, color, function_data, run_data)
				end)
			end
		end
		
	end

end

-- Internet System
function sendPacket(packet)
	if GetPartFromPort(1, "Modem") then
		if not modem then
			modem = GetPartFromPort(1, "Modem")
		end
		print("Modem connected..")
		print("Analyzing packet...")
		print("From: " .. packet.from)
		print("To: " .. packet.to)
		print("Data: " .. tostring(packet.data))
		print("Checking user...")
		if packet.from == modem.NetworkID then
			print("User valid")
			print("Sending to " .. packet.to .. "...")
			modem:SendMessage(packet.data, packet.to)
			print("Packet Sent!")
		else
			warn("User invalid, cancelled operation")
		end
	else
		warn("MODEM NOT CONNECTED!")
	end
end

function openPacket(packet)
	if type(packet.data) == table then
		print("Packet is table: confirmed")
		createWindow(packet.data[1], packet.data[2], packet.data[3], packet.data[4], packet.data[5])
	else
		warn("Not a table...?")
	end
	
end

-- File System
function addFolder(path, name)
	if disk:Read(path) == nil then
		disk:Write(path, {1, name, math.random(0, 1), math.random(0, 0.91), 1})
		if path:sub(1, #("root/user/desktop/")) == "root/user/desktop/" then
			desktopDisplay(path)
		end
	end
end

function removeFile(path)
	if path ~= "root/" and path:gsub("root/bin/", "") == path then
		disk:Write(path, nil)
		if path:sub(1, #("root/user/desktop/")) == "root/user/desktop/" and path ~= "root/user/desktop/" then
			desktopDisplay(path)
		end
		if path:sub(1, #("root/user/taskbar/")) == "root/user/taskbar/" and path ~= "root/user/taskbar/" then
			addIcon(path)
		end
	end
end

function addFile(path, name, data, extension, file_image)
	if disk:Read(path) == nil then
		disk:Write(path, {0, name, data, extension, file_image, math.random(0, 100)/100, math.random(0, 91)/100, 1})
		if path:sub(1, #("root/user/desktop/")) == "root/user/desktop/" and path ~= "root/user/desktop/" then
			desktopDisplay(path)
		end
		if path:sub(1, #("root/user/taskbar/")) == "root/user/taskbar/" and path ~= "root/user/taskbar/" then
			addIcon(path)
		end
	end
end


function folderOrFile(path)
	if disk:Read(path) == nil then
		return false
	elseif disk:Read(path)[1] == 0 then
		return "File"
	else
		return "Folder"
	end
end

function readPath(path)
	if path ~= "root/" and path:gsub("root/bin/", "") == path then
		if disk:Read(path) ~= nil then
			return disk:Read(path)
		else
			return false
		end
	end
end

function editFile(path, data)
	if path ~= "root/" and path:gsub("root/bin/", "") == path then
		if disk:Read(path) ~= nil then
			disk:Write(path, data)
		end
	end
end

function diskClear(confirmation1, confirmation2, confirmation3, confirmation4)
	if confirmation1 and confirmation2 and confirmation3 and confirmation4 then
		disk:Clear()
	end
end

function shutdown(confirmation1, confirmation2, delay)
	if confirmation1 and confirmation2 then
		task.spawn(function()
			wait(delay)
			GetPartFromPort(1, "Microcontroller"):Shutdown()
		end)
	end
end

function connectPeripheral(portID, peripheral, peripheral_name)
	loadstring(peripheral_name .. " = GetPartFromPort(" .. tostring(portID) .. ", " .. peripheral .. ")")()
end

function executeFile(path, execution_type)
	if execution_type == "exe" then
		if disk:Read(path) ~= nil then
			local dataB = disk:Read(path)
			createWindow(dataB[3][1], dataB[3][2], dataB[3][3], dataB[3][4], dataB[3][5], path)
		end
	end
end

function filter(keyword, list)
	local filtered = {}
	for i=1, #list do
		if list[i]:gsub(keyword, "") ~= list[i] then
			table.insert(filtered, list[i])
			
		end
	end
	return filtered
end

function searchFiles(keyword)
	local filtered = {}
	local dict = disk:ReadAll()
	
	for i, v in dict do
		

		
		if i:gsub("root/bin/", "A") == i and string.lower(v[2]):gsub(string.lower(keyword), "A") ~= string.lower(v[2]) then
			filtered[i] = v
		end
		
		
	end
	
	return filtered
end

function betterSearchFiles(keyword)
	local filtered = {}
	local dict = disk:ReadAll()

	for i, v in dict do



		if #i >= #keyword and i:sub(1, #keyword) == keyword then
			filtered[i] = v
		end


	end

	return filtered
end

function halveSpacedMessage(message)
	return message:sub(1, (#message-1)/2)
end

print(halveSpacedMessage("12 357"))

function returnHour(full_time)
	return tonumber(full_time:sub(1, full_time:find(":")-1))
end


function prefixFinder(prefix)
	local allFiles = disk:ReadAll()
	local finded = {}
	
	for i, v in allFiles do
		if tostring(i):gsub(prefix, "") ~= tostring(i) and tostring(i) ~= prefix then
			finded[i] = v
		end
	end
	
	return finded
end

desktopDisplayFrames = {}
desktopDisplays = {}
taskbar_items = {{}}
icon = nil
searchO = nil
total_length = nil
taskbar = nil
global_horizontality = "Center"

function destroyDisplay(path)
	if desktopDisplayFrames[path] ~= nil then
		desktopDisplayFrames[path]:Destroy()
		desktopDisplays[path] = nil
	end
end

function moveTaskbar(scale, icon, searchO, horizontal, view_mode)
	local scale = len(taskbar_items[view_mode])+4
	if horizontal == "Center" then
		icon.Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*scale, 0)
		searchO.Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*scale+icon_size+0.01, 0)
		search.Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*scale + icon_size + 0.01 + 0.05*0.09*screen:GetDimensions().Y/screen:GetDimensions().X, 0.05)
		for i, v in taskbar_items[view_mode] do
			print("TIME TO MOVE!!!!")
			print(i)
			print(scale)
			print(icon_size)
			print(v[2] % 9)
			print(v[2] % 9+3)
			local A = (v[2] % 9+3)
			print(A)
			print(A == 3)
			if A == 3 then
				print('alr')
				A = 12
			end
			print(A)
			v[1].Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*scale+icon_size*(A), 0)
			v[1].Visible = true

		end
	else
		icon.Position = UDim2.fromScale(0, 0)
		searchO.Position = UDim2.fromScale(icon_size+0.01, 0)
		search.Position = UDim2.fromScale(icon_size + 0.01 + 0.05*0.09*screen:GetDimensions().Y/screen:GetDimensions().X, 0.05)
		print("READY! TAP TAP TAP!")
		for i, v in taskbar_items[view_mode] do
			print(i)
			print(scale)
			print(icon_size)
			print(v[2] % 9)
			print(v[2] % 9+3)
			local A = (v[2] % 9+3)
			if A == 3 then
				A = 12
			end
			print(A)
			v[1].Position = UDim2.fromScale(icon_size*(A), 0)
			v[1].Visible = true

		end
	end
	
end

function removeIcon(view_mode, path)
	print(taskbar_items[view_mode][path])
	if taskbar_items[view_mode][path] ~= nil then
		local B = taskbar_items[view_mode][path]
		taskbar_items[view_mode][path][1]:Destroy()
		taskbar_items[view_mode][path] = nil
		
		
		
		total_length = total_length - 1
		
		
		print("START!")
		for i, v in taskbar_items[view_mode] do
			print(i)
			print(v)
		end
		taskbar_items[view_mode][path] = nil
		print(B[2])
		for key, value in pairs(taskbar_items[view_mode]) do
			print(value[2])
			if value ~= nil and value[2] > B[2] then
				local returning = {}
				local reader = disk:Read(key)
				if reader then
					for i = 1, #reader-1 do
						table.insert(returning, reader[i])
					end
					table.insert(returning, value[2] - 1)

					disk:Write(key, returning)
				end
				taskbar_items[view_mode][key] = {value[1], value[2] - 1}
			end
		end
		
		for i, v in taskbar_items[view_mode] do
			print(i)
			print(v)
		end
		
		
		
		moveTaskbar(total_length, icon, searchO, global_horizontality, 1)
		
		
	end
end

function len(list)
	if list == {} then
		return 0
	else
		local count = 0
		for i, v in list do
			count = count + 1
		end
		return count
	end
end

function addIcon(path, auto, custom, custom_image, custom_name)
	print("REMEMBER!!!!!!!!!!!!!!!!!")
	print(len(taskbar_items))
	if taskbar_items[#(taskbar_items)][path] == nil then
		auto = auto == true
		total_length = math.min(9, total_length + 1)
		
		local returning = nil

		local mainImage = screen:CreateElement("ImageButton", {
			Parent = taskbar,
			Position = UDim2.fromScale(0, 0),
			Size = UDim2.fromScale(icon_size, 1),
			ScaleType = "Fit",
			BackgroundTransparency = 0.6,
			Visible = false
		})
		
		local curvas = Instance.new("UICorner")
		curvas.Parent = mainImage
		curvas.CornerRadius = UDim.new(0.15, 0)
		
		local pathe = path
		local view = nil
		if not custom then
			if auto then
				local readah = disk:Read(path)
				local returning = {}
				for i=1, #readah-1 do
					table.insert(returning, readah[i])
				end
				if len(taskbar_items[#taskbar_items]) == 9 then
					table.insert(returning, len(taskbar_items)*9+1)
				else
					table.insert(returning, len(taskbar_items[#taskbar_items])+1+(len(taskbar_items)-1)*9)
				end
				disk:Write(path, returning)
			end
			local path = disk:Read(path)
			for i=1, #path do
				print(path[i])
			end
			if len(taskbar_items[#taskbar_items]) == 9 then
				table.insert(taskbar_items, {})
				taskbar_items[#taskbar_items][pathe] = {mainImage, path[#path] % 9}
			else
				taskbar_items[#taskbar_items][pathe] = {mainImage, path[#path] % 9}
			end


			if path[1] == 1 then
				mainImage.Image = "rbxassetid://93157667193486"
			else
				mainImage.Image = path[5]
			end


			
		else
			
			pathe = custom_name
			
			if custom_image == "File" then
				mainImage.Image = "rbxassetid://93157667193486"
			else
				mainImage.Image = custom_image
			end
			
			if len(taskbar_items[#taskbar_items]) == 9 then
				table.insert(taskbar_items, {})
				taskbar_items[#taskbar_items][pathe] = {mainImage, 0}
			else
				taskbar_items[#taskbar_items][pathe] = {mainImage, len(taskbar_items[#taskbar_items])+1}
			end
			
			returning = mainImage
			
			
		end
		
		view = #taskbar_items
		
		print("LOOK AT THIS!")
		print(view)
		print("ALRIGHT YOURE GOOD!")
		mainImage.MouseButton1Click:Connect(function()
			print("HEY! DO SOMETHING PLEASE!")
			removeIcon(view, pathe)
		end)

		moveTaskbar(total_length, icon, searchO, global_horizontality, 1)
		
		return returning
	end
end



function desktopDisplay(path)
	print(path)
	print(desktopDisplays[path])
	if desktopDisplays[path] == nil then
		desktopDisplayFrames[path] = mainDisplay
		desktopDisplays[path] = true
		local pathe = path
		local path = disk:Read(path)
		print(#path)
		print(path[#path-2])
		print(path[#path-1])
		local mainDisplay = screen:CreateElement("TextButton", {
			Position = UDim2.fromScale(path[#path-2], path[#path-1]),
			Size = UDim2.fromScale(0.1*screen:GetDimensions().Y/screen:GetDimensions().X, 0.1),
			BorderSizePixel = 0,
			BackgroundTransparency = 0.6,
			Text = " "
		})



		local curvas = Instance.new("UICorner")
		curvas.Parent = mainDisplay
		curvas.CornerRadius = UDim.new(0.15, 0)

		local mainImage = screen:CreateElement("ImageLabel", {
			Parent = mainDisplay,
			Position = UDim2.fromScale(0, 0),
			Size = UDim2.fromScale(1, 0.8),
			ScaleType = "Fit",
			BackgroundTransparency = 1
		})

		local displayText = screen:CreateElement("TextLabel", {
			Parent = mainDisplay,
			Position = UDim2.fromScale(0, 0.8),
			Size = UDim2.fromScale(1, 0.2),
			Text = path[2],
			TextScaled = true,
			BorderSizePixel = 0,
			BackgroundTransparency = 1,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			Font = Enum.Font.SciFi
		})

		uncensorConstant(displayText, path[2], 1)

		local clicking = false
		local dragger = nil
		local tracking = nil
		local clicker = true

		screen.CursorPressed:Connect(function(cursor)
			tracking = cursor.Player
			print(tracking)
		end)

		mainDisplay.MouseButton2Down:Connect(function()
			print("yooo!")
			clicking = true
			dragger = tracking
			print(clicking)
			print(dragger)
		end)

		mainDisplay.MouseButton1Click:Connect(function()
			for i=1, #path do
				print(path[i])
			end


		end)
		
		mainDisplay.MouseButton1Up:Connect(function()
			clicker = true
		end)
		
		mainDisplay.MouseButton1Down:Connect(function()
			clicker = false
			task.spawn(function()
				wait(1.5)
				if clicker == false then
					clicker = true
					destroyDisplay(pathe)
				end
			end)
		end)
		

		screen.CursorMoved:Connect(function(cursor)
			if dragger ~= nil and clicking == true and cursor.Player == dragger then
				mainDisplay.Position = UDim2.fromScale(
					cursor.X/screen:GetDimensions().X-0.05*screen:GetDimensions().Y/screen:GetDimensions().X,
					cursor.Y/screen:GetDimensions().Y-0.05
				)
				
				if folderOrFile(pathe) == "Folder" then
					disk:Write(1, path[2], cursor.X/screen:GetDimensions().X-0.05*screen:GetDimensions().Y/screen:GetDimensions().X, cursor.Y/screen:GetDimensions().Y-0.05, path[5])
				else
					disk:Write(0, path[2], path[3], path[4], 0, cursor.X/screen:GetDimensions().X-0.05*screen:GetDimensions().Y/screen:GetDimensions().X, cursor.Y/screen:GetDimensions().Y-0.05, path[8])
				end
			end
		end)

		mainDisplay.MouseButton2Up:Connect(function()
			clicking = false
			dragger = nil
			print("UP!")
		end)
		
		

		if path[1] == 1 then
			mainImage.Image = "rbxassetid://93157667193486"
		else
			mainImage.Image = path[5]
		end
	end
end


function authenticate()
	local frame = screen:CreateElement("ImageLabel", {
		Position = UDim2.fromScale(0, 0),
		Size = UDim2.fromScale(1, 1),
		BackgroundTransparency = 1,
		Image = "rbxassetid://125908764338446",
		ImageTransparency = 0,
		ScaleType = "Crop",
		ZIndex = 1499
	})

	local login_menu = screen:CreateElement("Frame", {
		Position = UDim2.fromScale(0.2, 0.05),
		Size = UDim2.fromScale(0.6, 0.9),
		BackgroundTransparency = 0.5,
		BackgroundColor3 = Color3.fromRGB(43, 43, 43),
		ZIndex = 1500
	})

	local user_logo = screen:CreateElement("ImageLabel", {
		Parent = login_menu,
		Position = UDim2.fromScale(0.15, 0.15*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)),
		Size = UDim2.fromScale(0.7, 0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9) * 0.7),
		BackgroundTransparency = 1,
		Image = "rbxassetid://" .. tostring(user_image),
		ImageTransparency = 0,
		ScaleType = "Fit"
	})



	local user_text = screen:CreateElement("TextLabel", {
		Parent = login_menu,
		Position = UDim2.fromScale(0, 0.15*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7),
		Size = UDim2.fromScale(1, 0.2),
		Text = "AUTHENTICATION REQUIRED! Type 'C' to cancel.",
		Font = Enum.Font.SciFi,
		BackgroundTransparency = 1,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true
	})

	task.spawn(function()
		while user_text do
			if user_text.Text:gsub("#", "") ~= user_text.Text then
				user_text.Text = "AUTHENTICATION REQUIRED! Type 'C' to cancel."
				if user_text.Text:gsub("_", "") == login_button.Text then
					break
				end
			end
			wait(0.05)
		end
	end)



	local curve150 = Instance.new("UICorner")
	curve150.Parent = login_menu
	curve150.CornerRadius = UDim.new(0.1, 0)

	

	local box = screen:CreateElement("TextLabel", {
		Parent = login_menu,
		Position = UDim2.fromScale(0.05, 0.15*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7+0.2+0.05),
		Size = UDim2.fromScale(0.6, 0.1),
		Text = "Password Here",
		Font = Enum.Font.SciFi,
		BackgroundTransparency = 0,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,
		BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	})
	local inputted = box.Text
	local login_button = screen:CreateElement("TextButton", {
		Parent = login_menu,
		Position = UDim2.fromScale(0.7, 0.15*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7+0.2+0.05),
		Size = UDim2.fromScale(0.25, 0.1),
		Text = "Auth",
		Font = Enum.Font.SciFi,
		BackgroundTransparency = 0,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,
		BackgroundColor3 = Color3.fromRGB(48, 48, 48),
	})

	task.spawn(function()
		while login_button do
			if login_button then
				if login_button.Text:gsub("#", "") ~= login_button.Text then
					login_button.Text = "Auth"
					if login_button.Text:gsub("_", "") == login_button.Text then
						break
					end
				end
				wait(0.05)
			end
		end
	end)
	
	

	local logging_in = true


	local done = false
	local inputted = nil
	local A = 2
	keyboard.TextInputted:Connect(function(text)
		if not done then
			box.Text = text:sub(1, -2)
			inputted = text:sub(1, -2)
			task.spawn(function()
				while box.Text:gsub("_", "") ~= box.Text do
					wait(0.05)
				end
				while box.Text:gsub("#", "") ~= box.Text do
					box.Text = inputted
					wait(0.05)
				end
			end)
			if text:sub(1, -2) == "C" then
				login_button:Destroy()
				frame:Destroy()
				login_menu:Destroy()
				A = false
			end
		end
	end)
	login_button.MouseButton1Click:Connect(function()
		if inputted == tostring(password) then
			box.Text = "Password Correct"
			wait(2)
			login_button:Destroy()
			box:Destroy()
			frame:Destroy()
			user_logo:Destroy()
			user_text:Destroy()
			login_menu:Destroy()

			A = true
		else
			box.Text = "Password Incorrect"
		end

	end)
	while not done do
		print("A!")
		
		
		
		
		print(A)
		if A == false then
			print("FALSE!")
			return false
		elseif A == true then
			print("TRUE!")
			return true
		end
		wait(0.01)
	end
end

hold = false
active = nil
screen.CursorPressed:Connect(function(cursor)
	hold = true
	print("HOLDING!!!")
end)


logo = screen:CreateElement("ImageLabel", {
	Position = UDim2.fromScale(0.25, 0.15),
	Size = UDim2.fromScale(0.5, 0.5),
	BackgroundTransparency = 1,
	Image = "rbxassetid://122166327140001",
	ScaleType = "Fit"
})
label = screen:CreateElement("TextLabel", {
	Position = UDim2.fromScale(0.15, 0.65),
	Size = UDim2.fromScale(0.7, 0.2),
	Text = "NovaOS",
	Font = Enum.Font.SciFi,
	BackgroundTransparency = 1,
	TextColor3 = Color3.fromRGB(24, 229, 180),
	TextScaled = true
})

boot = screen:CreateElement("TextLabel", {
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 0.1),
	Text = "Initiating Boot",
	Font = Enum.Font.SciFi,
	BackgroundTransparency = 1,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true,
	TextTransparency = 0.85
})

text = screen:CreateElement("TextLabel", {
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 1),
	Text = "Welcome",
	Font = Enum.Font.SciFi,
	BackgroundTransparency = 1,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true,
	TextTransparency = 1
})

task.spawn(function()
	while text do
		if text.Text:gsub("#", "") ~= text.Text then
			text.Text = "Welcome"
			if text.Text:gsub("_", "") == text.Text then
				break
			end
		end
		wait(0.05)
	end
end)

task.spawn(function()
	while label do
		if label.Text:gsub("#", "") ~= label.Text then
			label.Text = "NovaOS"
			if label.Text:gsub("_", "") == label.Text then
				break
			end
		end
		wait(0.05)
	end
end)

task.spawn(function()
	while boot do
		if boot.Text:gsub("#", "") ~= boot.Text then
			boot.Text = "Initiating Boot"
			if boot.Text:gsub("_", "") == boot.Text then
				break
			end
		end
		wait(0.05)
	end
end)

wait(7.5)

boot:Destroy()
logo:Destroy()
label:Destroy()

wait(0.5)


while text.Text:gsub("_", "") ~= text.Text do
	wait(0.01)
end

for i=1, 0, -0.01 do
	text:ChangeProperties({TextTransparency=i})
	wait(0.005)
end

wait(1)

frame = screen:CreateElement("ImageLabel", {
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	Image = "rbxassetid://125908764338446",
	ImageTransparency = 1,
	ScaleType = "Crop"
})

login_menu = screen:CreateElement("Frame", {
	Position = UDim2.fromScale(0.2, 0.05),
	Size = UDim2.fromScale(0.6, 0.9),
	BackgroundTransparency = 0.5,
	BackgroundColor3 = Color3.fromRGB(43, 43, 43)
})

user_logo = screen:CreateElement("ImageLabel", {
	Parent = login_menu,
	Position = UDim2.fromScale(0.15, 0.05*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)),
	Size = UDim2.fromScale(0.7, 0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9) * 0.7),
	BackgroundTransparency = 1,
	Image = "rbxassetid://" .. tostring(user_image),
	ImageTransparency = 1,
	ScaleType = "Fit"
})



user_text = screen:CreateElement("TextLabel", {
	Parent = login_menu,
	Position = UDim2.fromScale(0, 0.05*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7),
	Size = UDim2.fromScale(1, 0.2),
	Text = "Hello, " .. username .. "!",
	Font = Enum.Font.SciFi,
	BackgroundTransparency = 1,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true
})

task.spawn(function()
	while user_text do
		if user_text.Text:gsub("#", "") ~= user_text.Text then
			user_text.Text = "Hello, " .. username .. "!"
			if user_text.Text:gsub("_", "") == login_button.Text then
				break
			end
		end
		wait(0.05)
	end
end)

function createCurve(parent)
	local curve = Instance.new("UICorner")
	curve.Parent = parent
	curve.CornerRadius = UDim.new(1, 0)
end

curve150 = Instance.new("UICorner")
curve150.Parent = login_menu
curve150.CornerRadius = UDim.new(0.1, 0)

for i=1, 0, -0.01 do
	frame:ChangeProperties({BackgroundTransparency=1, ImageTransparency=i})
	user_logo:ChangeProperties({BackgroundTransparency=1, ImageTransparency=i})
	user_text:ChangeProperties({TextTransparency=i})
	login_menu:ChangeProperties({BackgroundTransparency=1-((1-i)*(1-0.3))})
	text:ChangeProperties({TextTransparency=1-i})
	wait(0.005)
end
-- first 3 weeks: wow this is fun
-- next 2 weeks: ok its important, but im bored
-- next forever: AGHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHHH
-- result: i dont know, but its NOT gonna be fun
if first_time then
	box = screen:CreateElement("TextLabel", {
		Parent = login_menu,
		Position = UDim2.fromScale(0.05, 0.05*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7+0.2+0.05),
		Size = UDim2.fromScale(0.6, 0.1),
		Text = "Password: " .. tostring(password),
		Font = Enum.Font.SciFi,
		BackgroundTransparency = 0,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,
		BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	})
	
	task.spawn(function()
		while box do
			if box.Text:gsub("#", "") ~= box.Text then
				box.Text = tostring(password)
				if box.Text:gsub("_", "") == box.Text then
					break
				end
			end
			wait(1)
		end
	end)
else
	box = screen:CreateElement("TextLabel", {
		Parent = login_menu,
		Position = UDim2.fromScale(0.05, 0.05*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7+0.2+0.05),
		Size = UDim2.fromScale(0.6, 0.1),
		Text = "Password Here",
		Font = Enum.Font.SciFi,
		BackgroundTransparency = 0,
		TextColor3 = Color3.fromRGB(255, 255, 255),
		TextScaled = true,
		BackgroundColor3 = Color3.fromRGB(48, 48, 48)
	})
end
inputted = box.Text
login_button = screen:CreateElement("TextButton", {
	Parent = login_menu,
	Position = UDim2.fromScale(0.7, 0.05*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)+0.7*0.6*screen:GetDimensions().X/(screen:GetDimensions().Y * 0.9)*0.7+0.2+0.05),
	Size = UDim2.fromScale(0.25, 0.1),
	Text = "Login",
	Font = Enum.Font.SciFi,
	BackgroundTransparency = 0,
	TextColor3 = Color3.fromRGB(255, 255, 255),
	TextScaled = true,
	BackgroundColor3 = Color3.fromRGB(48, 48, 48)
})

task.spawn(function()
	while login_button do
		if login_button then
			if login_button.Text:gsub("#", "") ~= login_button.Text then
				login_button.Text = "Login"
				if login_button.Text:gsub("_", "") == login_button.Text then
					break
				end
			end
			wait(0.05)
		end
	end
end)

logging_in = true


done = false
inputted = nil
while not done do
	keyboard.TextInputted:Connect(function(text)
		if not done then
			if not first_time then
				box.Text = text:sub(1, -2)
				inputted = text:sub(1, -2)
				task.spawn(function()
					while box.Text:gsub("_", "") ~= box.Text do
						wait(0.05)
					end
					while box.Text:gsub("#", "") ~= box.Text do
						box.Text = inputted
						wait(0.05)
					end
				end)
			end
		end
	end)
	login_button.MouseButton1Click:Connect(function()
		if first_time then
			box.Text = "Password Correct"
			wait(2)
			login_button:Destroy()
			box:Destroy()
			frame:Destroy()
			user_logo:Destroy()
			user_text:Destroy()
			login_menu:Destroy()
			text:Destroy()
			done = true
		else
			if inputted == tostring(password) then
				box.Text = "Password Correct"
				wait(2)
				login_button:Destroy()
				box:Destroy()
				frame:Destroy()
				user_logo:Destroy()
				user_text:Destroy()
				login_menu:Destroy()
				text:Destroy()
				done = true
			else
				box.Text = "Password Incorrect"
			end

		end

	end)
	wait(0.01)
end

wait(2)

main_screen = screen:CreateElement("ImageLabel", {
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 1),
	BackgroundTransparency = 1,
	Image = "rbxassetid://" .. tostring(wallpaper),
	ImageTransparency = 1,
	ScaleType = "Crop"
})

for i=0, 1, 0.01 do
	main_screen.ImageTransparency = 1-i
	print(i)
	if tostring(i):sub(1, 4) == "0.20" then
		print("play!")
		speaker:PlaySound("rbxassetid://1839901345")
	end
	wait(0.005)
end




taskbar = screen:CreateElement("Frame", {
	Position = UDim2.fromScale(0, 0.91),
	Size = UDim2.fromScale(1, 0.09),
	BackgroundColor3 = Color3.fromRGB(47, 47, 47),
	BackgroundTransparency = 0.2,
	ZIndex = 1498
})

task.spawn(function()
	while 2 == 2 do
		wait(1.5)
		taskbar.ZIndex = 1498
	end
end)

total_length = 4
icon_size = 0.09*screen:GetDimensions().Y/screen:GetDimensions().X

icon = screen:CreateElement("ImageButton", {
	Parent = taskbar,
	Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*total_length, 0),
	Size = UDim2.fromScale(0.09*screen:GetDimensions().Y/screen:GetDimensions().X, 1),
	Image = "rbxassetid://122166327140001",
	ScaleType = "Fit",
	BackgroundTransparency = 0.4,
	HoverImage = "rbxassetid://81076721482490",
	BackgroundColor3 = Color3.fromRGB(84, 84, 84)
})

searchO = screen:CreateElement("Frame", {
	Parent = taskbar,
	Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*total_length + icon_size + 0.01, 0),
	Size = UDim2.fromScale(0.09*screen:GetDimensions().Y/screen:GetDimensions().X*3 - 0.02, 1),
	BackgroundColor3 = Color3.fromRGB(24, 229, 180)
})
Y_to_X = screen:GetDimensions().Y/screen:GetDimensions().X
X_to_Y = screen:GetDimensions().X/screen:GetDimensions().Y
levelSelector = screen:CreateElement("Frame", {
	Position = UDim2.fromScale(0.01*screen:GetDimensions().Y/screen:GetDimensions().X, 0.85),
	Size = UDim2.fromScale(screen:GetDimensions().Y/screen:GetDimensions().X * 0.05, 0.05),
	BackgroundColor3 = Color3.fromRGB(47, 47, 47)
})

createCurve(levelSelector)

print(0.02*0.09*screen:GetDimensions().Y/screen:GetDimensions().X)
search = screen:CreateElement("TextButton", {
	Parent = taskbar,
	Position = UDim2.fromScale(0.5-0.045*screen:GetDimensions().Y/screen:GetDimensions().X*total_length + icon_size + 0.01 + 0.05*0.09*screen:GetDimensions().Y/screen:GetDimensions().X, 0.05),
	Size = UDim2.fromScale(0.09*screen:GetDimensions().Y/screen:GetDimensions().X*3 - 0.02 - 0.075*0.09*screen:GetDimensions().Y/screen:GetDimensions().X, 0.925),
	BackgroundColor3 = Color3.fromRGB(56, 56, 56),
	Text = "Search",
	TextScaled = true,
	TextColor3 = Color3.fromRGB(24, 229, 180),
	Font = Enum.Font.SciFi
})

timerOutline = screen:CreateElement("Frame", {
	Position = UDim2.fromScale(0.2, 0),
	Size = UDim2.fromScale(0.6, 0.05),
	BackgroundColor3 = Color3.fromRGB(255, 255, 0)
})

timer = screen:CreateElement("Frame", {
	Parent = timerOutline,
	Position = UDim2.fromScale(0.05*0.05*screen:GetDimensions().Y/screen:GetDimensions().X/0.6, 0.05),
	Size = UDim2.fromScale(1-0.1*0.05*screen:GetDimensions().Y/screen:GetDimensions().X/0.6, 0.9),
	BackgroundColor3 = Color3.fromRGB(0, 0, 0)
})

timerText = screen:CreateElement("TextLabel", {
	Parent = timer,
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 1),
	Text = "0:00",
	BackgroundTransparency = 1,
	TextColor3 = Color3.fromRGB(255, 255, 0),
	Font = Enum.Font.SciFi,
	TextScaled = true
})

timah = "0:00:00"
uncensorVariable(timerText, "timah", 1)
task.spawn(function()
	while 2 == 2 do
		local hour = returnHour(instrument:GetReading("Time"))
		local a2 = math.abs(hour-12)
		local b2 = 23-a2
		local timeColor = Color3.fromRGB(b2*150/25*2, b2*75/25*2, a2*255/25*2)
		local reading = instrument:GetReading("Time")
		local reada = reading:sub(1, reading:find(":")+2)
		timerOutline.BackgroundColor3 = timeColor
		timerText:ChangeProperties({TextColor3=timeColor})
		
		print(reada)
		if timerText.Text ~= reada then
			timerText.Text = reada
			global["timah"] = reada
		end
		task.wait(30)
	end
end)


curve1de = Instance.new("UICorner")
curve1de.Parent = timerOutline
curve1de.CornerRadius = UDim.new(1, 0)

curve1df = Instance.new("UICorner")
curve1df.Parent = timer
curve1df.CornerRadius = UDim.new(1, 0)

curve1cf = Instance.new("UICorner")
curve1cf.Parent = icon
curve1cf.CornerRadius = UDim.new(0.6, 0)

curve1ce = Instance.new("UICorner")
curve1ce.Parent = search
curve1ce.CornerRadius = UDim.new(1, 0)

curve1cf = Instance.new("UICorner")
curve1cf.Parent = searchO
curve1cf.CornerRadius = UDim.new(1, 0)

search_button_text = "Search"

task.spawn(function()
	while search do
		if search.Text ~= search_button_text then
			search.Text = search_button_text
		end
		wait(0.5)
	end
end)
searched = false

for i, v in prefixFinder("root/user/desktop/") do
	desktopDisplay(i)
end

for i, v in prefixFinder("root/user/taskbar/") do
	addIcon(i, false)
end


search.MouseButton1Click:Connect(function()
	local searching = true
	searchO.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
	search.TextColor3 = Color3.fromRGB(255, 255, 255)
	task.spawn(function()
		wait(2.5)
		searching = false
		searchO.BackgroundColor3 = Color3.fromRGB(24, 229, 180)
		search.TextColor3 = Color3.fromRGB(24, 229, 180)
		search.Text = "Search"
		search_button_text = "Search"
	end)
	keyboard.TextInputted:Connect(function(text)
		local t = text:sub(1, -2)
		if searching then
			search.Text = t
			search_button_text = t
			print("----")
			
			if searched then
				searchGUI:Destroy()
			end
			
			searchGUI = screen:CreateElement("Frame", {
				Position = UDim2.fromScale(0, 0),
				Size = UDim2.fromScale(0.2, 0.9),
				BackgroundColor3 = Color3.fromRGB(63, 63, 63),
				BackgroundTransparency = 0.15,
				BorderSizePixel = 0
			})
			
			searched = true
			
			local searchCancel = screen:CreateElement("TextButton", {
				Parent = searchGUI,
				Position = UDim2.fromScale(0.025, 9*0.1+0.0025),
				Size = UDim2.fromScale(0.95, 0.1-0.005),
				BackgroundColor3 = Color3.fromRGB(50, 50, 50),
				BackgroundTransparency = 0,
				BorderSizePixel = 0,
				Text = "Close",
				TextColor3 = Color3.fromRGB(255, 255, 255),
				Font = Enum.Font.SciFi,
				TextScaled = true
			})
			
			uncensorConstant(searchCancel, "Close", 1.5)
			
			searchCancel.MouseButton1Click:Connect(function()
				searchGUI:Destroy()
				searched = false
			end)
			local searched = searchFiles(t)
			local index = 0
			for i, v in searched do
				if index < 9 then
					print(i)
					print(v[1])
					print(v[2])
					print(index*0.1+0.0025)
					print(index*0.1+0.0025+0.1-0.005)
					print(index*0.1+0.005+0.1-0.005)
					local searchGUI2 = screen:CreateElement("TextButton", {
						Parent = searchGUI,
						Position = UDim2.fromScale(0.025, index*0.1+0.0025),
						Size = UDim2.fromScale(0.95, 0.1-0.005),
						BackgroundColor3 = Color3.fromRGB(93, 93, 93),
						BackgroundTransparency = 0.15,
						BorderSizePixel = 0,
						Text = ""
					})
					
					if v[1] == 1 then
						local file_image = screen:CreateElement("ImageLabel", {
							Parent = searchGUI2,
							Position = UDim2.fromScale(0, 0),
							Size = UDim2.fromScale(0.4, 1),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Image = "rbxassetid://93157667193486",
							ScaleType = "Fit"
						})
					else
						local file_image = screen:CreateElement("ImageLabel", {
							Parent = searchGUI2,
							Position = UDim2.fromScale(0, 0),
							Size = UDim2.fromScale(0.4, 1),
							BackgroundTransparency = 1,
							BorderSizePixel = 0,
							Image = v[5],
							ScaleType = "Fit"
						})
					end
					
					local file_name = screen:CreateElement("TextLabel", {
						Parent = searchGUI2,
						Position = UDim2.fromScale(0.4, 0),
						Size = UDim2.fromScale(0.6, 1),
						BackgroundTransparency = 1,
						BorderSizePixel = 0,
						Text = v[2],
						TextColor3 = Color3.fromRGB(255, 255, 255),
						Font = Enum.Font.SciFi,
						TextScaled = true
					})
					
					searchGUI2.MouseButton1Click:Connect(function()
						addIcon(nil, true, true, "rbxassetid://93157667193486", v[2])
					end)
					
					uncensorConstant(file_name, v[2])
					
					

					index += 1
				else
					break
				end
				
				
			end
			
		end
		
		
	end)
end)

if false then
	createWindow("DANGER!", 0.23, 0.44, Color3.fromRGB(168, 168, 168), [[
local reset = screen:CreateElement("TextButton", {
	Parent = windows["DANGER!"].frame,
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 1),
	Text = "FACTORY RESET?!",
	Font = Enum.Font.SciFi,
	TextScaled = true
})
stage = 1
reset.MouseButton1Click:Connect(function()
	if stage == 1 then
		stage = 2
		reset.Text = "Are you sure???"
		task.spawn(function()
			wait(2)
			if stage == 2 then
				reset.Text = "FACTORY RESET?!"
				stage = 1
			end
		end)
	else
		reset.Text = "So sorry to see you go :("
		stage = 3
		wait(1.5)
		disk:Clear()
		GetPartFromPort(1, "Microcontroller"):Shutdown()
	end
end)

]])
else
	executeFile("root/bin/apps/terminal/", "exe")
	executeFile("root/bin/secret/tictactoe/", "exe")
	createWindow("DANGER!", 0.23, 0.44, Color3.fromRGB(168, 168, 168), [[
local reset = screen:CreateElement("TextButton", {
	Parent = windows["DANGER!"].frame,
	Position = UDim2.fromScale(0, 0),
	Size = UDim2.fromScale(1, 1),
	Text = "FACTORY RESET?!",
	Font = Enum.Font.SciFi,
	TextScaled = true
})
stage = 1
reset.MouseButton1Click:Connect(function()
	if stage == 1 then
		stage = 2
		reset.Text = "Are you sure???"
		task.spawn(function()
			wait(2)
			if stage == 2 then
				reset.Text = "FACTORY RESET?!"
				stage = 1
			end
		end)
	else
		reset.Text = "So sorry to see you go :("
		stage = 3
		wait(1.5)
		disk:Clear()
		GetPartFromPort(1, "Microcontroller"):Shutdown()
	end
end)

]], nil, nil)
end

start_menu_visibility = false
ongoing = false

icon.MouseButton1Click:Connect(function()
	if not ongoing then
		if not start_menu_visibility then
			ongoing = true
			if not start_menu then
				start_menu = screen:CreateElement("Frame", {
					Position = UDim2.fromScale(0.25, 1),
					Size = UDim2.fromScale(0.5, 0.4),
					BackgroundColor3 = Color3.fromRGB(40, 40, 40),
					BackgroundTransparency = 0.05
				})
				curve = Instance.new("UICorner")
				curve.Parent = start_menu
				curve.CornerRadius = UDim.new(0.075, 0)
				start_menu_text = screen:CreateElement("TextLabel", {
					Position = UDim2.fromScale(0.05, 0),
					Size = UDim2.fromScale(0.9, 0.2),
					Text = "Start Menu",
					Font = Enum.Font.SciFi,
					TextScaled = true,
					BackgroundTransparency = 1,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Parent = start_menu
				})
				start_logo = screen:CreateElement("ImageLabel", {
					Parent = start_menu,
					Position = UDim2.fromScale(0.05, 0.21),
					Size = UDim2.fromScale(0.2, 0.2),
					BackgroundTransparency = 1,
					Image = "rbxassetid://" .. tostring(user_image),
					ImageTransparency = 0,
					ScaleType = "Fit"
				})
				start_menu_user_text = screen:CreateElement("TextLabel", {
					Position = UDim2.fromScale(0.25, 0.21),
					Size = UDim2.fromScale(0.7, 0.2),
					Text = username,
					Font = Enum.Font.SciFi,
					TextScaled = true,
					BackgroundTransparency = 1,
					TextColor3 = Color3.fromRGB(255, 255, 255),
					Parent = start_menu
				})
				line = screen:CreateElement("Frame", {
					Position = UDim2.fromScale(0.05, 0.2),
					Size = UDim2.fromScale(0.9, 0.005),
					BackgroundColor3 = Color3.fromRGB(0, 170, 255),
					BorderSizePixel = 0,
					Parent = start_menu
				})
				line2 = screen:CreateElement("Frame", {
					Position = UDim2.fromScale(0.05, 0.41),
					Size = UDim2.fromScale(0.9, 0.005),
					BackgroundColor3 = Color3.fromRGB(24, 229, 180),
					BorderSizePixel = 0,
					Parent = start_menu
				})
				icon2 = screen:CreateElement("ImageLabel", {
					Parent = start_menu,
					Position = UDim2.fromScale(0.05, 0.42),
					Size = UDim2.fromScale(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5, 0.58),
					Image = "rbxassetid://122166327140001",
					ScaleType = "Fit",
					BackgroundTransparency = 1,
					BackgroundColor3 = Color3.fromRGB(84, 84, 84)
				})
				OS_text = screen:CreateElement("TextLabel", {
					Parent = start_menu,
					Position = UDim2.fromScale(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5), 0.42),
					Size = UDim2.fromScale(1-(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5)), 0.2),
					Text = "novaOS",
					TextScaled = true,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					TextColor3 = Color3.fromRGB(0, 255, 170),
					Font = Enum.Font.SciFi
				})
				version_text = screen:CreateElement("TextLabel", {
					Parent = start_menu,
					Position = UDim2.fromScale(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5), 0.62),
					Size = UDim2.fromScale(1-(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5)), 0.1),
					Text = "Beta 1.0",
					TextScaled = true,
					BackgroundTransparency = 1,
					BorderSizePixel = 0,
					TextColor3 = Color3.fromRGB(24, 229, 180),
					Font = Enum.Font.SciFi
				})
				shutdownButtonOutline = screen:CreateElement("Frame", {
					Parent = start_menu,
					Position = UDim2.fromScale(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5), 0.72),
					Size = UDim2.fromScale(1-(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5)), 0.25),
					BackgroundColor3 = Color3.fromRGB(0, 170, 255)
				})
				shutdownButton = screen:CreateElement("TextButton", {
					Parent = start_menu,
					Position = UDim2.fromScale(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5)+(0.015*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5), 0.72+0.015),
					Size = UDim2.fromScale(1-(0.05+(0.58*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5))-(0.015*0.4*screen:GetDimensions().Y/screen:GetDimensions().X/0.5)*2, 0.25-0.03),
					Text = "Shutdown",
					Font = Enum.Font.SciFi,
					TextColor3 = Color3.fromRGB(0, 170, 255),
					TextScaled = true,
					BackgroundTransparency = 0,
					BackgroundColor3 = Color3.fromRGB(70, 70, 70)
				})
				shutdownButtonOutlineCurve = Instance.new("UICorner")
				shutdownButtonOutlineCurve.Parent = shutdownButtonOutline
				shutdownButtonOutlineCurve.CornerRadius = UDim.new(1, 0)
				shutdownButtonCurve = Instance.new("UICorner")
				shutdownButtonCurve.Parent = shutdownButton
				shutdownButtonCurve.CornerRadius = UDim.new(1, 0)
				task.spawn(function()
					while string.gsub(OS_text.Text, "#", "A") ~= OS_text.Text or string.gsub(OS_text.Text, "_", "A") ~= OS_text.Text do
						OS_text:ChangeProperties({
							Text = "novaOS"
						})
						wait(2)
					end
				end)
				task.spawn(function()
					while string.gsub(start_menu_text.Text, "#", "A") ~= start_menu_text.Text or string.gsub(start_menu_text.Text, "_", "A") ~= start_menu_text.Text do
						start_menu_text:ChangeProperties({
							Text = "Start Menu"
						})
						wait(2)
					end
				end)
				task.spawn(function()
					while string.gsub(start_menu_user_text.Text, "#", "A") ~= start_menu_user_text.Text or string.gsub(start_menu_user_text.Text, "_", "A") ~= start_menu_user_text.Text do
						start_menu_user_text:ChangeProperties({
							Text = username
						})
						wait(2)
					end
				end)
				task.spawn(function()
					while string.gsub(version_text.Text, "#", "A") ~= version_text.Text or string.gsub(version_text.Text, "_", "A") ~= version_text.Text do
						version_text:ChangeProperties({
							Text = "Beta 0.7"
						})
						wait(2)
					end
				end)
				task.spawn(function()
					while shutdownButton do
						if shutdownButton.Text:gsub("_", "") ~= nil then
							if shutdownButton.Text:gsub("#", "") ~= shutdownButton.Text then
								if #shutdownButton.Text == 8 then
									shutdownButton:ChangeProperties({
										Text = "Shutdown"
									})
								elseif #shutdownButton.Text > 11 then
									shutdownButton:ChangeProperties({
										Text = "Are You Sure?"
									})
								else
									shutdownButton.Text = "..."
								end
							end
						end
						wait(0.3)
					end
				end)
				local stage = 1
				shutdownButton.MouseButton1Click:Connect(function()
					
					if stage == 1 then
						shutdownButton.Text = "Are You Sure?"
						task.spawn(function()
							wait(2)
						stage = 2
							if stage == 2 then
								stage = 1
								shutdownButton.Text = "Shutdown"
							end
						end)
					elseif stage == 2 then
						
						local AAA = true
						print(AAA)
						if AAA then
							shutdownButton.Text = "..."
							stage = 3
							shutdown(true, true, 2)
						end
					end
				end)
			end
			for i=1, 0.48, -0.04 do
				start_menu.Position = UDim2.fromScale(0.25, i)
				wait(0.01)
			end
			start_menu.Position = UDim2.fromScale(0.25, 0.48)
			start_menu_visibility = true
			ongoing = false
		else
			ongoing = true
			for i=0.48, 1, 0.04 do
				start_menu.Position = UDim2.fromScale(0.25, i)
				wait(0.01)
			end
			start_menu.Position = UDim2.fromScale(0.25, 1)
			start_menu_visibility = false
			ongoing = false
		end
	end
end)
coroutine.yield()




