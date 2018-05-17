plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Bottom Navigation


#Change Color Here
primarycolor = "#007cb0"


bttns = []
title = []
icon = []

#Change Labels here
BottomText = ["Recents", "Favorites","Nearby"]

#Change Icons here
icons = ['<svg><path d="M13,3a9,9,0,0,0-9,9H1l3.89,3.89L5,16l4-4H6a7,7,0,1,1,2.06,4.94L6.64,18.36A9,9,0,1,0,13,3ZM12,8v5l4.28,2.54L17,14.33l-3.5-2.08V8Z" transform="translate(-1 -3)"/>' , 
'<svg><path d="M12,21.35,10.55,20C5.4,15.36,2,12.28,2,8.5A5.45,5.45,0,0,1,7.5,3,6,6,0,0,1,12,5.09,6,6,0,0,1,16.5,3,5.45,5.45,0,0,1,22,8.5c0,3.78-3.4,6.86-8.55,11.54Z" transform="translate(-2 -3)"/>' ,
'<svg><path d="M12.32,2.45a10,10,0,1,0,10,10A10,10,0,0,0,12.32,2.45Zm0,18a8,8,0,1,1,8-8A8,8,0,0,1,12.32,20.45Z" transform="translate(-2.32 -2.45)"/><path d="M12.32,7.07a3.76,3.76,0,0,0-3.77,3.77c0,2.82,3.77,7,3.77,7s3.77-4.18,3.77-7A3.77,3.77,0,0,0,12.32,7.07Zm0,5.11a1.35,1.35,0,1,1,1.34-1.34A1.34,1.34,0,0,1,12.32,12.18Z" transform="translate(-2.32 -2.45)"/>']

#Main Container
BottomNavBG = new Layer
	width: Screen.width
	height: 56
	y: Align.bottom -48
	backgroundColor: "#fff"

dividerline = new Layer
	width: Screen.width
	height: 1
	y: Align.top -1
	z: 0
	backgroundColor: "#E6E6E6"
	parent: BottomNavBG	

for i in [0..2]
	BottomNavBarActions = new Layer
		height: 56
		width: Screen.width/3
		x: i*Screen.width/3
		
		backgroundColor: "#fff"
		name: [i]
		parent: BottomNavBG
		
	
	

	BottomNavBarActionTitle = new TextLayer
		text: BottomText[i]
		fontFamily: "Roboto"
		name: "title"
		fontWeight: 500
		fontSize: 12
		x: Align.center
		y: Align.bottom -10
		color: "#000"
		opacity: 0.5
		textAlign: "center"
		parent: BottomNavBarActions
	
#Title state	
	BottomNavBarActionTitle.states.active=
			color: primarycolor
			opacity: 1.0
			scale: 1.1
	
	
	
	
	
	BottomNavBarActionIcon = new SVGLayer
		width: 24
		height: 24
		x: Align.center
		y: Align.top 8
		html: icons[i]
		fill: "#767676"
		backgroundColor: ""
		parent: BottomNavBarActions
	
	
	
#Icon state
	BottomNavBarActionIcon.states.add
		active:
			backgroundColor: ""
			opacity: 1.0
			y: Align.top 6
			fill: primarycolor
			animationOptions:
				curve: "spring"
	
	

	bttns.push(BottomNavBarActions)
	title.push(BottomNavBarActionTitle)
	icon.push(BottomNavBarActionIcon)


icon[0].stateSwitch "active"
title[0].stateSwitch "active"

#events
bttns[0].onTap ->
	title[0].states.next()	
	icon[0].states.next()
	title[1].stateSwitch "default"
	icon[1].stateSwitch "default"
	title[2].stateSwitch "default"
	icon[2].stateSwitch "default"


bttns[1].onTap ->
	title[1].states.next()	
	icon[1].states.next()
	title[0].stateSwitch "default"
	icon[0].stateSwitch "default"
	title[2].stateSwitch "default"
	icon[2].stateSwitch "default"
	
bttns[2].onTap ->
	title[2].states.next()	
	icon[2].states.next()	
	title[0].stateSwitch "default"
	icon[0].stateSwitch "default"
	title[1].stateSwitch "default"
	icon[1].stateSwitch "default"





# </fold>


"""




