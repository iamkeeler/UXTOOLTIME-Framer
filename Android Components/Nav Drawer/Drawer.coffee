plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Drawer- hidden until hotspot is tapped

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
	width: 304
	height: Screen.height-48
	y: Align.top
	x: Align.left -Screen.width-57
	backgroundColor: "#fff"
	shadowBlur: 16
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 0
	shadowBlur: 16
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.18)"
	shadowY: 0

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
		y: i*48 + 184
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
	height: 167
	y: Align.top
	backgroundColor: "primarycolor"
	parent: Drawer
	
Title = new TextLayer
	text: "John Locke"
	fontFamily: "Roboto"
	fontWeight: 700
	fontSize: 20
	color:  "rgba(0,0,0,0.87)"
	y: Align.top 109
	x: Align.left 16
	parent: TopPortion

Subtext = new TextLayer
	text: "heyfromjohn@gmail.com"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 14
	color:  "rgba(0,0,0,0.87)"
	y: Align.top 135
	x: Align.left 16
	parent: TopPortion

DrawerAvatar = new Layer
	width: 48
	height: 48
	x: Align.left 16
	y: Align.top 40
	borderRadius: 100
	backgroundColor: "#E0E0E0"
	parent: TopPortion

DrawerDivider = new Layer
	width: Drawer.width
	height: 1
	y: Align.bottom
	backgroundColor: "#000"
	opacity: 0.12
	parent: TopPortion

# Hotspot layer - - set opacity to 0.0 to hide
DrawerHotSpot = new Layer
	x: Align.left 5
	y: Align.top 28
	opacity: 0.3
	width: 48
	height: 48

# Show on hotspot click
DrawerHotSpot.onClick ->
	Drawer.animate
		x: Align.left
		options:
			curve: "spring(250,37,20)"
	scrimbg.stateSwitch("show")

#Hide on scrimbg click
scrimbg.onClick ->
	Drawer.animate
		x: Align.left -Screen.width-57
		options:
			curve: "spring(250,37,20)"
	scrimbg.stateSwitch("hide")

# Hide on bottomsheet swipe left
Drawer.onSwipeLeft ->
	Drawer.animate
		x: Align.left -Screen.width-57
		options:
			curve: "spring(250,37,20)"
	scrimbg.stateSwitch("hide")

# </fold>

"""




