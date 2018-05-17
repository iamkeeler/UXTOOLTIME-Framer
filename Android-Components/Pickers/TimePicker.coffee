plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Time Picker

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
TimePicker = new Layer
	width: 252
	height: 342
	x: Align.center
	y: Align.center -10
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


#Time Banner
Top = new Layer
	height: 84
	width: TimePicker.width
	y: Align.top
	backgroundColor: primarycolor
	borderRadius: "2px 2px 0 0"
	parent: TimePicker

#Hour Label
Hour = new TextLayer
	text: "5"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 52
	x: Align.center -22
	y: Align.bottom -8
	color: "#fff"
	parent: Top

#Minute Label
Minutes = new TextLayer
	text: ":30"
	fontFamily: "Roboto"
	fontWeight: 400
	fontSize: 52
	x: Align.center 31
	y: Align.bottom -8
	color: "#fff"
	opacity: 0.70
	parent: Top

#AM Label
AM = new TextLayer
	text: "AM"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -30
	y: Align.top 22
	letterSpacing: 0.8
	color: "#fff"
	opacity: 0.70
	parent: Top

#PM Label
PM = new TextLayer
	text: "PM"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -30
	y: Align.top 48
	letterSpacing: 0.8
	color: "#fff"
	parent: Top


#Circle Background
Circle = new Layer
	size: 196
	borderRadius: 296
	x: Align.center
	y: Align.center 24
	backgroundColor: "#EEEEEE"
	parent: TimePicker

#center point of circle
center = new Layer
	size: 6
	borderRadius: 6
	backgroundColor: primarycolor
	x: Align.center
	y: Align.center
	parent: Circle
	
#Connector Line
connector = new Layer
	width: 100
	height: 2
	backgroundColor: primarycolor
	y: Align.center
	parent: center

#Selection Indicator
Selection = new Layer
	size: 35
	borderRadius: 40
	x: Align.right
	y: Align.center
	backgroundColor: primarycolor
	parent: connector





#Numbers around circle
twelve = new TextLayer
	text: "12"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.center
	y: Align.top 10
	color: "#000000"
	opacity: 0.87
	parent: Circle

one = new TextLayer
	text: "1"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -54
	y: Align.top 21
	color: "#000000"
	opacity: 0.87
	parent: Circle

two = new TextLayer
	text: "2"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -25
	y: Align.top 50
	color: "#000000"
	opacity: 0.87
	parent: Circle

three = new TextLayer
	text: "3"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -15
	y: Align.center 
	color: "#000000"
	opacity: 0.87
	parent: Circle

four = new TextLayer
	text: "4"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -25
	y: Align.bottom -50
	color: "#000000"
	opacity: 0.87
	parent: Circle

five = new TextLayer
	text: "5"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.right -55
	y: Align.bottom -21
	color: "#000000"
	opacity: 0.87
	parent: Circle

six = new TextLayer
	text: "6"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.center
	y: Align.bottom -11
	color: "#000000"
	opacity: 0.87
	parent: Circle

seven = new TextLayer
	text: "7"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.left 55
	y: Align.bottom -21
	color: "#000000"
	opacity: 0.87
	parent: Circle

eight = new TextLayer
	text: "8"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.left 25
	y: Align.bottom -50
	color: "#000000"
	opacity: 0.87
	parent: Circle

nine = new TextLayer
	text: "9"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.left 15
	y: Align.center 
	color: "#000000"
	opacity: 0.87
	parent: Circle


ten = new TextLayer
	text: "10"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.left 22
	y: Align.top 50
	color: "#000000"
	opacity: 0.87
	parent: Circle


eleven = new TextLayer
	text: "11"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 14
	x: Align.left 52
	y: Align.top 21
	color: "#000000"
	opacity: 0.87
	parent: Circle


#start with this selected
three.color="#fff"


#Action Buttons
OK = new TextLayer
	text: "OK"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.right -30
	y: Align.bottom -16
	color: primarycolor
	parent: TimePicker
	
CANCEL = new TextLayer
	text: "CANCEL"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.right -77
	y: Align.bottom -16
	color: primarycolor
	parent: TimePicker


#Tap numbers for Selection 
one.onTap ->
	connector.rotation=-59
	connector.y=-38
	connector.x=-23
	one.color="#fff"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"


	if Hour.opacity is 1.0
		Hour.text="1"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":05"
		Minutes.opacity = 1.0



two.onTap ->
	connector.rotation=-30
	connector.y=-22
	connector.x=-6
	one.color="#000000"
	two.color="#fff"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"



	if Hour.opacity is 1.0
		Hour.text="2"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":10"
		Minutes.opacity = 1.0



three.onTap ->
	connector.rotation=0
	connector.y=2
	connector.x=0
	one.color="#000000"
	two.color="#000000"
	three.color="#fff"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"


	if Hour.opacity is 1.0
		Hour.text="3"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":15"
		Minutes.opacity = 1.0




four.onTap ->
	connector.rotation=29
	connector.y=25
	connector.x=-6
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#fff"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"



	if Hour.opacity is 1.0
		Hour.text="4"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":20"
		Minutes.opacity = 1.0




five.onTap ->
	connector.rotation=59
	connector.y=42
	connector.x=-23
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#fff"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"


	if Hour.opacity is 1.0
		Hour.text="5"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":25"
		Minutes.opacity = 1.0



six.onTap ->
	connector.rotation=90
	connector.y=49
	connector.x=-47
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#fff"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"



	if Hour.opacity is 1.0
		Hour.text="6"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":30"
		Minutes.opacity = 1.0



seven.onTap ->
	connector.rotation=121
	connector.y=42
	connector.x=-71
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#fff"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"



	if Hour.opacity is 1.0
		Hour.text="7"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":35"
		Minutes.opacity = 1.0



eight.onTap ->
	connector.rotation=151
	connector.y=25
	connector.x=-88
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#fff"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"



	if Hour.opacity is 1.0
		Hour.text="8"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":40"
		Minutes.opacity = 1.0





nine.onTap ->
	connector.rotation=-180
	connector.y=2
	connector.x=-94
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#fff"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#000000"


	if Hour.opacity is 1.0
		Hour.text="9"
		Hour.x=Align.center -22

	else if Minutes.opacity is 1.0
		Minutes.text= ":45"
		Minutes.opacity = 1.0




ten.onTap ->
	connector.rotation=-149
	connector.y=-22
	connector.x=-87
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#fff"
	eleven.color="#000000"
	twelve.color="#000000"



	if Hour.opacity is 1.0
		Hour.text="10"
		Hour.x=Align.center -36

	else if Minutes.opacity is 1.0
		Minutes.text= ":50"
		Minutes.opacity = 1.0



eleven.onTap ->
	connector.rotation=-119
	connector.y=-39
	connector.x=-70
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#fff"
	twelve.color="#000000"


	if Hour.opacity is 1.0
		Hour.text="11"
		Hour.x=Align.center -36

	else if Minutes.opacity is 1.0
		Minutes.text= ":55"
		Minutes.opacity = 1.0


twelve.onTap ->
	connector.rotation=-90
	connector.y=-45
	connector.x=-47
	one.color="#000000"
	two.color="#000000"
	three.color="#000000"
	four.color="#000000"
	five.color="#000000"
	six.color="#000000"
	seven.color="#000000"
	eight.color="#000000"
	nine.color="#000000"
	ten.color="#000000"
	eleven.color="#000000"
	twelve.color="#fff"
	
	if Hour.opacity is 1.0
		Hour.text="12"
		Hour.x=Align.center -36

	else if Hour.opacity is 0.70
		Minutes.text= ":00"
		Minutes.opacity = 1.0

#AM/PM Tap Selection	
AM.onTap ->
	AM.opacity=1.0
	PM.opacity=0.70

PM.onTap ->
	AM.opacity=0.70
	PM.opacity=1.0

#Tap Hour to Select
Hour.onTap ->
	Minutes.opacity=0.70
	Hour.opacity=1.0
	twelve.text="12"
	eleven.text="11"
	ten.text="10"
	nine.text="9"
	eight.text="8"
	seven.text="7"
	six.text="6"
	six.x= Align.center
	five.text="5"
	four.text="4"
	three.text="3"
	two.text="2"
	one.text="1"

#Tap Minutes to Select
Minutes.onTap ->
	Minutes.opacity=1.0
	Hour.opacity=0.70
	twelve.text="00"
	eleven.text="55"
	ten.text="50"
	nine.text="45"
	eight.text="40"
	seven.text="35"
	six.text="30"
	six.x= Align.center
	five.text="25"
	four.text="20"
	three.text="15"
	two.text="10"
	one.text="05"
	

#Hotspot to display TimePicker, Once Hidden
DisplayHotspot= new Layer
	width: 200
	height: 48
	x: Align.center	



#states to hide TimePicker
scrimbg.states.hide=
	opacity: 0.0
	options:
		time: 0.2

TimePicker.states.hide=
	opacity: 0.0
	options:
		time: 0.2

#states to show TimePicker
scrimbg.states.show=
	opacity: 1.0
	options:
		time: 0.2

TimePicker.states.show=
	opacity: 1.0
	options:
		time: 0.2

#Tap Action Buttons to Hide TimePicker
OK.onTap ->
	scrimbg.animate("hide")
	TimePicker.animate("hide")
	
CANCEL.onTap ->
	scrimbg.animate("hide")
	TimePicker.animate("hide")

#Tap Hotspot to Show TimePicker
DisplayHotspot.onTap ->
	scrimbg.animate("show")
	TimePicker.animate("show")
	

# </fold>


"""




