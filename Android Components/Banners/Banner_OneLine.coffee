plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Banner - One Line

#Change Color Here
primarycolor = "#007cb0"

#Main Container
Banner = new Layer
	height: 96
	width: Screen.width
	backgroundColor: "#fff"
	y: Align.top 80
	x: Align.center

BannerDivider = new Layer
	height: 1
	width: Banner.width
	backgroundColor: "#000"
	opacity: 0.12
	y: Align.bottom
	x: Align.center
	parent: Banner

#Change Content Here
Text = new TextLayer
	text: "One line text string with two actions"
	fontFamily: "Roboto"
	fontWeight: "500"
	fontSize: 14
	width: Banner.width-32
	color: "#000"
	opacity: 0.60
	x: Align.center
	y: Align.top 21
	parent: Banner

Action2Button = new Layer
	width: 72
	height: 36
	x: Align.right -8
	y: Align.bottom -8
	backgroundColor: ""
	parent: Banner

#Change Action 2 Label
Action2Label = new TextLayer
	text: "ACTION"
	fontWeight: "600"
	fontSize: 14
	color: primarycolor
	x: Align.center
	y: Align.center
	parent: Action2Button

Action1Button = new Layer
	width: 72
	height: 36
	x: Align.left -80
	y: Align. center
	backgroundColor: ""
	parent: Action2Button

#Change Action 1 Label
Action1Label = new TextLayer
	text: "ACTION"
	fontWeight: "600"
	fontSize: 14
	color: primarycolor
	x: Align.center
	y: Align.center
	parent: Action1Button

# </fold>

"""
