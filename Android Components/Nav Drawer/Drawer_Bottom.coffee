plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Bottom Drawer- hidden until hotspot is tapped

#Change Color Here
primarycolor = "#007cb0"

#Dark transparent screen bg
scrimbg = new Layer
	backgroundColor: "rgba(50,50,50,0.50)"
	width: Screen.width
	height: Screen.height-48
	y: Align.top
	opacity: 0.0
	
#scrimbg states/animation
scrimbg.states.show=
	opacity: 1.0
		
scrimbg.states.hide=
	opacity: 0.0
	options:
		time: 0.5	

#Main Container
Drawer = new Layer
	width: Screen.width
	height: Screen.height/2
	y: Align.bottom Screen.height
	x: Align.center
	backgroundColor: "#fff"
	shadowBlur: 16
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 0
	shadowBlur: 16
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.18)"
	shadowY: 0
	borderRadius: "10px 10px 0 0"

#Drawer Icon Array
DrawerIcon = []

#Drawer Menu Option Titles - Set options here
MenuOptionText = ["Inbox","Outbox", "Trash", "Spam", "Forums", "Updates", "Promos", "Purchases"]

selecteditem = []
#set number of options here. Change number in []
for i in [0..7]
	
	MenuLineItem = new Layer
		height: 48
		width: Drawer.width
		backgroundColor: ""
		y: i*48 +74
		name: [i]
		parent: Drawer
	
	Selected = new Layer
		height: 40
		width: Drawer.width-16
		y: Align.center
		x: 8
		borderRadius: 4
		backgroundColor: primarycolor
		opacity: 0.0
		name: "Selected" + [i]
		parent: MenuLineItem
	
	Icon = new Layer
		size: 24
		backgroundColor: "rgba(0,0,0,0.54)"
		x: Align.left 16 
		y: Align.center
		parent: MenuLineItem
	
	MenuOption = new TextLayer
		text: MenuOptionText[i]
		fontFamily: "Roboto"
		fontWeight: 500
		color: "#000"
		opacity: 0.87
		fontSize: 14
		x: Align.left 72
		y: Align.center
		parent: MenuLineItem



		selecteditem.push(Selected)

	#SelectedHighlight
	Selected.onTap ->	
		for Selected in selecteditem
			Selected.backgroundColor=""
		this.backgroundColor=primarycolor
		this.opacity= 0.2

#Top Color
TopPortion = new Layer
	width: Drawer.width
	height: 64
	y: Align.top
	backgroundColor: "primarycolor"
	borderRadius: "10px 10px 0 0"
	parent: Drawer
	
Title = new TextLayer
	text: "Title"
	fontFamily: "Roboto"
	fontWeight: 700
	fontSize: 20
	color:  "rgba(0,0,0,0.87)"
	y: Align.top 12
	x: Align.left 16
	parent: TopPortion

Subtext = new TextLayer
	text: "subtext"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 13
	color:  "rgba(0,0,0,0.54)"
	y: Align.top 38
	x: Align.left 16
	parent: TopPortion

# Hotspot layer - - set opacity to 0.0 to hide
DrawerHotSpot = new Layer
	x: Align.left 5
	y: Align.bottom -48
	opacity: 0.3
	width: 48
	height: 48

# Show on hotspot click
DrawerHotSpot.onClick ->
	Drawer.animate
		y: Align.bottom
		options:
			curve: "spring(250,37,20)"
	scrimbg.stateSwitch("show")

#Hide on scrimbg click
scrimbg.onClick ->
	Drawer.animate
		y: Align.bottom Screen.height
		options:
			curve: "spring(250,37,20)"
	scrimbg.stateSwitch("hide")

# Hide on Drawer swipe Down
Drawer.onSwipeDown ->
	Drawer.animate
		y: Align.bottom Screen.width
		options:
			curve: "spring(250,37,20)"
	scrimbg.stateSwitch("hide")

# </fold>

"""




