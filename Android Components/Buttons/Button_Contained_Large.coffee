plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Button-Contained - Large

#Change Color Here
primarycolor = "#007cb0"

#Button
LargeButton = new Layer
	backgroundColor: primarycolor
	width: Screen.width-32
	x: Align.center
	y: Align.bottom -64
	height: 36
	borderRadius: 4
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 2
	shadowX: 0
	shadowBlur: 2

#Change Label here
BtnText = new TextLayer
	text: "BUTTON"
	x: Align.center
	y: Align.center
	color: "#fff"
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




