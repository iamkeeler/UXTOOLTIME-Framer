plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#List

# Create the draggable layer      
scrollpanel = new ScrollComponent
	width: Screen.width
	height: Screen.height - 80
	x: Align.center
	y: Align.bottom
	backgroundColor: "#F2F2F2"
	scrollHorizontal: false


#Change title here
(titles = ["Bobby Drake", "Scott Summers","Jean Grey", "Warren Worthington III", "Hank McCoy", "Kurt Wagner", "Lorna Dane", "Kevin Sydney", "Armando Muñoz"])

#Change subright here
(subright = ["2", "10", "3", "1", "0", "0", "12", "5", "4"])


Items = []
for i in [0...8]	
	LineItem = new Layer
		height: 56
		width: Screen.width
		backgroundColor: "#fff"
		y: i *56
		#y: Align.top 80
		x: Align.center
		z: 1
	
		name: [i]
	
		parent: scrollpanel.content	


	Title = new TextLayer
		text: titles[i]	
		fontFamily: "Roboto"
		fontSize: 16
		fontWeight: 400
		color: "#2F2F2F"
		x: 16
		y: Align.center
		parent: LineItem
		
	
#Uncomment to show SubRight	
# 	SubRight = new TextLayer
# 		text: subright[i]
# 		fontFamily: "Roboto"
# 		fontSize: 14
# 		fontWeight: 500
# 		color: "#626161"
# 		y: Align.center
# 		x: Align.right
# 		padding: right: 20
# 		parent: LineItem

	Divider = new Layer
		width: Screen.width
		height: 1
		y: Align.bottom
		x: Align.right
		parent: LineItem
		backgroundColor: "rgba(0,0,0,0.12)"
	




# </fold>

"""
