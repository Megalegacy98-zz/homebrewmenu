y = 0
while true do
	Screen.refresh()
	Screen.waitVblankStart()
	Screen.clear(TOP_SCREEN)
	Screen.debugPrint(0,0,"Loading game cartridge...",Color.new(243,192,135),TOP_SCREEN)
	Screen.flip()
	System.launchGamecard()
end
