plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#QuickSettings

wifi_active = '<svg id="wifi_active" data-name="wifi_active" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 41.12 32.68"><title>wifi_active</title><path d="M306.72,412.57,327.26,387a33.47,33.47,0,0,0-41.12,0l20.54,25.6,0,0Z" transform="translate(-286.14 -379.91)" style="fill:#b7b7b7"/><path d="M291.74,394l14.94,18.62,0,0,0,0L321.66,394a24.08,24.08,0,0,0-29.92,0Z" transform="translate(-286.14 -379.91)" style="fill:#010101"/></svg>'

bluetooth_inactive = '<svg id="bluetooth_inactive" data-name="bluetooth_inactive" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25.2 31.51"><title>bluetooth_inactive</title><path d="M307.89,385.93l3,3-2.52,2.52,2.22,2.22,4.76-4.75-9-9h-1.57v7.92l3.15,3.15Zm-12-2.88-2.22,2.22,10.38,10.38-8.81,8.81,2.23,2.22,7.23-7.23V411.4h1.57l6.76-6.75,3.62,3.6,2.22-2.22Zm12,22.32v-5.92l3,3Z" transform="translate(-293.71 -379.9)" style="fill:#9a9a9a"/></svg>'

donotdisturb_inactive = '<svg id="donotdisturb_inactive" data-name="donotdisturb_inactive" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 33.64 34.1"><title>donotdisturb_inactive</title><path d="M320,408.46l-1.37-1.38-9.57-9.69-3.45-3.5L295.87,384,294.8,383l-3.32-3.36-1.77,1.76,4.5,4.55a16.2,16.2,0,0,0,22.51,22.8l4.78,4.84,1.78-1.76Zm-19.35-11.07a1.63,1.63,0,0,1-1.64-1.63v-.24a1.63,1.63,0,0,1,1.64-1.63h1.44l3.46,3.5Z" transform="translate(-289.71 -379.45)" style="fill:#9a9a9a"/><path d="M323.35,395.64a16.12,16.12,0,0,1-2.87,9.21l-7.37-7.46h.58a1.63,1.63,0,0,0,1.63-1.63v-.24a1.63,1.63,0,0,0-1.63-1.63h-4l-11.54-11.68a16.2,16.2,0,0,1,25.24,13.43Z" transform="translate(-289.71 -379.45)" style="fill:#9a9a9a"/></svg>'

flashlight_inactive = '<svg id="flashlight_inactive" data-name="flashlight_inactive" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25.66 31.76"><title>flashlight_inactive</title><polygon points="25.66 28.38 23.88 30.13 18.12 24.3 18.12 31.76 9.82 31.76 9.82 15.89 0 5.95 1.78 4.2 25.66 28.38" style="fill:#9a9a9a"/><path d="M315.62,385.12a7.63,7.63,0,0,1-3.51,6.43v5.37l-11.66-11.8Z" transform="translate(-293.99 -379.91)" style="fill:#9a9a9a"/><rect x="6.31" width="15.32" height="2.99" style="fill:#9a9a9a"/></svg>'



rotation_active = '<svg id="rotation_active" data-name="rotation_active" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 38.33 38.65"><title>rotation_active</title><path d="M386.75,394.37a19.68,19.68,0,0,0-5.62-11.75,19.44,19.44,0,0,0-4.31-3.25l-.2-.12-.75-.38a18.18,18.18,0,0,0-1.9-.79l-.69-.24-.76-.23-.82-.21-.7-.15c-.58-.12-1.21-.22-1.86-.29a16.72,16.72,0,0,0-2.27-.1l5.74,5.74,1.68-1.68.5.21a16.88,16.88,0,0,1,4.57,3.26,17.16,17.16,0,0,1,4.9,10.24l.5-.05h0l2-.21Z" transform="translate(-348.42 -376.85)" style="fill:#1a1a1a"/><path d="M348.43,398a19.65,19.65,0,0,0,5.62,11.76,19.22,19.22,0,0,0,4.31,3.25l.2.11c.25.14.5.26.75.38a16.53,16.53,0,0,0,1.89.8l.7.24.76.22c.26.08.54.15.82.21l.69.16c.59.12,1.21.22,1.86.29a21,21,0,0,0,2.28.1l-5.74-5.74-1.69,1.68-.49-.21a17,17,0,0,1-9.47-13.51l-.5.06v0l-2,.22Z" transform="translate(-348.42 -376.85)" style="fill:#1a1a1a"/><path d="M384.41,399.42l-20.08-20.07a2,2,0,0,0-2.89,0L350.74,390a2,2,0,0,0,0,2.9L370.81,413a2.06,2.06,0,0,0,2.91,0l10.69-10.69A2.05,2.05,0,0,0,384.41,399.42Zm-14,9.56-15.63-15.63,10-10L380.37,399Z" transform="translate(-348.42 -376.85)" style="fill:#1a1a1a"/></svg>'

batterysaver_inactive = '<svg id="batterysaver_inactive" data-name="batterysaver_inactive" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20.46 34.87"><title>batterysaver_inactive</title><path d="M521.93,456V453.3a.55.55,0,0,0-.55-.55h-9.95a.55.55,0,0,0-.55.55V456h-3.5a1.21,1.21,0,0,0-1.21,1.21v29.18a1.21,1.21,0,0,0,1.21,1.21h18a1.21,1.21,0,0,0,1.21-1.21V457.23a1.21,1.21,0,0,0-1.21-1.21Zm1,18.43h-4.5V479h-4v-4.51h-4.5v-4h4.5v-4.51h4v4.51h4.5Z" transform="translate(-506.17 -452.75)" style="fill:#9a9a9a"/></svg>'


settings = '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19.45 20"><title>ic_settings_black_24px</title><path d="M19.43,13a7.79,7.79,0,0,0,.07-1,7.79,7.79,0,0,0-.07-1l2.11-1.65a.5.5,0,0,0,.12-.64l-2-3.46a.5.5,0,0,0-.61-.22l-2.49,1a7.31,7.31,0,0,0-1.69-1l-.38-2.65A.49.49,0,0,0,14,2H10a.49.49,0,0,0-.49.42L9.13,5.07a7.68,7.68,0,0,0-1.69,1L5,5.05a.49.49,0,0,0-.61.22l-2,3.46a.49.49,0,0,0,.12.64L4.57,11a7.93,7.93,0,0,0-.07,1,7.93,7.93,0,0,0,.07,1L2.46,14.63a.5.5,0,0,0-.12.64l2,3.46A.5.5,0,0,0,5,19l2.49-1a7.31,7.31,0,0,0,1.69,1l.38,2.65A.49.49,0,0,0,10,22h4a.49.49,0,0,0,.49-.42l.38-2.65a7.68,7.68,0,0,0,1.69-1l2.49,1a.49.49,0,0,0,.61-.22l2-3.46a.5.5,0,0,0-.12-.64ZM12,15.5A3.5,3.5,0,1,1,15.5,12,3.5,3.5,0,0,1,12,15.5Z" transform="translate(-2.27 -2)"/></svg>'


quicksettings_dropdown_arrow ='<svg id="quicksettings_dropdownarrow" data-name="quicksettings_dropdownarrow" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 7 4.32"><title>quicksettings_dropdownarrow</title><polygon points="0.82 0 3.5 2.67 6.18 0 7 0.82 3.5 4.32 0 0.82 0.82 0" style="fill:rgba(59,59,59,1);fill-rule:evenodd; opacity: 1.0"/></svg>'

#StatusBar Icon Variables
quicksettings_status_BatteryIcon = '<svg id="quicksettings_status_Battery" data-name="quicksettings_status_Battery" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 9 14"><title>quicksettings_status_Battery</title><polygon points="6 0.88 6 0 3 0 3 0.88 0 0.88 0 14 9 14 9 0.88 6 0.88" style="fill:rgba(59,59,59,1);fill-rule:evenodd"/></svg>'



AirplaneMode = '<svg id="airplanemode" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 19 20"><title>ic_airplanemode_inactive_black_24px</title><path d="M13,9V3.5a1.5,1.5,0,0,0-3,0V7.18L17.83,15,21,16V14Z" transform="translate(-2 -2)"/><polygon points="1 3.27 5.99 8.26 0 12 0 14 8 11.5 8 17 6 18.5 6 20 9.5 19 13 20 13 18.5 11 17 11 13.27 16.73 19 18 17.73 2.27 2 1 3.27"/></svg>'

MobileData = '<svg id="MobileData" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 20 20"><title>ic_network_cell_black_24px</title><path d="M2,22H22V2Z" transform="translate(-2 -2)" style="fill-opacity:0.30000001192092896"/><path d="M17,7,2,22H17Z" transform="translate(-2 -2)"/></svg>'



Cast = '<svg id="Cast" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 22 18"><title>ic_cast_black_24px</title><path d="M21,3H3A2,2,0,0,0,1,5V8H3V5H21V19H14v2h7a2,2,0,0,0,2-2V5A2,2,0,0,0,21,3ZM1,18v3H4A3,3,0,0,0,1,18Zm0-4v2a5,5,0,0,1,5,5H8A7,7,0,0,0,1,14Zm0-4v2a9,9,0,0,1,9,9h2A11,11,0,0,0,1,10Z" transform="translate(-1 -3)"/></svg>'





QuickSettingsPanel = new Layer
	width: Screen.width
	height: 110
# 	y: Align.top
	y: -114
	x: Align.center
	backgroundColor: "rgba(244,244,244,1)"
	shadowBlur: 2
	shadowY: 1
	shadowSpread: 2
	


wifi = new Layer
	html: wifi_active
	height: 16
	width: 21
	x: Align.left 18
	y: Align.top 40
	backgroundColor: ""
	parent: QuickSettingsPanel
	


wifi.states.move=
	x: Align.left 58
	y: Align.top 102
	animationOptions:
		time: 0.5









bluetooth = new Layer
	html: bluetooth_inactive
	height: 16
	width: 14
	x: Align.left 82
	y: Align.top 39
	backgroundColor: ""
	parent: QuickSettingsPanel


bluetooth.states.move=
	x: Align.center
	y: Align.top 102
	animationOptions:
		time: 0.5







	

donotdisturb = new Layer
	html: donotdisturb_inactive
	height: 16
	width: 18
	x: Align.center -31
	y: Align.top 39
	backgroundColor: ""
	parent: QuickSettingsPanel


flashlight = new Layer
	html: flashlight_inactive
	height: 16
	width: 15
	x: Align.center 30
	y: Align.top 39
	backgroundColor: ""
	parent: QuickSettingsPanel


flashlight.states.move=
	x: Align.left 58
	y: Align.top 210
	animationOptions:
		time: 0.5








rotation = new Layer
	html: rotation_active
	height: 16
	width: 21
	x: Align.right -78
	y: Align.top 37
	backgroundColor: ""
	parent: QuickSettingsPanel


rotation.states.move=
	x: Align.center
	y: Align.top 210
	animationOptions:
		time: 0.5




batterysaver = new Layer
	html: batterysaver_inactive
	height: 14
	width: 11
	x: Align.right -22
	y: Align.top 38
	backgroundColor: ""
	parent: QuickSettingsPanel
	

Names = new Layer
	width: QuickSettingsPanel.width
	height: QuickSettingsPanel.height
	x: Align.center
	y: Align.top
	backgroundColor: ""
	opacity: 0.0
	parent: QuickSettingsPanel

AirplaneMode = new Layer
	html: AirplaneMode
	height: 14
	width: 17
	x: Align.center
	y: 320
	backgroundColor: ""
	parent: Names


MobileData = new Layer
	html: MobileData
	height: 14
	width: 17
	x: Align.left 58
	y: 320
	backgroundColor: ""
	parent: Names



Cast = new Layer
	html: Cast
	height: 14
	width: 19
	x: Align.right -57
	y: 320
	backgroundColor: ""
	parent: Names







batterysaver.states.move=
	x: Align.right -58
	y: Align.top 210
	animationOptions:
		time: 0.5





donotdisturb.states.move=
	x: Align.right -58
	y: Align.top 102
	animationOptions:
		time: 0.5





quicksettingsfooter = new Layer
	width: QuickSettingsPanel.width
	height: 24
	backgroundColor: "rgba(244,244,244,1)"
	y: Align.bottom -8
	parent: QuickSettingsPanel
	
Divider = new Layer
	height: 1
	width: quicksettingsfooter.width
	opacity: 0.0
	parent: quicksettingsfooter


Divider.states.show=
	opacity: 0.5


settings = new Layer
	html: settings
	height: 14
	width: 11
	x: Align.right -83
	y: Align.center
	backgroundColor: ""
	parent: quicksettingsfooter


settings.states.move=
		y: Align.center 8
		x: Align.right -65
		rotation: 180
		animationOptions:
			curve: "spring"


edit = new Layer
	html: '<svg id="edit" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 18"><title>ic_mode_edit_black_24px</title><path d="M3,17.25V21H6.75L17.81,9.94,14.06,6.19ZM20.71,7a1,1,0,0,0,0-1.41L18.37,3.29a1,1,0,0,0-1.41,0L15.13,5.12l3.75,3.75Z" transform="translate(-3 -3)"/></svg>'
	height: 11
	width: 11
	y: Align.center 10
	x: Align.right -108
	backgroundColor: ""
	opacity: 0.0
	parent: quicksettingsfooter

edit.states.show=
	opacity: 1.0


quicksettingsdropdownarrow = new Layer
	html: quicksettings_dropdown_arrow
	height: 14
	width: 9
	x: Align.right -23
	y: Align.center 4
	backgroundColor: ""
	parent: quicksettingsfooter


quicksettingsdropdownarrow.states.move=
		y: Align.center 4
		rotation: 180
		animationOptions:
			curve: "spring"



QuickSettingsDate = new TextLayer
	text: "Fri 8 Sep"
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	x: Align.left 16
	y: Align.center
	color: "rgba(59,59,59,1)"
	parent: quicksettingsfooter


QuickSettingsDate.states.move=
		y: Align.center 8
		animationOptions:
			curve: "spring"




quicksettingsfooter.states.move=
		y: 448
		height: 40
		animationOptions:
			curve: "spring"




#Status Bar......

StatusBar = new Layer
	height: 24
	width: Screen.width
	y: Align.top
	backgroundColor: ""
	parent: QuickSettingsPanel
#for light bg, uncomment 'invert' below
	#backgroundInvert: 100


Time = new TextLayer
	text: "12:30"
	fontSize: 14
	fontWeight: 500
	fontFamily: "Roboto"
	color: "rgba(59,59,59,1)"
	#for light bg, uncomment 'invert' below
	#invert: 80
	y: Align.center 1
	x: Align.right -8
	parent: StatusBar


Battery = new Layer
	html: quicksettings_status_BatteryIcon
	height: 14
	width: 9
	color: "#fff"
#for light bg, uncomment 'invert' below
	#invert: 80
	y: Align.center 1
	x: Align.right -51
	backgroundColor: null
	parent: StatusBar

BattPercentage = new TextLayer
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	text: "100%"
	color: "rgba(59,59,59,1)"
	x: Align.right -65
	y: Align.center 2
	textAlign: "left"
	parent: StatusBar


NetworkName = new TextLayer
	fontFamily: "Roboto"
	fontWeight: 500
	fontSize: 12
	text: "Verizon Wireless"
	color: "rgba(59,59,59,1)"
	x: Align.left 14
	y: Align.center 2
	textAlign: "left"
	parent: StatusBar


QuickSettingsPanel.states.small=
		y: Align.top
		animationOptions:
			curve: "spring"

QuickSettingsPanel.states.expand=
		height: 489
		animationOptions:
			curve: "spring"



quicksettingshotspot = new Layer
	width: Screen.width
	height: 22
	backgroundColor: ""
	
quicksettingshotspot.onTap ->
	QuickSettingsPanel.stateCycle("small", "default")
	





WifiName = new TextLayer
	text: "WiFi"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.left 56
	y: Align.top 144
	opacity: 1.0
	parent: Names

BluetoothName = new TextLayer
	text: "Bluetooth"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.center
	y: Align.top 144
	opacity: 1.0
	parent: Names


DisturbName = new TextLayer
	text: "Do not disturb"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.right -35
	y: Align.top 144
	opacity: 1.0
	parent: Names

TorchName = new TextLayer
	text: "Torch"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.left 54
	y: Align.top 253
	opacity: 1.0
	parent: Names


AutoRotateName = new TextLayer
	text: "Auto-rotate"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.center
	y: Align.top 253
	opacity: 1.0
	parent: Names


BatterySaverName = new TextLayer
	text: "Battery Saver"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.right -35
	y: Align.top 253
	opacity: 1.0
	parent: Names


MobileDataName = new TextLayer
	text: "Mobile data"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.left 40
	y: Align.top 363
	opacity: 1.0
	parent: Names


AirplaneModeName = new TextLayer
	text: "Airplane mode"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.center
	y: Align.top 363
	opacity: 1.0
	parent: Names


CastName = new TextLayer
	text: "Cast"
	fontFamily: "Roboto"
	fontSize: 10
	fontWeight: 500
	color: "#000"
	textAlign: "center"
	x: Align.right -55
	y: Align.top 363
	opacity: 1.0
	parent: Names





Names.states.appear=
	opacity: 1.0
	animationOptions:
		curve: "spring"
		delay: 0.8



# Create slider
slider = new SliderComponent
	point: Align.center
	knobSize: 18
	y: Align.top 50
	x: Align.left 26
	opacity: 0.0
	parent: QuickSettingsPanel
	
slider.states.show=
	opacity: 1.0
	z: 2
	animationOptions:
		curve: "spring"
		delay: 1

# slider.fill.height=2
slider.backgroundColor="#C0C0C0"
slider.height=2
slider.fill.backgroundColor="#4D84F1"
slider.knob.html = '<svg id="Brightness" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="3 3 17 17" "><title>ic_brightness_high_black_24px</title><path d="M20,8.69V4H15.31L12,.69,8.69,4H4V8.69L.69,12,4,15.31V20H8.69L12,23.31,15.31,20H20V15.31L23.31,12ZM12,18a6,6,0,1,1,6-6A6,6,0,0,1,12,18ZM12,8a4,4,0,1,0,4,4A4,4,0,0,0,12,8Z" transform="translate(-0.69 -0.69)"/></svg>'
# brightnessBG = new Layer
# 	size: 20
# 	parent: slider.knob
slider.knob.x= Align.center

# Listen for slider value updates
slider.onValueChange ->
	Screen.backgroundColor = Color.mix("black", "#00AAFF", slider.value)
	slider.height=2

#Pagination Dots
	
pagination = []	
for i in [0...2]
	paginationdot = new Layer
		size: 5
		x: Align.center i*8 -4
		y: Align.bottom 318
		borderRadius: 100
		backgroundColor: "#B2B2B2"
		name: [i]
		parent: Names
	
	pagination.push(paginationdot)


#Selected Dot	
pagination[0].backgroundColor= "#000"



ExpandHotspot = new Layer
	width: QuickSettingsPanel.width
	y: Align.bottom
	backgroundColor: ""
	parent: QuickSettingsPanel




QuickSettingsPanel.states.collapse=
	height:108
	y:Align.top
	animationOptions:
		curve: "spring"





quicksettingsfooter.onTap ->
	QuickSettingsPanel.stateCycle("expand", "collapse")
	quicksettingsfooter.states.next()
	donotdisturb.states.next()
	bluetooth.states.next()
	wifi.states.next()
	flashlight.states.next()
	rotation.states.next()
	batterysaver.states.next()
	QuickSettingsDate.states.next()
	quicksettingsdropdownarrow.states.next()
	settings.states.next()
	WifiName.states.next()
	BluetoothName.states.next()
	DisturbName.states.next()
	Names.states.next()
	slider.states.next()
	edit.states.next()
	slider.height=2
	Divider.states.next()
	










# </fold>


"""




