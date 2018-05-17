plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#StatusBar Icon Variables
BatteryIcon = '<svg id="Battery" data-name="Battery" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 9 14"><title>Battery</title><polygon points="6 0.88 6 0 3 0 3 0.88 0 0.88 0 14 9 14 9 0.88 6 0.88" style="fill:#fff;fill-rule:evenodd"/></svg>'

DataIcon = '<svg id="Data" data-name="Data" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 14"><title>Data</title><polygon points="0 14 14 14 14 0 0 14" style="fill:#fff;fill-rule:evenodd"/></svg>'

WifiIcon = '<svg id="WiFi" data-name="WiFi" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18.05 14"><title>WiFi</title><path d="M-128.25,333.53a15,15,0,0,1,9-3,15,15,0,0,1,9,3l-9,11Z" transform="translate(128.25 -330.51)" style="fill:#fff;fill-rule:evenodd"/></svg>'
# </fold>
# <fold>
# Status Bar...
#Status Bar......

StatusBar = new Layer
	height: 24
	width: Screen.width
	y: Align.top
	backgroundColor: "rgba(0,0,0,0.18)"
#for light bg, uncomment 'invert' below
	#backgroundInvert: 100


Time = new TextLayer
	text: "12:30"
	fontSize: 14
	fontWeight: 500
	fontFamily: "Roboto"
	color: "#fff"
	#for light bg, uncomment 'invert' below
	#invert: 80
	y: Align.center 1
	x: Align.right -8
	parent: StatusBar


Battery = new Layer
	html: BatteryIcon
	height: 14
	width: 9
	color: "#fff"
#for light bg, uncomment 'invert' below
	#invert: 80
	y: Align.center
	x: Align.right -51
	backgroundColor: null
	parent: StatusBar
	
	
Data = new Layer
	html: DataIcon
	height: 14
	width: 14
	color: "#fff"
	#for light bg, uncomment 'invert' below
	#invert: 80
	y: Align.center
	x: Align.right -70
	backgroundColor: null
	parent: StatusBar


WiFi = new Layer
	html: WifiIcon
	height: 14
	width: 18
	color: "#fff"
	#for light bg, uncomment 'invert' below
	#invert: 80
	y: Align.center
	x: Align.right -85
	backgroundColor: null
	parent: StatusBar
	
# </fold>


"""




