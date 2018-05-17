plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Card - Full Image

#Change Text Color Here
Textcolor = "#fff"

#Main Container
Card = new Layer
	width: 344
	height: 258
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
	y: Align.top 140
	color: Textcolor
	fontSize: 34
	fontWeight: 500
	textAlign: "center"
	fontFamily: "Roboto"
	z: 1
	parent: Card

#Change Subtext Here
Subtext = new TextLayer
	text: "Secondary text"
	x: Align.left 16
	y: Align.top 182
	width: 230
	color: Textcolor
	opacity: 0.87
	fontSize: 14
	fontWeight: 500
	textAlign: "left"
	fontFamily: "Roboto"
	z: 1
	parent: Card

#Change Image Here
Image = new Layer
	width: Card.width
	height: 258
	x: Align.center
	y: Align.top
	borderRadius: 4
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
	color: Textcolor
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
	color: Textcolor
	x: Align.center
	y: Align.center
	parent: Action2Button
	
# </fold>

"""
