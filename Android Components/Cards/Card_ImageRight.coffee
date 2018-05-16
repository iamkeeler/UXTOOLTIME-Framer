plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Card - Image Right

#Change Color Here
primarycolor = "#007cb0"

#Main Container
Card = new Layer
	width: 344
	height: 148
	x: Align.center
	y: Align.top 96
	shadowSpread: 1
	shadowColor: "rgba(156,156,156,0.5)"
	shadowBlur: 4
	shadowY: 2
	shadowX: 0
	backgroundColor: "#fff"
	borderRadius: 4

#Change Title Here
Title = new TextLayer
	text: "Title goes here"
	x: Align.left 16
	y: Align.top 16
	color: "#000"
	opacity: 0.87
	fontSize: 24
	fontWeight: 500
	textAlign: "center"
	fontFamily: "Roboto"
	parent: Card

#Change Subtext Here
Subtext = new TextLayer
	text: "Secondary line text Lorem ipsum dolor sit amet"
	x: Align.left 16
	y: Align.top 54
	width: 230
	color: "#000"
	opacity: 0.54
	fontSize: 14
	fontWeight: 500
	textAlign: "left"
	fontFamily: "Roboto"
	parent: Card

#Change Image Here
Image = new Layer
	size: 80
	x: Align.right -16
	y: Align.top 16
	parent: Card

Action1Button = new Layer
	width: 88
	height: 36
	x: Align.left 8
	y: Align.bottom -8
	backgroundColor: ""
	parent: Card

#Change Action 1 Label
Action1Label = new TextLayer
	text: "ACTION 1"
	fontWeight: "600"
	fontSize: 14
	color: primarycolor
	x: Align.center
	y: Align.center
	parent: Action1Button

Action2Button = new Layer
	width: 88
	height: 36
	x: Align.left 96
	y: Align. center
	backgroundColor: ""
	parent: Action1Button

#Change Action 2 Label
Action2Label = new TextLayer
	text: "ACTION 2"
	fontWeight: "600"
	fontSize: 14
	color: primarycolor
	x: Align.center
	y: Align.center
	parent: Action2Button

# </fold>

"""
