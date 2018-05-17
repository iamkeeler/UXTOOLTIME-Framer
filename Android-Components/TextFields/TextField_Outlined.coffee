plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#TextField - Outlined

#Change Color Here
primarycolor = "#007cb0"


#Main Container
textfield = new Layer
	height: 86
	width: Screen.width
	backgroundColor: "#fff"
	opacity: 1.0

#Faint Container
DiscoveryContainer = new Layer
	height: 56
	width: Screen.width-46
	x: Align.center 
	y: Align.top 10
	backgroundColor: ""
	borderRadius: 5
	borderColor: "rgba(0,0,0,0.12)"
	borderWidth: 1
	parent: textfield

DiscoveryContainer.states.active=
	borderColor: primarycolor
	borderWidth: 2
	opacity: 1.0

Cutout = new Layer
	parent: textfield
	width: 42
	height: 6
	y: Align.top 8
	x: Align.left 34
	opacity: 0.0
	backgroundColor: "#fff"

Cutout.states.active=
	opacity: 1.0

#Change Label Here
labeltext = new TextLayer
	text: "Label"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	x: Align.left 40
	y: Align.top 32
	color: "#000"
	opacity: 0.87
	parent: textfield



labeltext.states.active=
	fontWeight: 400
	x: Align.left 36
	y: Align.top 1
	scale: 0.8
	opacity: 1.0
	color: primarycolor
	backgroundColor: "#fff"
	animationOptions:
		curve: "spring"


#Change Input Text Here
inputtext = new TextLayer
	text: "Input"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	x: Align.left 40
	y: Align.top 32
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
	x: Align.left 40
	y: Align.bottom -2
	color: "#000"
	opacity: 0.54
	parent: textfield


#Tap Event
textfield.onTap (event, layer) ->
	labeltext.stateCycle()
	DiscoveryContainer.stateCycle()
	inputtext.stateCycle()
	Cutout.stateCycle()
	


	
	

# </fold>

"""
