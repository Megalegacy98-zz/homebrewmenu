firmware = System.getFirmware()
region = System.getRegion()
kernel = System.getKernel()
model = System.getModel() 
language = System.getLanguage()
color = Color.new(255,135,255)
pad = Controls.read()

while true do
Screen.waitVblankStart()
Screen.refresh()
Screen.clear(TOP_SCREEN)
Screen.clear(BOTTOM_SCREEN)
Screen.debugPrint(0,15,"Your firmware is: " .. firmware .. "." , color,TOP_SCREEN)
Screen.debugPrint(0,30,"Your system region is: " .. region .. "." , color,TOP_SCREEN)
Screen.debugPrint(0,45,"Your kernel version: " .. kernel .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,60,"Your system model: " .. model .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,75,"The language on your 3DS is: " .. language .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,125,"Press B to exit.", color,TOP_SCREEN)
if (Controls.check(pad,KEY_B)) then
dofile(System.currentDirectory() .. "/index.lua")
end
end 
