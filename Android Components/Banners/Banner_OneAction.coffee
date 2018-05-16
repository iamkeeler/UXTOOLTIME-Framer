plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Banner - One Line / One Action

#Change Color Here
primarycolor = "#007cb0"

#Main Container
Banner = new Layer
	height: 54
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
	text: "One line text string with one action"
	fontFamily: "Roboto"
	fontWeight: "500"
	fontSize: 14
	width: Banner.width-32
	color: "#000"
	opacity: 0.60
	x: Align.center
	y: Align.top 18
	parent: Banner

ActionButton = new Layer
	width: 72
	height: 36
	x: Align.right -8
	y: Align.bottom -8
	backgroundColor: ""
	parent: Banner

#Change Action Label
ActionLabel = new TextLayer
	text: "ACTION"
	fontWeight: "600"
	fontSize: 14
	color: primarycolor
	x: Align.center
	y: Align.center
	parent: ActionButton

# </fold>

"""
