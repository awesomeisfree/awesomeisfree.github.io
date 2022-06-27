local pink="The Racer"
local green="The Track"
local purple="The Driving Strategy"
local blue="First Run (Left Lane)"
local yellow="Second Run(Right Lane)"
local orange="The Ghost"
local leftOffset=75
local topOffset=50
local horiGap=150
local vertGap=75
local disply=0
while true do
	if joypad.get(1)['DPad L'] then
		disply=1
	end
	if joypad.get(1)['DPad R'] then
		disply=0
	end
	if disply==1 then
		gui.drawBox(leftOffset-75,topOffset-25,leftOffset+75,topOffset+25,nil,"black")
		gui.drawText(leftOffset,topOffset,pink,"pink","charcoal",20,"Comic Sans MS",nil,"center","middle")

		gui.drawBox(leftOffset-75 + horiGap,topOffset-25,leftOffset+75+horiGap,topOffset+25,nil,"black")
		gui.drawText(leftOffset+horiGap,topOffset,green,"lightgreen","charcoal",20,"Comic Sans MS",nil,"center","middle")

		gui.drawBox(leftOffset-75,topOffset-25 + vertGap,leftOffset+75,topOffset+25+vertGap,nil,"black")
		gui.drawText(leftOffset,topOffset+vertGap,purple,"purple","charcoal",14,"Comic Sans MS",nil,"center","middle")

		gui.drawBox(leftOffset-75 + horiGap,topOffset-25+vertGap,leftOffset+75+horiGap,topOffset+25+vertGap,nil,"black")
		gui.drawText(leftOffset+horiGap,topOffset+vertGap,blue,"lightblue","charcoal",14,"Comic Sans MS",nil,"center","middle")

		gui.drawBox(leftOffset-75 ,topOffset-25+2*vertGap,leftOffset+75,topOffset+25+2*vertGap,nil,"black")
		gui.drawText(leftOffset,topOffset+2*vertGap,yellow,"yellow","charcoal",12,"Comic Sans MS",nil,"center","middle")

		gui.drawBox(leftOffset-75+horiGap ,topOffset-25+2*vertGap,leftOffset+75+horiGap,topOffset+25+2*vertGap,nil,"black")
		gui.drawText(leftOffset+horiGap,topOffset+2*vertGap,orange,"orange","charcoal",12,"Comic Sans MS",nil,"center","middle")
	end

	emu.frameadvance();
end