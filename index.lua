username = System.getUsername()
sysdetailmenu = 0
homebrew = 0
gamecard = 0
themes = 0
maxy = 5
y = 1
selected = Color.new(255,255,0)
unselect = Color.new(0,255,255)
oldpad = Controls.read()

while true do
pad = Controls.read()

if (Controls.check(pad,KEY_DUP)) and not (Controls.check(oldpad,KEY_DUP)) then
  y = y - 1
end

if (Controls.check(pad,KEY_DDOWN)) and not (Controls.check(oldpad,KEY_DDOWN)) then
  y = y + 1
end

if maxy < y then
  y = 1
end

if y <= 0 then
  y = maxy
end

Screen.waitVblankStart()
Screen.refresh()
Screen.clear(TOP_SCREEN)
lol = {unselect,unselect,unselect,unselect,unselect}
lol[y] = selected
Screen.debugPrint(45,0,"" .. username .. "'s Homebrew Menu v 0.1b",unselect,TOP_SCREEN)
Screen.debugPrint(45,30,"Load Game Cartridge",lol[1],TOP_SCREEN)
Screen.debugPrint(45,45,"Load Homebrew",lol[2],TOP_SCREEN)
Screen.debugPrint(45,60,"Reboot System",lol[3],TOP_SCREEN)
Screen.debugPrint(45,75,"See system details",lol[4],TOP_SCREEN)
Screen.debugPrint(45,90,"Exit",lol[5],TOP_SCREEN)
Screen.flip()

  
if homebrew == 1 then
  dofile(System.currentDirectory().."/homebrew.lua")
end

if sysdetailmenu == 1 then
  dofile(System.currentDirectory().."/sysdetails.lua")  
end

if gamecard == 1 then
  dofile(System.currentDirectory().."/gamecard.lua")
end

if (Controls.check(pad,KEY_A)) and not (Controls.check(oldpad,KEY_A)) and y == 1 then
  gamecard = 1
end

if (Controls.check(pad,KEY_A)) and not (Controls.check(oldpad,KEY_A)) and y == 2 then
  homebrew = 1
end

if (Controls.check(pad,KEY_A)) and not (Controls.check(oldpad,KEY_A)) and y == 3 then
  System.reboot()
end

if (Controls.check(pad,KEY_A)) and not (Controls.check(oldpad,KEY_A)) and y == 4 then
  sysdetailmenu = 1
end

if (Controls.check(pad,KEY_A)) and not (Controls.check(oldpad,KEY_A)) and y == 5 then
  Sound.term()
  System.exit()
end

Screen.refresh()
Screen.waitVblankStart()
oldpad = pad
end
