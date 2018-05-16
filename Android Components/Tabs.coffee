plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Tabs-3


#Change selection Color here
primarycolor = "#fff"

#Change Background Color here
backgroundcolor = "#333E47"


#Main Container
Tabs = new Layer
	width: Screen.width
	height: 48
	x: Align.center
	y: Align.top 79
	z: 1
	backgroundColor: backgroundcolor


Tabs.states.Large =
	y: Align.top -200




SegmentedContainer = new Layer
	width: Screen.width
	#width: Screen.width
	height: 48
	x: Align.center
	y: Align.center
	backgroundColor: "rgba(180,180,180,0)"
	#padding:
		#left: 20
	
	parent: Tabs
	
	


#Active Line
Active = new Layer
	width: Screen.width/3
	height: 4
	x: 0
	y: Align.bottom
	parent: SegmentedContainer
	backgroundColor: primarycolor
	#borderRadius: 3

Active.states.Tab1 =
	borderRadius: 3
	x: Align.left
	
Active.states.Tab2 =
	borderRadius: 0
	x: Align.center
		
Active.states.Tab3 =
	borderRadius: 3 
	x: Align.right




Tab1 = new Layer
	width: Screen.width/3
	height: 36
	x: Align.left
	y: Align.center
	parent: SegmentedContainer
	borderColor: "rgba(86,176,216,0.5)"
	#borderWidth: 2
	#borderRadius: 3
	backgroundColor: "rgba(150,175,200,0)"
	

#Change Tab 1 Text here
Tab1Text = new TextLayer
	text: "TAB 1"
	color: "#fff"
	x: Align.center
	y: Align.top
	fontSize: 14
	fontWeight: 500
	fontFamily: "Roboto"
	padding:
		top: 4
	parent: Tab1
	

Tab1Text.states.active =
	opacity: 1.00
	color: primarycolor
	
Tab1Text.states.inactive =
	opacity: .60
	color: primarycolor





Tab2 = new Layer
	width: Screen.width/3
	height: 36
	x: Align.center
	y: Align.center
	parent: Tabs
	borderColor: "rgba(158,226,255,0.5)"
	#opacity: 0.5
	#borderWidth: 2
	#borderRadius: 0
	backgroundColor: "rgba(150,175,200,0)"
	
#Change Tab 2 Text here	
Tab2Text = new TextLayer
	text: "TAB 2"
	color: "#fff"
	x: Align.center
	y: Align.top
	fontSize: 14
	fontWeight: 500
	fontFamily: "Roboto"
	opacity: 0.5
	padding:
		top: 4
	parent: Tab2
	

Tab2Text.states.active =
	opacity: 1.00
	color: primarycolor
	#fontWeight: 500

Tab2Text.states.inactive =
	opacity: 0.60
	color: primarycolor


	
	
	

Tab3 = new Layer
	width: Screen.width/3
	height: 36
	x: Align.right
	y: Align.center
	parent: SegmentedContainer
	borderColor: "rgba(158,226,255,0.5)"
	#opacity: 0.5
	#borderWidth: 2
	#borderRadius: 3
	backgroundColor: "rgba(150,175,200,0)"
	
#Change Tab 3 Text here	
Tab3Text = new TextLayer
	text: "TAB 3"
	color: "#fff"
	x: Align.center
	y: Align.top
	fontSize: 14
	fontWeight: 500
	fontFamily: "Roboto"
	opacity: 0.5
	padding:
		top: 4
	parent: Tab3
	

Tab3Text.states.active =
	color: primarycolor
	opacity: 1.00

Tab3Text.states.inactive =
	opacity: 0.60
	color: primarycolor


#Click Events	

Tab1.onClick (event, layer) ->
	Active.stateCycle("Tab1")
	Tab1Text.stateCycle("active")
	Tab2Text.stateCycle("inactive")
	Tab3Text.stateCycle("inactive")
	#Page.snapToPage(pageOne)

Tab2.onClick (event, layer) ->
	Active.stateCycle("Tab2")
	Tab1Text.stateCycle("inactive")
	Tab2Text.stateCycle("active")
	Tab3Text.stateCycle("inactive")	
	#Page.snapToNextPage()
	
		
Tab3.onClick (event, layer) ->
	Active.stateCycle("Tab3")
	Tab1Text.stateCycle("inactive")
	Tab2Text.stateCycle("inactive")
	Tab3Text.stateCycle("active")		
	#Page.snapToNextPage()
	

	

# </fold>


"""




