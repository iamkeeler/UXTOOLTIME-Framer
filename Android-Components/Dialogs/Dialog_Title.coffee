plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Dialog_Title

#Change Color Here
primarycolor = "rgba(54,151,241,1)"


#Dark transparent screen bg
scrimbg = new Layer
	backgroundColor: "rgba(50,50,50,0.50)"
	width: Screen.width
	height: Screen.height-48
	y: Align.top
	opacity: 0.0

#Main Container
Dialog_title = new Layer
	width: Screen.width/2 +100
	height: 248
	x: Align.center
	y: Align.center -21
	backgroundColor: "#FAFAFA"
	shadowY: 15
	shadowBlur: 12
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.22)"
	shadowY: 19
	shadowBlur: 38
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.30)"
	borderRadius: 2
	opacity: 0.0


#Change Title here
Dialog_title_Title = new TextLayer
	text: "Permissions"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 20
	color: "#000"
	opacity: 0.87
	x: Align.left 22
	y: Align.top 21
	parent: Dialog_title


#Change Content here	
Dialog_title_Content = new TextLayer
	text: "Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna wirl aliqua. Up exlaborum incididunt."
	size: Screen.width/2 +100 -50
	lineHeight: 1.5
	letterSpacing: 0.4
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	x: Align.left 22
	y: Align.top 58
	color: "#000"
	opacity: 0.54
	parent: Dialog_title


#Action Buttons
DialogButtonArea = new Layer
	height: 52
	width: Dialog_title.width
	y: Align.bottom
	backgroundColor: ""
	parent: Dialog_title

	
Dialog_ActionButton1 = new TextLayer
	text: "BUTTON"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	x: Align.right -18
	y: Align.bottom -18
	textAlign: "right"
	color: primarycolor
	parent: DialogButtonArea
	
Dialog_ActionButton2 = new TextLayer
	text: "BUTTON"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	x: Align.right -100
	y: Align.bottom -18
	textAlign: "right"
	color: primarycolor
	parent: DialogButtonArea


# Hotspot layer - set opacity to 0.0 to hide
Dialog_title_HotSpot = new Layer
	x: Align.center
	y: Align.bottom -48
	opacity: 0.5
	width: 200
	height: 48


# Show on hotspot click
Dialog_title_HotSpot.onClick (event, layer) ->

	#Dialog states/animation
	Dialog_title.states.show =
		opacity: 1.0
			
	Dialog_title.states.hide =	
		opacity: 0.0
		options:
			time: 0.5
		
	DialogShow = new Animation Dialog_title,
		Dialog_title.states.show
		
	DialogHide = new Animation Dialog_title,
		Dialog_title.states.hide
	
	#scrimbg states/animation
	scrimbg.states.show=
		opacity: 1.0
		
	scrimbg.states.hide=
		opacity: 0.0
		options:
			time: 0.5
		
	scrimShow = new Animation scrimbg,
		scrimbg.states.show
	
	scrimHide = new Animation scrimbg,
		scrimbg.states.hide
	
		
	DialogShow.start()
	scrimShow.start()

	#Hide on dialog click
	Dialog_title.onClick (event, layer) ->
		DialogHide.start()
		scrimHide.start()






# </fold>

"""
