plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#*List_SubBelow

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

#Change subbelow text here
(subbelow = ["123 Oak Street","345 Elm Street","456 Spruce Street","567 Pine Avenue",
"678 Birch Street","789 Sycamore Road","123 Maple Court","345 Willow Court","678 Cedar Street"])

#Change subright text here
(subright = ["2", "10", "3", "1", "0", "0", "12", "5", "4"])

#Unccoment and add icons here
# icons=[]

Items = []
for i in [0...8]	
	LineItem = new Layer
		height: 72
		width: Screen.width
		backgroundColor: "#fff"
		y: i *72
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
		x: 64
		y: 16
		parent: LineItem
	
	
	SubBelow = new TextLayer
		text: subbelow[i]
		fontFamily: "Roboto"
		fontSize: 14
		fontWeight: 400
		color: "#000000"
		opacity: 0.54
		x: 64
		y: 38
		lineHeight: 1.0
		parent: LineItem
	
	
	Icon = new SVGLayer
		image: ""
		size: 32
		x: 16
		y: Align.center
		parent: LineItem
		
	Icon.states.selected =
		image:""

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
		width: Screen.width-64
		height: 1
		y: Align.bottom
		x: Align.right
		parent: LineItem
		backgroundColor: "rgba(0,0,0,0.12)"
	



# </fold>

"""
