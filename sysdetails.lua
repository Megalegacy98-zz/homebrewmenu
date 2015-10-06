firmware = System.getFirmware()
region = System.getRegion()
kernel = System.getKernel()
model = System.getModel() [0 = Nintendo 3DS, 1 = Nintendo 3DS XL, 2 = New 3DS, 3 = Nintendo 2DS, 4 = New Nintendo 3DS XL]
language = System.getLanguage()
color = Color.new(255,135,255)
pad = Controls.read()

while true do
Screen.debugPrint(0,15,"Your firmware is: " .. firmware .. "." , color,TOP_SCREEN)
Screen.debugPrint(0,30,"Your system region is: " .. region .. "." , color,TOP_SCREEN)
Screen.debugPrint(0,45,"Your kernel version: " .. kernel .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,60,"Your system model: " .. model .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,75,"The language on your 3DS is: " .. language .. ".", color,TOP_SCREEN)
Screen.debugPrint(0,125,"Press B to exit.", color,TOP_SCREEN)
  if (Controls.check(pad,KEY_B))
  dofile(System.currentDirectory() .. "/index.lua")
  end
end
