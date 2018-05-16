plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Checkbox

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
	

#Checkbox
Checkbox = new Layer
	html: '<svg id="Check_inactive" data-name="Check_inactive" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18"><title>Check_inactive</title><path d="M19,3H5A2,2,0,0,0,3,5V19a2,2,0,0,0,2,2H19a2,2,0,0,0,2-2V5A2,2,0,0,0,19,3Zm0,16H5V5H19Z" transform="translate(-3 -3)" style="fill:#515151"/></svg>'
	size: 18
	y: 16
	x: Align.right -16
	backgroundColor: ""
	parent: LineItem


Checkbox.states.active=
	html: '<svg id="Check_active" data-name="Check_active" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18"><title>Check_active</title><path d="M19,3H5A2,2,0,0,0,3,5V19a2,2,0,0,0,2,2H19a2,2,0,0,0,2-2V5A2,2,0,0,0,19,3ZM10,17,5,12.19l1.4-1.34L10,14.31,17.6,7,19,8.35Z" transform="translate(-3 -3)" style="fill:#007cb0"/></svg>'


Checkbox.onTap ->
	Checkbox.stateCycle("active", "default")
	


	
# </fold>


"""




