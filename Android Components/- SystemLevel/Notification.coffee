plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Notification

Notification = new Layer
	width: Screen.width
	height: 80
	y: -180
	shadowY: 2
	shadowBlur: 2
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 0
	shadowBlur: 2
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.12)"
	backgroundColor: "#fff"



#Initial animation
Notification.animate
	y: 0
	options:
		delay: 1
		curve: Bezier.easeInOut
		time: 1.5

		

#Change App Icon here
App_Icon = new Layer
	html: '<svg id="message" data-name="message" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 15 12.85"><title>message</title><path d="M542.71,530.15H529l2.15,3.93v7.71a1.22,1.22,0,0,0,1.28,1.21h10.28a1.23,1.23,0,0,0,1.29-1.21V531.51A1.35,1.35,0,0,0,542.71,530.15Zm-9,9.69h5v-1h-5Zm0-3h7v-1h-7Zm0-3h8v-1h-8Z" transform="translate(-529 -530.15)" style="fill:#147bc1;fill-rule:evenodd"/></svg>'
	height: 11
	width: 13
	x: Align.left 14
	y: 15
	backgroundColor: ""
	parent: Notification

#Change App Title here	
App_Title = new TextLayer
	text: "Messenger"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 11
	letterSpacing: -0.1
	x: Align.left 35
	y: 13
	color: "#007BC3"
	parent: Notification


dotdivider = new TextLayer
	text: "•"
	x: Align.left 50
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 8
	letterSpacing: -0.1
	x: Align.right 6
	y: 1
	color: "rgba(0,0,0,0.54)"
	parent: App_Title
	


time = new TextLayer
	text: "now"
	x: Align.left 50
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 11
	letterSpacing: -0.1
	x: Align.left 5
	y: -1
	color: "rgba(0,0,0,0.54)"
	
	parent: dotdivider

dropdown_arrow = new Layer
	html: '<svg id="dropdownarrow" data-name="dropdownarrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 4.32"><title>dropdownarrow</title><polygon points="0.82 0 3.5 2.67 6.18 0 7 0.82 3.5 4.32 0 0.82 0.82 0" style="fill:#147bc1;fill-rule:evenodd; opacity: 1.0"/></svg>'
	height: 4
	width: 6
	x: Align.right 10
	y: 5
	opacity: 1
	backgroundColor: ""
	parent: time
	
dropdownhotspot = new Layer
	width: 50
	height: 32
	y: Align.center
	x: -10
	backgroundColor: ""
	parent: time

dropdown_arrow.states.up =
	rotation: 180
	animationOptions:
		curve: "spring"
		time: 0.1

dropdown_arrow.states.down =
	rotation: 0
	animationOptions:
		curve: "spring"
		time: 0.1

delete dropdown_arrow.states.default

#Change title text here	
Notification_Text = new TextLayer
	text: "Charlie Pace"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.left 14
	y: 34
	color: "#1C1C1C"
	parent: Notification

#Change Subtext here	
Notification_Subtext = new TextLayer
	text: "Do you want to go see a movie tonight?"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.left 14
	y: 52
	color: "#rgba(0,0,0,0.54)"
	parent: Notification

#Change Avatar here
Avatar = new Layer
	width: 35
	height: 35
	borderRadius: 100
	x: Align.right -14
	y: Align.bottom -10
	parent: Notification


#Action Buttons	
NotificationButtonArea = new Layer
	height: 50
	width: Notification.width
	y: Align.bottom
	backgroundColor: "#EEEEEE"
	opacity: 0.0
	parent: Notification
	
Dialog_ActionButton1 = new TextLayer
	text: "REPLY"
	fontFamily: "Roboto"
	fontWeight: 700
	fontSize: 12
	x: Align.left 13
	y: Align.bottom -18
	textAlign: "left"
	color: "rgba(54,151,241,1)"
	parent: NotificationButtonArea


NotificationButtonArea.states.slide =
	y: Align.bottom 49
	opacity: 1.0
	animationOptions:
		curve: "spring"
		time: 0.1
	
NotificationButtonArea.states.slideup =
	y: Align.bottom
	opacity: 0.0
	animationOptions:
		curve: "spring"
		time: 0.1
	
	
	
Dialog_ActionButton2 = new TextLayer
	text: "ARCHIVE"
	fontFamily: "Roboto"
	fontWeight: 700
	fontSize: 12
	x: Align.left 70
	y: Align.bottom -18
	textAlign: "left"
	color: "rgba(54,151,241,1)"
	parent: NotificationButtonArea



NotificationButtonArea.bringToFront()
Notification.bringToFront()
Notification.placeBefore(NotificationButtonArea)

NotificationButtonArea.states.switchInstant "slide"
dropdown_arrow.states.switchInstant "up"

#swipe down on Notification to show actions
Notification.onSwipeDown ->
	NotificationButtonArea.sendToBack()
	NotificationButtonArea.animate("slide")
	Notification.height= 80
	dropdown_arrow.rotation= 180
	dropdown_arrow.stateSwitch("up1")


#tap on the chevron at the top to show/hide actions
dropdownhotspot.onTap ->
	NotificationButtonArea.stateCycle("slide", "slideup")
	Notification.height= 80
	dropdown_arrow.stateCycle("up", "down")

#hide notification after tapping action buttons
NotificationButtonArea.onTap ->
	Notification.animate
		y: -180
		options:
			curve: Bezier.easeInOut
			time: .5






# </fold>


"""




