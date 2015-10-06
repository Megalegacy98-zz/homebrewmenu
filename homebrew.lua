ds = ""
position = 1
oldpad = Controls.read()
color1 = Color.new(0, 255, 255)
color2 = Color.new(0, 255, 0)
color3 = Color.new(0, 255, 0)
homebrew = System.listDirectory(System.currentDirectory() .. "/homebrew")
while true do
	pad = Controls.read()
	Screen.waitVblankStart()
	Screen.refresh()
	Screen.clear(TOP_SCREEN)
	Screen.clear(BOTTOM_SCREEN)
	y = 10
	for k, file in pairs(homebrew) do
		if k == position then
			color = color1
		else
			color = color2
		end
		Screen.debugPrint(5, y, file.name,color,TOP_SCREEN)
		y = y + 15
	end
	if (Controls.check(pad,KEY_A)) and not (Controls.check(oldpad,KEY_A)) then
		if string.sub(homebrew[position].name,-3,-1) == "3dsx" then
			System.launch3DSX(System.currentDirectory() .. "/homebrew/" .. homebrew[position].name, true) 
		end
		break
	elseif (Controls.check(pad,KEY_DUP)) and not (Controls.check(oldpad,KEY_DUP)) then
		position = position - 1
	elseif (Controls.check(pad,KEY_DDOWN)) and not (Controls.check(oldpad,KEY_DDOWN)) then
		position = position + 1
	end
	if position > #homebrew then
		position = 1
	elseif position < 1 then
		position = #homebrew
	end
	if (Controls.check(pad,KEY_B)) and not (Controls.check(oldpad,KEY_B)) then
		dofile(System.currentDirectory().."/index.lua")
	end
	Screen.flip()
	oldpad = pad
end	
