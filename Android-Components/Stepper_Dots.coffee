plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Stepper_Dots

#Change Selection Color Here
primarycolor = "#007cb0"


#Main Container
Footer = new Layer
	width: Screen.width
	height: 48
	y: Align.bottom -47
	backgroundColor: "#fff"
	shadowY: -2
	shadowBlur: 4

#Next
dropdown_arrow = new Layer
	html: '<svg id="dropdownarrow" data-name="dropdownarrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 4.32"><title>dropdownarrow</title><polygon points="0.82 0 3.5 2.67 6.18 0 7 0.82 3.5 4.32 0 0.82 0.82 0" style="fill:#6E6E6E;fill-rule:evenodd; opacity: 1.0"/></svg>'
	size: 12
	rotation: -90
	x: Align.right -12
	y: Align.center
	backgroundColor: ""
	parent: Footer

Next = new TextLayer
	text: "NEXT"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	y: Align.center
	x: Align.right -32
	color: "#6E6E6E"
	parent: Footer



#Back
dropdown_arrow = new Layer
	html: '<svg id="dropdownarrow_left" data-name="dropdownarrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 4.32"><title>dropdownarrow</title><polygon points="0.82 0 3.5 2.67 6.18 0 7 0.82 3.5 4.32 0 0.82 0.82 0" style="fill:#6E6E6E;fill-rule:evenodd; opacity: 1.0"/></svg>'
	size: 12
	rotation: 90
	x: Align.left 12
	y: Align.center
	backgroundColor: ""
	parent: Footer

Back = new TextLayer
	text: "BACK"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 14
	y: Align.center
	x: Align.left 32
	color: "#6E6E6E"
	parent: Footer





#Pagination Dots
	
pagination = []	
for i in [0...6]
	paginationdot = new Layer
		size: 8
		x: Align.center i*16 -40
		y: Align.center
		borderRadius: 100
		backgroundColor: "#B2B2B2"
		name: [i]
		parent: Footer
	
	pagination.push(paginationdot)


#Selected Dot	
pagination[2].backgroundColor= primarycolor
	
	
# </fold>


"""




