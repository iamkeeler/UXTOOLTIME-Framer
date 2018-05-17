plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#circleDot Notification Variables
logoCircleDotSVG = '<svg id="WiFi2" data-name="WiFi" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18.05 14"><title>WiFi</title><path d="M-128.25,333.53a15,15,0,0,1,9-3,15,15,0,0,1,9,3l-9,11Z" transform="translate(128.25 -330.51)" style="fill:#fff;fill-rule:evenodd"/></svg>'
notificationText = "Sample Notification Text. It's Fun!"
# </fold>
# <fold>
#circleDot Notification Starts Here. These are the main layers and animations
circleDot = new Layer
	height: 24
	width: 24
	borderRadius: 100
	backgroundColor: "#ff4081"
	x: Align.center
	y: -24
	shadowY: 1
	shadowBlur: 2
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.1)"
	clip: true
	#Setting the Z depth.
	z: 1
	
logoCircleDot = new Layer	
	parent: circleDot
	#replace this with your svg code
	html: logoCircleDotSVG
	width: circleDot.width - 12
	height: circleDot.height - 12
	x: Align.center
	y: Align.center
	backgroundColor: "rgba(1,125,176,0.0)"
	opacity: 1.00
	
textCircleDot =	new TextLayer
	parent: circleDot
	x: 34
	y: Align.center
	text: notificationText
	fontSize: 12
	color: "rgba(255,255,255,1)"

#States of the animation. Change the animation timings and curves here
circleDot.states = 
	startPoint:
		opacity: 0
		y: -24
		animationOptions: 
			curve: "spring"
			time: .2
	midPoint:
		opacity: 1
		y: 24
		x: Framer.Screen.width / 2 - 12
		width: 24
		animationOptions: 
			curve: "spring"
			time: .2
	endPoint:
		width: Framer.Screen.width - 40 
		opacity: 1
		y: 24
		x: 20
		animationOptions: 
			curve: "spring"
			time: .2
			delay: .2

#Example trigger > DELETE/MODIFY this
Utils.delay 2, ->
	circleTrigger()

#This is the function that contains the animation chaining. Modify the delays if you want
circleTrigger = ->	
	circleDot.animate("midPoint")
	Utils.delay 0.4, ->
		circleDot.animate("endPoint")
		#Modify this to change the duration that the notification is on screen
		Utils.delay 2.0, ->
			circleDot.animate("midPoint")
			Utils.delay .6, ->
				circleDot.animate("startPoint")
# </fold>

"""




