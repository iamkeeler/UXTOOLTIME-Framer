plugin.run = (contents, options) ->
	"""
#{contents}

# <fold>
#Nav Bar

Navigation = new Layer
	width: Screen.width
	height: 48
	x: Align.center
	y: Align.bottom
	backgroundColor:"#000"
	


Back = new SVGLayer
	html: '<svg id="Back" data-name="Back" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 25.6 29"><title>nav_back</title><path d="M34.8,14.4V35.6L16.46,25,34.8,14.4M14.86,25.93h0M36.17,10.5a2.64,2.64,0,0,0-1.32.41L13.42,23.29c-1.63.95-1.63,2.47,0,3.42L34.85,39.09a2.64,2.64,0,0,0,1.32.41c1,0,1.63-.77,1.63-2.11V12.61c0-1.34-.66-2.11-1.63-2.11Z" transform="translate(-12.2 -10.5)" style="fill:#fff"/></svg>'
	size: 15
	y: Align.center
	x: Align.center -100
	parent: Navigation
	
Home = new SVGLayer
	html: '<svg id="Home" data-name="Home" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 28"><title>nav_home</title><path d="M-185,371.18A10.83,10.83,0,0,1-174.18,382,10.83,10.83,0,0,1-185,392.82,10.83,10.83,0,0,1-195.82,382,10.83,10.83,0,0,1-185,371.18m0-3.18a14,14,0,0,0-14,14,14,14,0,0,0,14,14,14,14,0,0,0,14-14,14,14,0,0,0-14-14Z" transform="translate(199 -368)" style="fill:#fff"/></svg>'
	size: 16
	y: Align.center
	x: Align.center 
	parent: Navigation
	

Switcher = new SVGLayer
	html: '<svg id="Layer_1" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 28 28"><title>Untitled-2</title><path d="M-43,384.81a.49.49,0,0,1,.49.49v21a.49.49,0,0,1-.49.49h-21a.49.49,0,0,1-.49-.49v-21a.49.49,0,0,1,.49-.49h21m0-3h-21a3.49,3.49,0,0,0-3.49,3.49v21a3.49,3.49,0,0,0,3.49,3.49h21a3.49,3.49,0,0,0,3.49-3.49v-21A3.49,3.49,0,0,0-43,381.81Z" transform="translate(67.56 -381.81)" style="fill:#fff"/></svg>'
	size: 16
	y: Align.center
	x: Align.center 100
	parent: Navigation

# </fold>

"""
