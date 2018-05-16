plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Card - Image Top

#Change Color Here
primarycolor = "#007cb0"

#Main Container
Card = new Layer
	width: 344
	height: 376
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
	y: Align.top 212
	color: "#000"
	opacity: 0.87
	fontSize: 24
	fontWeight: 500
	textAlign: "center"
	fontFamily: "Roboto"
	parent: Card

#Change Subtext Here
Subtext = new TextLayer
	text: "Secondary text"
	x: Align.left 16
	y: Align.top 242
	width: 230
	color: "#000"
	opacity: 0.87
	fontSize: 14
	fontWeight: 500
	textAlign: "left"
	fontFamily: "Roboto"
	parent: Card

#Change Main Content Here
Content = new TextLayer
	text: "Lorem ipsum dolor sit amet, consectetur adipisicing elitm sed do eiusmod tempor "
	x: Align.left 16
	y: Align.top 277
	width: Card.width-32
	color: "#000"
	opacity: 0.60
	fontSize: 14
	fontWeight: 500
	textAlign: "left"
	fontFamily: "Roboto"
	parent: Card

#Change Image Here
Image = new Layer
	width: Card.width
	height: 196
	x: Align.center
	y: Align.top
	borderRadius: "10px 10px 0 0"
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
