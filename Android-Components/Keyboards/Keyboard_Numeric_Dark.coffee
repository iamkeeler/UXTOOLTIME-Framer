plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Keyboard - Numeric - Dark
NumericKeyboard = new Layer
	width: Screen.width
	height: 224
	backgroundColor: "#263238"
	shadowColor: "rgba(0,0,0,0.24)"
	shadowX: 0
	shadowY: -2
	shadowBlur: 2
	y: Align.bottom -48

numbers1=["1", "2", "3"]

numbers2 = ["4", "5", "6"]

numbers3 = ["7", "8", "9"]

numbers4 = ["", "0", ""]

left = ["+", "-", "*", "/"]



for i in [0..2]
	Numbers_1 = new TextLayer
		text: numbers1[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 30
		color: "#8C9295"
		x: i*(NumericKeyboard.width/3.8)+NumericKeyboard.width/4.7
		y: Align.top 16
		parent: NumericKeyboard
	
for i in [0..2]
	Numbers_2 = new TextLayer
		text: numbers2[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 30
		color: "#8C9295"
		x: i*(NumericKeyboard.width/3.8)+NumericKeyboard.width/4.7
		y: Align.top 68
		parent: NumericKeyboard

for i in [0..2]
	Numbers_3 = new TextLayer
		text: numbers3[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 30
		color: "#8C9295"
		x: i*(NumericKeyboard.width/3.8)+NumericKeyboard.width/4.7
		y: Align.top 119
		parent: NumericKeyboard
		
for i in [0..2]
	Numbers_4 = new TextLayer
		text: numbers4[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 30
		color: "#8C9295"
		x: i*(NumericKeyboard.width/3.8)+NumericKeyboard.width/4.7
		y: Align.top 171
		parent: NumericKeyboard
	


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
	parent: NumericKeyboard
# 
# 
# 	

Sumbit_return = new SVGLayer
	html: '<svg viewBox="4 3 10 12"><title>Untitled-2</title><polygon points="17.1 0.64 15.29 0.64 15.29 4.2 3.46 4.2 6.38 1.28 5.1 0 0 5.1 5.1 10.2 6.38 8.93 3.46 6.01 17.1 6.01 17.1 0.64" style="fill:#fff"/></svg>'
	x: Align.center
	y: Align.center
	backgroundColor: ""
	fill: "#fff"
	width: 12
	height: 1
	parent: Submit
	
# 
	
Backspace = new SVGLayer
	html: '<svg viewBox="0 0 200 50"><title>ic_backspace_black_24px (1)</title><path d="M22,3H7a1.88,1.88,0,0,0-1.59.88L0,12l5.41,8.11A1.89,1.89,0,0,0,7,21H22a2,2,0,0,0,2-2V5A2,2,0,0,0,22,3ZM19,15.59,17.59,17,14,13.41,10.41,17,9,15.59,12.59,12,9,8.41,10.41,7,14,10.59,17.59,7,19,8.41,15.41,12Z" transform="translate(0 -3)"/></svg>'
	x: Align.right 158
	y: Align.bottom 116
	fill: "##818A8F"

	parent: NumericKeyboard

AlphaCharacters = new TextLayer
	text: "ABC"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 18
	color: "rgba(255,255,255,0.8)"
	x: Align.left 18
	y: Align.bottom -10
	parent: NumericKeyboard

comma = new TextLayer
	text: ","
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "rgba(255,255,255,0.8)"
	x: Align.left 67
	y: Align.bottom -6
	parent: NumericKeyboard

SpecialChar = new TextLayer
	text: "@?#"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	color: "rgba(255,255,255,0.8)"
	x: Align.left 92
	y: Align.bottom -6
	parent: NumericKeyboard

Equals = new TextLayer
	text: "="
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "rgba(255,255,255,0.8)"
	x: Align.right -106
	y: Align.bottom -6
	parent: NumericKeyboard

for i in [0...4]
	LeftSidecharacters = new TextLayer
		text: left[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 22
		color: "rgba(255,255,255,0.8)"
		x: Align.left 24
		y: i*40 +22
		parent: NumericKeyboard


Percent = new TextLayer
	text: "%"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "rgba(255,255,255,0.8)"
	x: Align.right -18
	y: Align.top 18
	parent: NumericKeyboard


Space = new TextLayer
	text: "["
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 22
	color: "rgba(255,255,255,0.8)"
	x: Align.right -25
	y: Align.top 78
	rotation: -90
	parent: NumericKeyboard

leftdivider = new Layer
	width: 1
	height: 175
	x: Align.center -123
	y: Align.top 4
	backgroundColor: "#41474B"
	parent: NumericKeyboard

rightdivider = new Layer
	width: 1
	height: 175
	x: Align.center 123
	y: Align.top 4
	backgroundColor: "#41474B"
	parent: NumericKeyboard

	

# </fold>

"""
