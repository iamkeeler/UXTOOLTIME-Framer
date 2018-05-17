plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Button-Toggle

#Change Color Here
primarycolor = "#007cb0"

#Change Icons Here
Icons = ['<svg><path d="M12,21.35,10.55,20C5.4,15.36,2,12.28,2,8.5A5.45,5.45,0,0,1,7.5,3,6,6,0,0,1,12,5.09,6,6,0,0,1,16.5,3,5.45,5.45,0,0,1,22,8.5c0,3.78-3.4,6.86-8.55,11.54Z" transform="translate(0 1)"</svg>',
'<svg><path d="M12,9a3,3,0,1,0,3,3A3,3,0,0,0,12,9Zm0,8a5,5,0,1,1,5-5A5,5,0,0,1,12,17ZM12,4.5A11.83,11.83,0,0,0,1,12a11.82,11.82,0,0,0,22,0A11.83,11.83,0,0,0,12,4.5Z" transform="translate(0 1)"</svg>',
'<svg><path d="M17.9,18a2,2,0,1,0,2,2A2,2,0,0,0,17.9,18ZM2.15,2.05V4h2l3.55,7.55L6.34,14a2,2,0,0,0,1.72,3H19.87V15H8.06l1.08-2h7.33a2,2,0,0,0,1.73-1l3.52-6.46A1,1,0,0,0,20.87,4H6.3l-.93-2ZM8.06,18a2,2,0,1,0,2,2A2,2,0,0,0,8.06,18Z"/></clipPath></defs><path d="M17.9,18a2,2,0,1,0,2,2A2,2,0,0,0,17.9,18ZM2.15,2.05V4h2l3.55,7.55L6.34,14a2,2,0,0,0,1.72,3H19.87V15H8.06l1.08-2h7.33a2,2,0,0,0,1.73-1l3.52-6.46A1,1,0,0,0,20.87,4H6.3l-.93-2ZM8.06,18a2,2,0,1,0,2,2A2,2,0,0,0,8.06,18Z" transform="translate(-0.18 -0.06)"><g style="isolation:isolate"><rect width="23.62" height="23.88"></svg>']

bttns = []
active = []
separator = []

#Toggle Button
for i in [0...3]
	ToggleButton = new Layer
		backgroundColor: "#fff"
		width: 48
		height: 48
		x: Align.center i*47 -47
		y: Align.top 80
		borderWidth: 1
		borderColor: "rgba(0,0,0,0.12)"

	Icon = new SVGLayer
		html: Icons[i]
		size: 24
		x: Align.center
		y: Align.center
		fill: "#000"
		opacity: 0.54
		parent: ToggleButton
	
	#Icon Color State
	Icon.states.active=
		fill: primarycolor

	bttns.push(ToggleButton)
	active.push(Icon)

active[0].stateSwitch "active"
bttns[0].borderRadius= "10px 0 0 10px"
bttns[2].borderRadius= "0 10px 10px 0"

#events
bttns[0].onTap ->
	active[0].stateSwitch "active"
	active[1].stateSwitch "default"
	active[2].stateSwitch "default"

bttns[1].onTap ->
	active[1].stateSwitch "active"
	active[0].stateSwitch "default"
	active[2].stateSwitch "default"

bttns[2].onTap ->
	active[2].stateSwitch "active"
	active[1].stateSwitch "default"
	active[0].stateSwitch "default"

# </fold>


"""




