plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Button-Text - Small

#Change Color Here
primarycolor = "#007cb0"

#Button
SmallButton = new Layer
	backgroundColor: ""
	width: 104
	x: Align.right -16
	y: Align.bottom -64
	height: 36
	borderRadius: 4
	borderWidth: 1
	borderColor: ""

#Change Label here
BtnText = new TextLayer
	text: "BUTTON"
	x: Align.center
	y: Align.center
	color: primarycolor
	width: SmallButton.width
	fontSize: 14
	fontWeight: 600
	letterSpacing: 1.25
	lineHeight: 16
	textAlign: "center"
	fontFamily: "Roboto"
	parent: SmallButton

# </fold>


"""




