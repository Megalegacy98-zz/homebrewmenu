oldpad = Controls.read()
while true do
pad = Controls.read()
Screen.refresh()
Screen.waitVblankStart()
Screen.clear(TOP_SCREEN)
Screen.debugPrint(0,0,"Loading game cartridge...",Color.new(243,192,135),TOP_SCREEN)
System.launchGamecard()
else
y = 1
end

if y == 1 then
Screen.debugPrint(0,0,"There is no game card inserted! Press B to exit.",Color.new(243,192,135),TOP_SCREEN)
if (Controls.check(pad,KEY_B)) and not (Controls.check(oldpad,KEY_B)) then
dofile (System.currentDirectory() .. "/index.lua")
end

Screen.flip()
oldpad = pad

end
