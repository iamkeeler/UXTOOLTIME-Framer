plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Button-Outlined - Large

#Change Color Here
primarycolor = "#007cb0"

#Button
LargeButton = new Layer
	backgroundColor: ""
	width: Screen.width-32
	x: Align.center
	y: Align.bottom -64
	height: 36
	borderRadius: 4
	borderWidth: 1
	borderColor: "rgba(0,0,0,0.12)"

#Change Label here
BtnText = new TextLayer
	text: "OUTLINED BUTTON"
	x: Align.center
	y: Align.center
	color: primarycolor
	width: LargeButton.width
	fontSize: 14
	fontWeight: 600
	letterSpacing: 1.25
	lineHeight: 16
	textAlign: "center"
	fontFamily: "Roboto"
	parent: LargeButton

# </fold>


"""




