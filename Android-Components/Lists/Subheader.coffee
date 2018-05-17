plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Subheader
Subheader = new Layer
	height: 48
	width: Screen.width
	backgroundColor: "#fff"

#Change Title Here
Subheader_title = new TextLayer
	text: "Subheader"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	y: Align.center
	x: Align.left 16
	color: "#000"
	opacity: 0.54
	parent: Subheader
	
	
# </fold>


"""




