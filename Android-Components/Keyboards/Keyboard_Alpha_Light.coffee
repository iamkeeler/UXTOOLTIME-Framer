plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Keyboard - Alpha - Light
alphaKeyboard = new Layer
	width: Screen.width
	height: 224
	backgroundColor: "#ECEFF0"
	shadowColor: "rgba(0,0,0,0.24)"
	shadowX: 0
	shadowY: -2
	shadowBlur: 2
	y: Align.bottom -48

numbers=["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

alpha1 = ["q", "w", "e", "r", "t", "y", "u", "i", "o", "p"]

alpha2 = ["a", "s", "d", "f", "g", "h", "j", "k", "l"]

alpha3 = ["z", "x", "c", "v", "b", "n", "m"]

for i in [0..9]
	Numbers = new TextLayer
		text: numbers[i]
		fontFamily: "Roboto"
		fontWeight: 500
		fontSize: 10
		color: "#455A64"
		x: i*(alphaKeyboard.width/10.3)+alphaKeyboard.width/11
		y: Align.top 20
		parent: alphaKeyboard
	

for i in [0..9]
	alpha_1 = new TextLayer
		text: alpha1[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 22
		color: "#37474F"
		x: i*(alphaKeyboard.width/10.3)+alphaKeyboard.width/20
		y: Align.top 36
		parent: alphaKeyboard

for i in [0..8]
	alpha_2 = new TextLayer
		text: alpha2[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 22
		color: "#37474F"
		x: i*(alphaKeyboard.width/10.3)+alphaKeyboard.width/10
		y: Align.top 87
		parent: alphaKeyboard

for i in [0..6]
	alpha_3 = new TextLayer
		text: alpha3[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 22
		color: "#37474F"
		x: i*(alphaKeyboard.width/10.3)+alphaKeyboard.width/5
		y: Align.top 139
		parent: alphaKeyboard



Submit = new Layer
	size: 36
	borderRadius: 100
	shadowColor: "rgba(0,0,0,0.24)"
	shadowX: 0
	shadowY: 0
	shadowBlur: 0
	backgroundColor: "#007cb0"
	x: Align.right -12
	y: Align.bottom -12
	parent: alphaKeyboard


	

Sumbit_return = new SVGLayer
	html: '<svg viewBox="4 3 10 12"><title>Untitled-2</title><polygon points="17.1 0.64 15.29 0.64 15.29 4.2 3.46 4.2 6.38 1.28 5.1 0 0 5.1 5.1 10.2 6.38 8.93 3.46 6.01 17.1 6.01 17.1 0.64" style="fill:#fff"/></svg>'
	x: Align.center
	y: Align.center
	backgroundColor: ""
	fill: "#fff"
	width: 12
	height: 1
	parent: Submit
	

	
Backspace = new SVGLayer
	html: '<svg viewBox="0 0 200 50"><title>ic_backspace_black_24px (1)</title><path d="M22,3H7a1.88,1.88,0,0,0-1.59.88L0,12l5.41,8.11A1.89,1.89,0,0,0,7,21H22a2,2,0,0,0,2-2V5A2,2,0,0,0,22,3ZM19,15.59,17.59,17,14,13.41,10.41,17,9,15.59,12.59,12,9,8.41,10.41,7,14,10.59,17.59,7,19,8.41,15.41,12Z" transform="translate(0 -3)"/></svg>'
	x: Align.right 160
	y: Align.bottom 116
	fill: "#37474F"
	opacity: 0.60
	parent: alphaKeyboard

Shift = new SVGLayer
	html: '<svg id="Shift1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 85 8.69"><title>ic_</title><path d="M-33.14,11.48H-35l3.59-3.83,3.59,3.83h-1.81v2.31h-3.55Zm-1.25,4.87h6.05V15.5h-6.05Z" transform="translate(34.96 -7.65)"/></svg>'
	y: Align.top 142
	x: Align.left 26
	fill: "#37474F"
	opacity: 0.60

	parent: alphaKeyboard

SpecialCharacters = new TextLayer
	text: "?123"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 14
	color: "#37474F"
	x: Align.left 22
	y: Align.bottom -21
	parent: alphaKeyboard

comma = new TextLayer
	text: ","
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "#37474F"
	x: Align.left 72
	y: Align.bottom -16
	parent: alphaKeyboard

period = new TextLayer
	text: "."
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "#37474F"
	x: Align.right -71
	y: Align.bottom -15
	parent: alphaKeyboard

Spacebar = new Layer
	width: alphaKeyboard.width/2.4
	height: 24
	x: Align.center
	y: Align.top 183
	borderRadius: 4
	backgroundColor: "#37474F"
	opacity: 0.10
	parent: alphaKeyboard

	

# </fold>

"""
