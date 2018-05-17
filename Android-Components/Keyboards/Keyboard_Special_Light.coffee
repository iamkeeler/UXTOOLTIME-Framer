plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Keyboard - SpecialChar- Light
SpecialKeyboard = new Layer
	width: Screen.width
	height: 224
	backgroundColor: "#ECEFF0"
	shadowColor: "rgba(0,0,0,0.24)"
	shadowX: 0
	shadowY: -2
	shadowBlur: 2
	y: Align.bottom -48

numbers1=["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]

special1 = ["@", "#", "$", "_", "&", "-", "+", "(", ")", "/"]

special2 = ["*","''","'", ":", ";", "!", "?"]

special3 = ["", "0", ""]

left = ["+", "-", "*", "/"]

numeric = ["""1 2
  3 4"""]

for i in [0..9]
	Numbers_1 = new TextLayer
		text: numbers1[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 27
		color: "#36474F"
		x: i*(SpecialKeyboard.width/10.5)+SpecialKeyboard.width/20
		y: Align.top 17
		parent: SpecialKeyboard


for i in [0..9]
	Special_1 = new TextLayer
		text: special1[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 27
		color: "#36474F"
		x: i*(SpecialKeyboard.width/10.3)+SpecialKeyboard.width/22
		y: Align.top 76
		parent: SpecialKeyboard

for i in [0..6]
	Special_2 = new TextLayer
		text: special2[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 27
		color: "#36474F"
		x: i*(SpecialKeyboard.width/10.3)+SpecialKeyboard.width/4.8
		y: Align.top 136
		parent: SpecialKeyboard




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
	parent: SpecialKeyboard


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
	x: Align.right 158
	y: Align.bottom 116
	fill: "#37474F"
	opacity: 0.60
	parent: SpecialKeyboard


AlphaCharacters = new TextLayer
	text: "ABC"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 18
	color: "#36474F"
	x: Align.left 18
	y: Align.bottom -20
	opacity: 0.8
	parent: SpecialKeyboard

comma = new TextLayer
	text: ","
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "#36474F"
	x: Align.left 67
	y: Align.bottom -16
	opacity: 0.80
	parent: SpecialKeyboard

NumChar = new TextLayer
	text: numeric
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 12
	color: "#36474F"
	x: Align.left 85
	y: Align.bottom -18
	opacity: 0.80
	textAlign: "right"
	lineHeight: 1
	parent: SpecialKeyboard


period = new TextLayer
	text: "."
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "#37474F"
	x: Align.right -71
	y: Align.bottom -15
	parent: SpecialKeyboard

Spacebar = new Layer
	width: SpecialKeyboard.width/2.6
	height: 24
	x: Align.center 8
	y: Align.top 183
	borderRadius: 4
	backgroundColor: "#37474F"
	opacity: 0.10
	parent: SpecialKeyboard

ExtraSpecialChar = new SVGLayer
	html: '<svg viewBox="0 0 50 34"><title>Untitled-3</title><path d="M63.84,18H22.16A4.16,4.16,0,0,0,18,22.16V47.84A4.16,4.16,0,0,0,22.16,52H63.84A4.16,4.16,0,0,0,68,47.84V22.16A4.16,4.16,0,0,0,63.84,18ZM34.66,38.39H24.07v-2H34.66Zm0-5.27H24.07v-2H34.66ZM46.17,45,38.45,25h2.24L48.41,45Zm16-13L54.2,35.28l7.94,3.21V41L51.76,36.17V34.31l10.38-4.8Z" transform="translate(-18 -18)" style="fill:#818A8F"/></svg>'
	size: 25
	x: Align.left 16
	y: Align.bottom -58
	parent: SpecialKeyboard


# </fold>

"""
