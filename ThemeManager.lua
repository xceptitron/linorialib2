local httpService = game:GetService('HttpService')
local ThemeManager = {} do
	ThemeManager.Folder = 'LinoriaLibSettings'
	-- if not isfolder(ThemeManager.Folder) then makefolder(ThemeManager.Folder) end

	ThemeManager.Library = nil
	ThemeManager.BuiltInThemes = {
		['Default'] 		= { 1, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1c1c1c","AccentColor":"ff0000","BackgroundColor":"141414","OutlineColor":"323232"}') },
		['Ubuntu'] 			= { 2, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"3e3e3e","AccentColor":"e2581e","BackgroundColor":"323232","OutlineColor":"191919"}') },
		['Quartz'] 			= { 3, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"232330","AccentColor":"426e87","BackgroundColor":"1d1b26","OutlineColor":"27232f"}') },
    	['Neon Glow'] 		= { 4, httpService:JSONDecode('{"FontColor":"f0f0f0","MainColor":"0f0f0f","AccentColor":"00ff88","BackgroundColor":"000000","OutlineColor":"1a1a1a"}') },
		['Oceanic'] 		= { 5, httpService:JSONDecode('{"FontColor":"e0f7fa","MainColor":"004055","AccentColor":"00acc1","BackgroundColor":"002635","OutlineColor":"006064"}') },
		['Arctic'] 			= { 6, httpService:JSONDecode('{"FontColor":"e8eaf6","MainColor":"283593","AccentColor":"5c6bc0","BackgroundColor":"1a237e","OutlineColor":"3949ab"}') },
		['Matrix'] 			= { 7, httpService:JSONDecode('{"FontColor":"00ff00","MainColor":"0d0d0d","AccentColor":"00ff41","BackgroundColor":"000000","OutlineColor":"003300"}') },
		['Lavender'] 		= { 8, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"4a148c","AccentColor":"ba68c8","BackgroundColor":"311b92","OutlineColor":"7b1fa2"}') },
		['Rose Gold'] 		= { 9, httpService:JSONDecode('{"FontColor":"2e2e2e","MainColor":"fce4ec","AccentColor":"f48fb1","BackgroundColor":"f8bbd0","OutlineColor":"f06292"}') },
		['Cyberpunk'] 		= { 10, httpService:JSONDecode('{"FontColor":"e0e0e0","MainColor":"1a0033","AccentColor":"ff00ff","BackgroundColor":"0d001a","OutlineColor":"660099"}') },
		['Purple Thingy'] 	= { 11, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1e1e1e","AccentColor":"7e48a3","BackgroundColor":"232323","OutlineColor":"141414"}') },
		['Purple Thingy +'] = { 12, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"1e1842","AccentColor":"c50754","BackgroundColor":"191335","OutlineColor":"3c355d"}') },
		['Camo'] 			= { 13, httpService:JSONDecode('{"FontColor":"c5b890","MainColor":"3b322b","AccentColor":"7a6a53","BackgroundColor":"2e2822","OutlineColor":"52453b"}') },
		['Vaporwave'] 		= { 14, httpService:JSONDecode('{"FontColor":"ffdcf2","MainColor":"2b1d33","AccentColor":"ff6ec7","BackgroundColor":"1f1328","OutlineColor":"57386a"}') },
		['Monokai'] 		= { 15, httpService:JSONDecode('{"FontColor":"f8f8f2","MainColor":"272822","AccentColor":"f92672","BackgroundColor":"1e1f1c","OutlineColor":"49483e"}') },
		['Dracula'] 		= { 16, httpService:JSONDecode('{"FontColor":"f8f8f2","MainColor":"282a36","AccentColor":"bd93f9","BackgroundColor":"1e1f29","OutlineColor":"44475a"}') },
		['Pumpkin'] 		= { 17, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"ff7f00","AccentColor":"ffc700","BackgroundColor":"e65100","OutlineColor":"bf360c"}') },
		['Noir'] 			= { 18, httpService:JSONDecode('{"FontColor":"e0e0e0","MainColor":"212121","AccentColor":"d32f2f","BackgroundColor":"000000","OutlineColor":"424242"}') },
		['Jester'] 			= { 19, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"242424","AccentColor":"db4467","BackgroundColor":"1c1c1c","OutlineColor":"373737"}') },
		['Mint'] 			= { 20, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"242424","AccentColor":"3db488","BackgroundColor":"1c1c1c","OutlineColor":"373737"}') },
		['Tokyo Night'] 	= { 21, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"191925","AccentColor":"6759b3","BackgroundColor":"16161f","OutlineColor":"323232"}') },
		['Sapphire']          = { 22, httpService:JSONDecode('{"FontColor":"e3f2fd","MainColor":"0d47a1","AccentColor":"2979ff","BackgroundColor":"082038","OutlineColor":"1565c0"}') },
		['Abyss']             = { 23, httpService:JSONDecode('{"FontColor":"c7c7c7","MainColor":"0d1117","AccentColor":"58a6ff","BackgroundColor":"010409","OutlineColor":"21262d"}') },
		['Midnight']          = { 24, httpService:JSONDecode('{"FontColor":"e0e0e0","MainColor":"0a0a0a","AccentColor":"7c4dff","BackgroundColor":"050505","OutlineColor":"1a1a1a"}') },
		['Blood Moon']        = { 25, httpService:JSONDecode('{"FontColor":"ffebee","MainColor":"1a0a0a","AccentColor":"ff1744","BackgroundColor":"0d0202","OutlineColor":"3e2723"}') },
		['Emerald']           = { 26, httpService:JSONDecode('{"FontColor":"e8f5e9","MainColor":"1b5e20","AccentColor":"00e676","BackgroundColor":"0d3310","OutlineColor":"2e7d32"}') },
		['Crimson']           = { 27, httpService:JSONDecode('{"FontColor":"ffebee","MainColor":"b71c1c","AccentColor":"ff5252","BackgroundColor":"7f0000","OutlineColor":"d32f2f"}') },
		['Amber']             = { 28, httpService:JSONDecode('{"FontColor":"fff3e0","MainColor":"e65100","AccentColor":"ffab00","BackgroundColor":"bf360c","OutlineColor":"ff6f00"}') },
		['Discord']           = { 29, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"36393f","AccentColor":"5865f2","BackgroundColor":"2f3136","OutlineColor":"202225"}') },
		['Spotify']           = { 30, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"191414","AccentColor":"1db954","BackgroundColor":"121212","OutlineColor":"282828"}') },
		['Synthwave']         = { 31, httpService:JSONDecode('{"FontColor":"ff00ff","MainColor":"0a0a1a","AccentColor":"00ffff","BackgroundColor":"050510","OutlineColor":"1a1a3e"}') },
		['Nord']              = { 32, httpService:JSONDecode('{"FontColor":"d8dee9","MainColor":"2e3440","AccentColor":"88c0d0","BackgroundColor":"242933","OutlineColor":"4c566a"}') },
		['Gruvbox']           = { 33, httpService:JSONDecode('{"FontColor":"ebdbb2","MainColor":"282828","AccentColor":"fabd2f","BackgroundColor":"1d2021","OutlineColor":"504945"}') },
		['One Dark']          = { 34, httpService:JSONDecode('{"FontColor":"abb2bf","MainColor":"282c34","AccentColor":"61afef","BackgroundColor":"1e222a","OutlineColor":"3e4451"}') },
		['Solarized']         = { 35, httpService:JSONDecode('{"FontColor":"eee8d5","MainColor":"073642","AccentColor":"268bd2","BackgroundColor":"002b36","OutlineColor":"586e75"}') },
		['Catppuccin']        = { 36, httpService:JSONDecode('{"FontColor":"cdd6f4","MainColor":"1e1e2e","AccentColor":"f5c2e7","BackgroundColor":"181825","OutlineColor":"313244"}') },
		['Mocha']             = { 37, httpService:JSONDecode('{"FontColor":"efebe9","MainColor":"3e2723","AccentColor":"a1887f","BackgroundColor":"281a16","OutlineColor":"5d4037"}') },
		['Coral']             = { 38, httpService:JSONDecode('{"FontColor":"ffebee","MainColor":"880e4f","AccentColor":"ff4081","BackgroundColor":"560027","OutlineColor":"ad1457"}') },
		['Ice']               = { 39, httpService:JSONDecode('{"FontColor":"e3f2fd","MainColor":"0d1b2a","AccentColor":"90caf9","BackgroundColor":"080c14","OutlineColor":"1b263b"}') },
		['Volcanic']          = { 40, httpService:JSONDecode('{"FontColor":"ffccbc","MainColor":"3e2723","AccentColor":"ff5722","BackgroundColor":"281812","OutlineColor":"5d4037"}') },
		['Forest']            = { 41, httpService:JSONDecode('{"FontColor":"e8f5e9","MainColor":"1b5e20","AccentColor":"66bb6a","BackgroundColor":"0d3310","OutlineColor":"2e7d32"}') },
		['Berry']             = { 42, httpService:JSONDecode('{"FontColor":"f3e5f5","MainColor":"4a148c","AccentColor":"e040fb","BackgroundColor":"311b92","OutlineColor":"7b1fa2"}') },
		['Gold']              = { 43, httpService:JSONDecode('{"FontColor":"fff8e1","MainColor":"3e2723","AccentColor":"ffd700","BackgroundColor":"281a0e","OutlineColor":"5d4037"}') },
		['Slate']             = { 44, httpService:JSONDecode('{"FontColor":"eceff1","MainColor":"263238","AccentColor":"607d8b","BackgroundColor":"1a1f23","OutlineColor":"37474f"}') },
		['Obsidian']          = { 45, httpService:JSONDecode('{"FontColor":"fafafa","MainColor":"0d0d0d","AccentColor":"ff3d00","BackgroundColor":"080808","OutlineColor":"1a1a1a"}') },
		['Neon Pink']         = { 46, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"0a0a0a","AccentColor":"ff0080","BackgroundColor":"050505","OutlineColor":"1a1a1a"}') },
		['Neon Blue']         = { 47, httpService:JSONDecode('{"FontColor":"ffffff","MainColor":"0a0a0a","AccentColor":"0080ff","BackgroundColor":"050505","OutlineColor":"1a1a1a"}') },
		['Retro CRT']         = { 48, httpService:JSONDecode('{"FontColor":"33ff00","MainColor":"0d0d0d","AccentColor":"33ff00","BackgroundColor":"080808","OutlineColor":"1a3300"}') },
		['Dusk']              = { 49, httpService:JSONDecode('{"FontColor":"e1bee7","MainColor":"311b92","AccentColor":"7c4dff","BackgroundColor":"1a0f4d","OutlineColor":"4527a0"}') },
		['Toxic']             = { 50, httpService:JSONDecode('{"FontColor":"ccff90","MainColor":"1b5e20","AccentColor":"76ff03","BackgroundColor":"0d3310","OutlineColor":"33691e"}') },
		['Peach']             = { 51, httpService:JSONDecode('{"FontColor":"3e2723","MainColor":"ffccbc","AccentColor":"ff7043","BackgroundColor":"ffab91","OutlineColor":"f4511e"}') },
		['Stealth']           = { 52, httpService:JSONDecode('{"FontColor":"9e9e9e","MainColor":"1a1a1a","AccentColor":"616161","BackgroundColor":"0d0d0d","OutlineColor":"424242"}') },
		['Azure']             = { 53, httpService:JSONDecode('{"FontColor":"e3f2fd","MainColor":"01579b","AccentColor":"40c4ff","BackgroundColor":"002171","OutlineColor":"0277bd"}') },
		['Inferno']           = { 54, httpService:JSONDecode('{"FontColor":"ffebee","MainColor":"bf360c","AccentColor":"ff3d00","BackgroundColor":"870000","OutlineColor":"dd2c00"}') },
		['Galaxy']            = { 55, httpService:JSONDecode('{"FontColor":"e1bee7","MainColor":"12005e","AccentColor":"ea80fc","BackgroundColor":"0a0030","OutlineColor":"4a148c"}') },
		['Shadow']            = { 56, httpService:JSONDecode('{"FontColor":"bdbdbd","MainColor":"212121","AccentColor":"9e9e9e","BackgroundColor":"121212","OutlineColor":"424242"}') },
		['Pastel']            = { 57, httpService:JSONDecode('{"FontColor":"4a4a4a","MainColor":"f5f5f5","AccentColor":"ff80ab","BackgroundColor":"e0e0e0","OutlineColor":"bdbdbd"}') },
		['Coffee']            = { 58, httpService:JSONDecode('{"FontColor":"efebe9","MainColor":"3e2723","AccentColor":"8d6e63","BackgroundColor":"281a16","OutlineColor":"5d4037"}') },
		['Midnight Sun']      = { 59, httpService:JSONDecode('{"FontColor":"fffde7","MainColor":"263238","AccentColor":"ffd54f","BackgroundColor":"1a1f23","OutlineColor":"37474f"}') },
		['Cherry']            = { 60, httpService:JSONDecode('{"FontColor":"ffebee","MainColor":"b71c1c","AccentColor":"ff5252","BackgroundColor":"7f0000","OutlineColor":"d32f2f"}') }
	}

	function ThemeManager:ApplyTheme(theme)
		local customThemeData = self:GetCustomTheme(theme)
		local data = customThemeData or self.BuiltInThemes[theme]

		if not data then return end

		-- custom themes are just regular dictionaries instead of an array with { index, dictionary }

		local scheme = data[2]
		for idx, col in next, customThemeData or scheme do
			self.Library[idx] = Color3.fromHex(col)
			
			if Options[idx] then
				Options[idx]:SetValueRGB(Color3.fromHex(col))
			end
		end

		self:ThemeUpdate()
	end

	function ThemeManager:ThemeUpdate()
		-- This allows us to force apply themes without loading the themes tab :)
		local options = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }
		for i, field in next, options do
			if Options and Options[field] then
				self.Library[field] = Options[field].Value
			end
		end

		self.Library.AccentColorDark = self.Library:GetDarkerColor(self.Library.AccentColor);
		self.Library:UpdateColorsUsingRegistry()
	end

	function ThemeManager:LoadDefault()		
		local theme = 'Default'
		local content = isfile(self.Folder .. '/themes/default.txt') and readfile(self.Folder .. '/themes/default.txt')

		local isDefault = true
		if content then
			if self.BuiltInThemes[content] then
				theme = content
			elseif self:GetCustomTheme(content) then
				theme = content
				isDefault = false;
			end
		elseif self.BuiltInThemes[self.DefaultTheme] then
		 	theme = self.DefaultTheme
		end

		if isDefault then
			Options.ThemeManager_ThemeList:SetValue(theme)
		else
			self:ApplyTheme(theme)
		end
	end

	function ThemeManager:SaveDefault(theme)
		writefile(self.Folder .. '/themes/default.txt', theme)
	end

	function ThemeManager:CreateThemeManager(groupbox)
		groupbox:AddLabel('Background color'):AddColorPicker('BackgroundColor', { Default = self.Library.BackgroundColor });
		groupbox:AddLabel('Main color')	:AddColorPicker('MainColor', { Default = self.Library.MainColor });
		groupbox:AddLabel('Accent color'):AddColorPicker('AccentColor', { Default = self.Library.AccentColor });
		groupbox:AddLabel('Outline color'):AddColorPicker('OutlineColor', { Default = self.Library.OutlineColor });
		groupbox:AddLabel('Font color')	:AddColorPicker('FontColor', { Default = self.Library.FontColor });

		local ThemesArray = {}
		for Name, Theme in next, self.BuiltInThemes do
			table.insert(ThemesArray, Name)
		end

		table.sort(ThemesArray, function(a, b) return self.BuiltInThemes[a][1] < self.BuiltInThemes[b][1] end)

		groupbox:AddDivider()
		groupbox:AddDropdown('ThemeManager_ThemeList', { Text = 'Theme list', Values = ThemesArray, Default = 1 })

		groupbox:AddButton('Set as default', function()
			self:SaveDefault(Options.ThemeManager_ThemeList.Value)
			self.Library:Notify(string.format('Set default theme to %q', Options.ThemeManager_ThemeList.Value))
		end)

		Options.ThemeManager_ThemeList:OnChanged(function()
			self:ApplyTheme(Options.ThemeManager_ThemeList.Value)
		end)

		groupbox:AddDivider()
		groupbox:AddInput('ThemeManager_CustomThemeName', { Text = 'Custom theme name' })
		groupbox:AddDropdown('ThemeManager_CustomThemeList', { Text = 'Custom themes', Values = self:ReloadCustomThemes(), AllowNull = true, Default = 1 })
		groupbox:AddDivider()
		
		groupbox:AddButton('Save theme', function() 
			self:SaveCustomTheme(Options.ThemeManager_CustomThemeName.Value)

			Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
			Options.ThemeManager_CustomThemeList:SetValue(nil)
		end):AddButton('Load theme', function() 
			self:ApplyTheme(Options.ThemeManager_CustomThemeList.Value) 
		end)

		groupbox:AddButton('Refresh list', function()
			Options.ThemeManager_CustomThemeList:SetValues(self:ReloadCustomThemes())
			Options.ThemeManager_CustomThemeList:SetValue(nil)
		end)

		groupbox:AddButton('Set as default', function()
			if Options.ThemeManager_CustomThemeList.Value ~= nil and Options.ThemeManager_CustomThemeList.Value ~= '' then
				self:SaveDefault(Options.ThemeManager_CustomThemeList.Value)
				self.Library:Notify(string.format('Set default theme to %q', Options.ThemeManager_CustomThemeList.Value))
			end
		end)

		ThemeManager:LoadDefault()

		local function UpdateTheme()
			self:ThemeUpdate()
		end

		Options.BackgroundColor:OnChanged(UpdateTheme)
		Options.MainColor:OnChanged(UpdateTheme)
		Options.AccentColor:OnChanged(UpdateTheme)
		Options.OutlineColor:OnChanged(UpdateTheme)
		Options.FontColor:OnChanged(UpdateTheme)
	end

	function ThemeManager:GetCustomTheme(file)
		local path = self.Folder .. '/themes/' .. file
		if not isfile(path) then
			return nil
		end

		local data = readfile(path)
		local success, decoded = pcall(httpService.JSONDecode, httpService, data)
		
		if not success then
			return nil
		end

		return decoded
	end

	function ThemeManager:SaveCustomTheme(file)
		if file:gsub(' ', '') == '' then
			return self.Library:Notify('Invalid file name for theme (empty)', 3)
		end

		local theme = {}
		local fields = { "FontColor", "MainColor", "AccentColor", "BackgroundColor", "OutlineColor" }

		for _, field in next, fields do
			theme[field] = Options[field].Value:ToHex()
		end

		writefile(self.Folder .. '/themes/' .. file .. '.json', httpService:JSONEncode(theme))
	end

	function ThemeManager:ReloadCustomThemes()
		local list = listfiles(self.Folder .. '/themes')

		local out = {}
		for i = 1, #list do
			local file = list[i]
			if file:sub(-5) == '.json' then
				-- i hate this but it has to be done ...

				local pos = file:find('.json', 1, true)
				local char = file:sub(pos, pos)

				while char ~= '/' and char ~= '\\' and char ~= '' do
					pos = pos - 1
					char = file:sub(pos, pos)
				end

				if char == '/' or char == '\\' then
					table.insert(out, file:sub(pos + 1))
				end
			end
		end

		return out
	end

	function ThemeManager:SetLibrary(lib)
		self.Library = lib
	end

	function ThemeManager:BuildFolderTree()
		local paths = {}

		-- build the entire tree if a path is like some-hub/phantom-forces
		-- makefolder builds the entire tree on Synapse X but not other exploits

		local parts = self.Folder:split('/')
		for idx = 1, #parts do
			paths[#paths + 1] = table.concat(parts, '/', 1, idx)
		end

		table.insert(paths, self.Folder .. '/themes')
		table.insert(paths, self.Folder .. '/settings')

		for i = 1, #paths do
			local str = paths[i]
			if not isfolder(str) then
				makefolder(str)
			end
		end
	end

	function ThemeManager:SetFolder(folder)
		self.Folder = folder
		self:BuildFolderTree()
	end

	function ThemeManager:CreateGroupBox(tab)
		assert(self.Library, 'Must set ThemeManager.Library first!')
		return tab:AddLeftGroupbox('Themes')
	end

	function ThemeManager:ApplyToTab(tab)
		assert(self.Library, 'Must set ThemeManager.Library first!')
		local groupbox = self:CreateGroupBox(tab)
		self:CreateThemeManager(groupbox)
	end

	function ThemeManager:ApplyToGroupbox(groupbox)
		assert(self.Library, 'Must set ThemeManager.Library first!')
		self:CreateThemeManager(groupbox)
	end

	ThemeManager:BuildFolderTree()
end

return ThemeManager
