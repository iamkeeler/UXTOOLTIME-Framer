plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Variables


#Change Foreground Color here
primarycolor = "#fff"

#Change Background Color here
backgroundcolor = "#333E47"





#AppBar+StatusBar Icon Variables
BatteryIcon = '<svg id="Battery" data-name="Battery" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 9 14"><title>Battery</title><polygon points="6 0.88 6 0 3 0 3 0.88 0 0.88 0 14 9 14 9 0.88 6 0.88" style="fill:#fff;fill-rule:evenodd"/></svg>'

DataIcon = '<svg id="Data" data-name="Data" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 14"><title>Data</title><polygon points="0 14 14 14 14 0 0 14" style="fill:#fff;fill-rule:evenodd"/></svg>'

WifiIcon = '<svg id="WiFi" data-name="WiFi" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18.05 14"><title>WiFi</title><path d="M-128.25,333.53a15,15,0,0,1,9-3,15,15,0,0,1,9,3l-9,11Z" transform="translate(128.25 -330.51)" style="fill:#fff;fill-rule:evenodd"/></svg>'

HamburgerMenuIcon = '<svg id="Hamburger" data-name="Hamburger" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 18 12"><title>HamburgerMenu</title><path d="M-363.28,241.89h-18v-2h18Zm0,3h-18v2h18Zm0,5h-18v2h18Z" transform="translate(381.28 -239.89)" style="fill:#fff;fill-rule:evenodd"/></svg>'

BackIcon = '<svg id="back" data-name="back" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 16 16"><title>Back</title><polygon points="3.8 7 9.4 1.4 8 0 0 8 8 16 9.4 14.6 3.8 9 16 9 16 7 3.8 7" style="fill:#fff;fill-rule:evenodd"/></svg>'

MenuIcon = '<svg id="menu" data-name="menu" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 4 16"><title>Menu</title><path d="M1006,549a2,2,0,1,0,2,2A2,2,0,0,0,1006,549Zm0-6a2,2,0,1,0,2,2A2,2,0,0,0,1006,543Zm0-2a2,2,0,1,0-2-2A2,2,0,0,0,1006,541Z" transform="translate(-1004 -537)" style="fill:#fff;fill-rule:evenodd"/></svg>'

SearchIcon = '<svg id=Search" data-name="Search" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 17.49 17.49"><title>Search</title><path d="M662.88,431.78a4.5,4.5,0,1,1,4.5-4.5A4.5,4.5,0,0,1,662.88,431.78Zm6,0h-.79l-.28-.28a6.53,6.53,0,1,0-.71.71l.28.27v.8l5,5,1.49-1.49Z" transform="translate(-656.38 -420.78)" style="fill:#fff;fill-rule:evenodd"/></svg>'
# </fold>
# <fold>
# Top App Bar & Status Bar...

# Top App Bar...

AppBar = new Layer
	width: Screen.width
	height: 80
	x: Align.center
	y: Align.top
	header: true
	backgroundColor: backgroundcolor
#for light bg, uncomment 'invert' below
	#backgroundInvert: 100


#Status Bar......

StatusBar = new Layer
	height: 24
	width: Screen.width
	y: Align.top
	parent: AppBar
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
	



#continued AppBar....

		
ScreenTitle = new TextLayer
	text: "Title"
	color: primarycolor
	#for light bg, uncomment 'invert' below
	#invert: 80
	fontSize: 20
	fontFamily: "Roboto"
	fontWeight: 600
	x:Align.left
	y: 39
	padding: 
		left: 72
	parent: AppBar
	
	

#Hamburger
HamburgerMenu = new Layer
	html: HamburgerMenuIcon
	height: 12
	width: 18
	y: Align.top 46
	x: 20
	backgroundColor: null
#for light bg, uncomment 'invert' below
	#invert: 80
	parent: AppBar


#Uncomment below For Back Icon
# back = new Layer
# 	html: BackIcon
# 	height: 16
# 	width: 16
# 	y: Align.top 44
# 	x: 18
# 	backgroundColor: null
# #for light bg, uncomment 'invert' below
# 	#invert: 80
# 	parent: AppBar
	
	
menu = new Layer
	html: MenuIcon
	width: 4
	height: 16
	opacity: 1.0
	y: Align.top 44
	x: Align.right -20
	visible: true
	backgroundColor: null
#for light bg, uncomment 'invert' below
	#invert: 80
	parent: AppBar
	
	
	
Search = new Layer
	html: SearchIcon
	height: 17
	width: 17
	opacity: 1.0
	y: Align.top 44
	x: Align.right -55
	backgroundColor: null
	#for light bg, uncomment 'invert' below
	#invert: 80
	visible: true
	parent: AppBar




# </fold>


"""




