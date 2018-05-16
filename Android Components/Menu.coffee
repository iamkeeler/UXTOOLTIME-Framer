plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Menu

#Menu Title Array - Set the menu options here
(titles = ["Refresh", "Help & feedback","Settings","Sign out", "hello"])

menubg = new Layer
	backgroundColor: "#fff"
	height: 208
	width: 170
	x: Align.right -8
	y: Align.top 32
	shadowSpread: 1
	shadowColor: "rgba(156,156,156,0.5)"
	shadowBlur: 2
	shadowY: 2
	shadowX: 0
	z: 1
	opacity: 0.0
	borderRadius: 2

#set number of options here. Change number in []
for i in [0...4]	
	MenuItem = new Layer
		height: 48
		width: 170
		backgroundColor: ""
		y: i *48 + 8
		#y: Align.top 80
		x: Align.center
		z: 1
		name: [i]
		parent: menubg
	


	Title = new TextLayer
		text: titles[i]	
		fontFamily: "Roboto"
		fontSize: 16
		fontWeight: 400
		color: "#2F2F2F"
		x: 16
		y: Align.center
		parent: MenuItem
		
# Hotspot layer - set opacity to 0.0 to hide
MenuHotSpot = new Layer
	x: Align.right
	y: Align.top 28
	opacity: 0.3
	width: 48
	height: 48

# Show on hotspot click
MenuHotSpot.onClick ->
	menubg.animate
		opacity: 1.0
		options:
			curve: Bezier.easeIn
			delay: 0
			time: 0.2
		
# Hide on Menu click
menubg.onClick ->
	menubg.animate
		opacity: 0.0
		options:
			curve: Bezier.easeOut
			delay: 0
			time: 0.2


	

# </fold>


"""




