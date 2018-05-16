plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#TextField

#Change Color Here
primarycolor = "#007cb0"


#Main Container
textfield = new Layer
	height: 86
	width: Screen.width
	backgroundColor: "#fff"
	

#Line
line = new Layer
	width: Screen.width-32
	height: 1
	x: Align.center
	y: Align.top 60
	backgroundColor: "#000"
	opacity: 0.42
	parent: textfield

line.states.active=
	height: 2
	backgroundColor: primarycolor
	opacity: 1.0
	animationOptions:
		curve: "Spring"



#Change Label Here
labeltext = new TextLayer
	text: "Label"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	x: Align.left 16
	y: Align.top 34
	color: "#000"
	opacity: 0.87
	parent: textfield

labeltext.states.active=
	fontWeight: 400
	x: Align.left 12
	y: Align.top 14
	scale: 0.8
	color: primarycolor
	animationOptions:
		curve: "spring"


#Change Input Text Here
inputtext = new TextLayer
	text: "Input"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	x: Align.left 16
	y: Align.top 34
	color: "#000"
	opacity: 0.0
	parent: textfield

inputtext.states.show=
	opacity: 0.87
	animationOptions:
		curve: "spring"

#Comment out if no helper text
helpertext = new TextLayer
	text: "Helper text"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 12
	x: Align.left 16
	y: Align.bottom -2
	color: "#000"
	opacity: 0.54
	parent: textfield


#Tap Event
textfield.onTap (event, layer) ->
	labeltext.stateCycle()
	line.stateCycle()
	inputtext.stateCycle()
	

	

# </fold>

"""
