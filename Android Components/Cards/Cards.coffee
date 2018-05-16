plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Cards

# Create the draggable layer      
scrollpanel = new ScrollComponent
	width: Screen.width
	height: Screen.height - 80
	x: Align.center
	y: Align.bottom
	backgroundColor: "#F2F2F2"
	scrollHorizontal: false


#Change Title here
(title = ["Bobby Drake", "Scott Summers","Jean Grey", "Warren Worthington III", "Hank McCoy", "Kurt Wagner", "Lorna Dane", "Kevin Sydney", "Armando Muñoz"])

#Change content text here
(content = ["123 Oak Street
Lutherville-Timonium, MD",
"345 Elm Street
Lutherville-Timonium, MD",
"456 Spruce Street
Lutherville-Timonium, MD",
"567 Pine Avenue
Lutherville-Timonium, MD"
"678 Birch Street
Lutherville-Timonium, MD"
"789 Sycamore Road
Lutherville-Timonium, MD"
"123 Maple Court
Lutherville-Timonium, MD"
"345 Willow Court
Lutherville-Timonium, MD"
"678 Cedar Street
Lutherville-Timonium, MD"])

#Change Subright text here
(subright = ["2", "10", "3", "1", "0", "0", "12", "5", "4"])


for i in [0...8]	
	CardItem = new Layer
		height: 83
		width: Screen.width-16
		backgroundColor: "#fff"
		y: i *90 + 10
		#y: Align.top 80
		x: Align.center
		z: 1
		borderRadius: 4
		shadow: 4
	
		name: [i]
		shadowSpread: 1
		shadowColor: "rgba(156,156,156,0.5)"
		shadowBlur: 4
		shadowY: 2
		shadowX: 0
		parent: scrollpanel.content	


	Title = new TextLayer
		text: title[i]	
		fontFamily: "Roboto"
		fontSize: 16
		fontWeight: 500
		color: "#2F2F2F"
		x: 64
		y: 16
		parent: CardItem
	
	
	Content = new TextLayer
		text: content[i]
		fontFamily: "Roboto"
		fontSize: 14
		fontWeight: 500
		truncate: true
		color: "#000000"
		opacity: 0.54
		x: 64
		y: 36
		lineHeight: 1.0
		parent: CardItem
	
	
	Icon = new SVGLayer
		image: ""
		size: 32
		x: 16
		y: Align.center
		parent: CardItem
		
	Icon.states.selected =
		image:""
	
	Subright = new TextLayer
		text: subright[i]
		fontFamily: "Roboto"
		fontSize: 14
		fontWeight: 500
		color: "#626161"
		y: Align.top 16
		x: Align.right
		padding: right: 20
		parent: CardItem




# </fold>

"""
