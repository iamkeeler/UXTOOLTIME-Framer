plugin.run = (contents, options) ->
	"""
#{contents}

# <fold>
#Button - Extended Floating Action

#Change Color Here
primarycolor = "#007cb0"

#Floating Action Button BG
ExtendedFloatingButton = new Layer
	backgroundColor: primarycolor
	width: 100
	x: Align.center
	y: Align.bottom -64
	height: 48
	borderRadius: 100
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 2
	shadowX: 0
	shadowBlur: 2
	opacity: 0.8
	

ButtonText = new TextLayer
	text: "CREATE"
	fontFamily: "Roboto"
	fontSize: 14
	fontWeight: 500
	letterSpacing: 1
	x: Align.center
	y: Align.center
	color: "#fff"
	parent: ExtendedFloatingButton




# </fold>


"""




