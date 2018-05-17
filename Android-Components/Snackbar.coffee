plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Snackbar

#Change Color Here
primarycolor = "#007cb0"


#Main Container
Snackbar = new Layer
	width: Screen.width
	height: 48
	y: Align.bottom 48
	backgroundColor: "rgba(48,48,48,1)"
	
#Change Title here
Snackbar_Title = new TextLayer
	text: "Single-line snackbar"
	x: Align.left 24
	y: Align.center
	color: "#fff"
	fontFamily: "Roboto"
	fontSize: 14
	fontWeight: 400
	textAlign: "left"
	parent: Snackbar

#Change Action text	
Snackbar_Action = new TextLayer
	text: "ACTION"
	x: Align.right -24
	y: Align.center
	color: primarycolor
	fontFamily: "Roboto"
	fontSize: 14
	fontWeight: 500
	textAlign: "right"
	parent: Snackbar




# Hotspot layer - set opacity to 0.0 to hide
SnackbarHotSpot = new Layer
	x: Align.center
	y: Align.bottom -48
	opacity: 0.5
	width: 200
	height: 48

# Show on hotspot click
SnackbarHotSpot.onClick (event, layer) ->

	Snackbar.states.show =
		y: Align.bottom -48
			
	Snackbar.states.hide =	
		y: Align.bottom 48
		
	SnackShow = new Animation Snackbar,
		Snackbar.states.show
		
	SnackHide = new Animation Snackbar,
		Snackbar.states.hide
		
#Uncomment below if using floating action button.
# 	FloatingButton.states.moveup=
# 		y: Align.bottom -112
# 	
# 	FloatingButton.states.movedown=
# 		y: Align.bottom -64
# 		
# 	floatmoveUp = new Animation FloatingButton,
# 		FloatingButton.states.moveup	
# 		
# 	floatmoveDown = new Animation FloatingButton,
# 		FloatingButton.states.movedown
	
	SnackShow.start()
#Uncomment below if using floating action button. Same with "floatmoveDown.start()"	
	#floatmoveUp.start()
	Utils.delay 3.5, ->
		SnackHide.start()
		#floatmoveDown.start()

	
# </fold>


"""




