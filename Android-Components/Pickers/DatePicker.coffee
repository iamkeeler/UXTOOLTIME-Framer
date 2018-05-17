plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Date Picker

#Change Color Here
primarycolor = "#007cb0"



#Dark BG Overlay
scrimbg = new Layer
	backgroundColor: "rgba(50,50,50,0.70)"
	width: Screen.width
	height: Screen.height-48
	y: Align.top
	z:1
	opacity: 1.0


#Main Container
DatePicker = new Layer
	width: 252
	height: 430
	x: Align.center
	y: Align.center 10
	backgroundColor: "#FAFAFA"
	borderRadius: 2
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.3)"
	shadowX: 0
	shadowY: 19
	shadowBlur: 12
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.22)"
	shadowX: 0
	shadowY: 15
	z:1
	shadowBlur: 38


#Date Banner
Top = new Layer
	height: 82
	width: DatePicker.width
	y: Align.top
	backgroundColor: primarycolor
	borderRadius: "2px 2px 0 0"

	parent: DatePicker

#Change Date Here
Date = new TextLayer
	text: "Wed, May 9"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 30
	x: Align.left 20
	y: Align.bottom -16
	color: "#fff"
	parent: Top

#Change Year Here
Year = new TextLayer
	text: "2018"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.left 20
	y: Align.top 13
	letterSpacing: 0.8
	color: "#fff"
	parent: Top

#Change Month Here
Month = new TextLayer
	text: "May 2018"
	fontFamily: "Roboto"
	fontWeight: 600
	fontSize: 12
	textAlign: "center"
	x: Align.center
	y: Align.top 104
	letterSpacing: 0.8
	color: "#000"
	opacity: 0.87
	parent: Top

#Left Chevron
left = new Layer
	html: '<svg id="left" data-name="dropdownarrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 4.32"><title>dropdownarrow</title><polygon points="0.82 0 3.5 2.67 6.18 0 7 0.82 3.5 4.32 0 0.82 0.82 0" style="fill:#000;fill-rule:evenodd; opacity: 1.0"/></svg>'
	size: 11
	rotation: 90
	x: Align.left 24
	y: Align.top 105
	backgroundColor: ""
	parent: DatePicker


#Right Chevron
right = new Layer
	html: '<svg id="right" data-name="dropdownarrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 4.32"><title>dropdownarrow</title><polygon points="0.82 0 3.5 2.67 6.18 0 7 0.82 3.5 4.32 0 0.82 0.82 0" style="fill:#000;fill-rule:evenodd; opacity: 1.0"/></svg>'
	size: 11
	rotation: -90
	x: Align.right -24
	y: Align.top 105
	backgroundColor: ""
	parent: DatePicker

#Action Buttons
OK = new TextLayer
	text: "OK"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.right -30
	y: Align.bottom -18
	color: primarycolor
	parent: DatePicker
	
CANCEL = new TextLayer
	text: "CANCEL"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.right -77
	y: Align.bottom -18
	color: primarycolor
	parent: DatePicker


#Days of Week
weekday = ["S", "M", "T", "W", "T", "F", "S"]

for i in [0...7]
	Weekday = new TextLayer
		text: weekday[i]
		fontFamily: "Roboto"
		fontWeight: 500
		fontSize: 10
		textAlign: "center"
		x: Align.left i*31+ 30
		y: Align.top 145
		letterSpacing: 0.8
		color: "#000"
		opacity: 0.54
		parent: DatePicker





#play with these to change grid
row = 5
column = 7
heightH = 40
widthW = 31
padding = 0







#cell array
cells = []
numbers = []
#container
cont = new Layer
	backgroundColor: ""
	x: Align.center
	y: Align.center
	width: (widthW + padding) * column - padding
	height: (padding + heightH) * row + padding
	z: 1
	parent: DatePicker
	


#creating rows
for i in [0...row]
	
	#row 
	layer = new Layer
		width: (widthW + padding) * column
		height: heightH
		y: (padding + heightH-4) * i + padding + 62
		x: 0
	
		parent: cont
		backgroundColor: ""
		
	numbers.push(layer)
		
		
	# creating a loop for the cells
	for j in [0...column]
		# cell
		cell = new Layer
			width: widthW
			borderRadius: 100
			backgroundColor: ""
			parent: layer
			x: j * (padding + widthW)
			height: heightH-9
			html: -1+j + (i * column)
			color: "#555"
			name: i+j
		cell.style =
			textAlign: "center"
			fontSize: "10px"
			lineHeight:  3.0
			fontFamily: "Roboto"
			fontWeight: 500
			
		#pushing cell in cells array 
		cells.push(cell)
		
		cell.onTap ->
			for cell in cells
				cell.backgroundColor=""
				cell.color="#555"
			
			this.backgroundColor=primarycolor
			this.color="#fff"
			if cells[2].name is this
				Date.text = "Tue, May 1"

#Removing some days
cells[0].visible=false
cells[1].visible=false
cells[33].visible=false
cells[34].visible=false


#Hotspot to display DatePicker, Once Hidden
DisplayHotspot= new Layer
	width: 200
	height: 48
	x: Align.center	



#states to hide DatePicker
scrimbg.states.hide=
	opacity: 0.0
	options:
		time: 0.2

DatePicker.states.hide=
	opacity: 0.0
	options:
		time: 0.2

#states to show DatePicker
scrimbg.states.show=
	opacity: 1.0
	options:
		time: 0.2

DatePicker.states.show=
	opacity: 1.0
	options:
		time: 0.2

#Tap Action Buttons to Hide DatePicker
OK.onTap ->
	scrimbg.animate("hide")
	DatePicker.animate("hide")
	
CANCEL.onTap ->
	scrimbg.animate("hide")
	DatePicker.animate("hide")

#Tap Hotspot to Show DatePicker
DisplayHotspot.onTap ->
	scrimbg.animate("show")
	DatePicker.animate("show")


# </fold>


"""




