plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Dialog_No Title

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
Dialog_Notitle = new Layer
	width: Screen.width/2 +100
	height: 112
	x: Align.center
	y: Align.center -100
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
	animationOptions: 
		delay: 2
		curve: "spring(280,13,10)"



#Change Content Text Here	
Dialog_notitle_Content = new TextLayer
	text: "Discard draft?"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 16
	x: Align.left 22
	y: Align.top 22
	parent: Dialog_Notitle

#Action Buttons	
Dialog_ActionButton1 = new TextLayer
	text: "DISCARD"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	x: Align.right -14
	y: Align.bottom -18
	textAlign: "right"
	color: primarycolor
	parent: Dialog_Notitle
	
Dialog_ActionButton2 = new TextLayer
	text: "CANCEL"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	x: Align.right -95
	y: Align.bottom -18
	textAlign: "right"
	color: primarycolor
	parent: Dialog_Notitle

# Hotspot layer - set opacity to 0.0 to hide
Dialog_Notitle_HotSpot = new Layer
	x: Align.center
	y: Align.bottom -48
	opacity: 0.5
	width: 200
	height: 48

# Show on hotspot click
Dialog_Notitle_HotSpot.onClick (event, layer) ->

	#Dialog states/animation
	Dialog_Notitle.states.show =
		opacity: 1.0
			
	Dialog_Notitle.states.hide =	
		opacity: 0.0
		options:
			time: 0.5
		
	DialogShow = new Animation Dialog_Notitle,
		Dialog_Notitle.states.show
		
	DialogHide = new Animation Dialog_Notitle,
		Dialog_Notitle.states.hide
	
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
	Dialog_Notitle.onClick (event, layer) ->
		DialogHide.start()
		scrimHide.start()




# </fold>

"""
