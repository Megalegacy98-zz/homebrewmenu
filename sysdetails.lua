firmware = System.getFirmware()
region = System.getRegion()
kernel = System.getKernel()
model = System.getModel()
language = System.getLanguage()
color = Color.new(255,135,255)
oldpad = Controls.read()

if model == 0 then
typeof = "Nintendo 3DS"
elseif model == 1 then
typeof = "Nintendo 3DS XL"
elseif model == 2 then
typeof = "New Nintendo 3DS"
elseif model == 3 then
typeof = "Nintendo 2DS"
elseif model == 4 then
typeof = "New Nintendo 3DS XL"
end

if region == 1 then
regiontype = "USA"
elseif region == 2 then
regiontype = "EUR"
elseif region == 3 then
regiontype = "JPN"
end

if language == 1 then
languagetype = "English"
end

while true do
pad = Controls.read()
Screen.waitVblankStart()
Screen.refresh()
Screen.clear(TOP_SCREEN)
Screen.clear(BOTTOM_SCREEN)
Screen.debugPrint(0,15,"Your firmware is: " .. firmware .. "." , color,TOP_SCREEN)
Screen.debugPrint(0,30,"Your system region is: " .. regiontype .. "." , color,TOP_SCREEN)
Screen.debugPrint(0,45,"Your kernel version: " .. kernel .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,60,"Your system model: " .. typeof .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,75,"The language on your 3DS is: " .. languagetype .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,125,"Press B to exit.", color,TOP_SCREEN)
Screen.flip()
if (Controls.check(pad,KEY_B)) and not (Controls.check(oldpad,KEY_B)) then
dofile(System.currentDirectory() .. "/index.lua")
end
end 
