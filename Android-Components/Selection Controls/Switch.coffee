plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Switch

#Line Item Container
LineItem = new Layer
	height: 48
	width: Screen.width
	backgroundColor: "#fff"
	y: 0
	#y: Align.top 80
	x: Align.center
	z: 1
	
#Change Label here
Title = new TextLayer
	text: "Label"
	fontFamily: "Roboto"
	fontSize: 16
	fontWeight: 400
	color: "#2F2F2F"
	x: 16
	y: Align.center
	parent: LineItem
		
	


Divider = new Layer
	width: Screen.width
	height: 1
	y: Align.bottom
	x: Align.right
	parent: LineItem
	backgroundColor: "rgba(0,0,0,0.12)"
	

#Switch
track = new Layer
	width: 34
	height: 14
	borderRadius: 100
	y: 16
	x: Align.right -16
	backgroundColor: "rgba(34,31,31,0.26)"
	parent: LineItem


knob = new Layer
	width: 20
	height: 20
	borderRadius: 100
	backgroundColor: "#F1F1F1"
	x: Align.left
	y: Align.center
	
	parent: track
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.12)"
	shadowX: 0
	shadowY: 0
	shadowBlur: 1
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowX: 0
	shadowY: 1
	shadowBlur: 1

knob.states.active =
	y: Align.center
	x: Align.right
	backgroundColor: "#007cb0"


track.states.active =
	backgroundColor: "rgba(0,124,176,0.50)"
	



knob.states.animationOptions=
	curve: Spring


track.states.animationOptions=
	curve: Spring


knob.states.switchInstant "default"


knob.onTap (event, layer) ->
	knob.stateCycle "active", "default"
	track.stateCycle "active", "default"
	
	


	
# </fold>


"""




