plugin.run = (contents, options) ->
	"""
#{contents}

# <fold>
#Button - Floating Action

#Change Color Here
primarycolor = "#007cb0"

#Floating Action Button BG
FloatingButton = new Layer
	backgroundColor: primarycolor
	width: 56
	x: Align.right -16
	y: Align.bottom -64
	height: 56
	borderRadius: 100
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 2
	shadowX: 0
	shadowBlur: 2
	animationOptions:
		curve: Spring(damping: 0.5)
		time: 0.5
	
	
#Floating Action Button Icon
BtnIcon = new Layer
	html: '<svg id="+" data-name="+" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 14 14"><title>+</title><polygon points="14 6 8 6 8 0 6 0 6 6 0 6 0 8 6 8 6 14 8 14 8 8 14 8 14 6" style="fill:#fff;fill-rule:evenodd"/></svg>'
	x: Align.center
	y: Align.center
	parent: FloatingButton
	width: 14
	height: 14
	backgroundColor: null
		
#Floating Action Button Rotation Animation	
FloatingButton.states.Show =
	rotation: 45
	animationOptions:
		curve: Spring(damping: 0.5)
		time: 0.5
	
#Fling Out 1
MiniFloatingButton1 = new Layer
	width: 40
	x: Align.right -24
	y: Align.bottom -124
	height: 40
	borderRadius: 100
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 2
	shadowX: 0
	shadowBlur: 2
	opacity: 0.0
	scale: 0.5
	backgroundColor: "rgba(254,255,254,1)"
	animationOptions:
		curve: Spring(damping: 0.5)
		time: 0.5

#Fling out 1 animation		
MiniFloatingButton1.states.Show =
	opacity: 1.0
	y:MiniFloatingButton1.y-20
	scale: 1.0	
	animationOptions:
		curve: Spring


#Fling out 2		
MiniFloatingButton2 = new Layer
	width: 40
	x: Align.right -24
	y: Align.bottom -180
	height: 40
	borderRadius: 100
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 2
	shadowX: 0
	shadowBlur: 2
	opacity: 0.0
	scale: 0.5
	backgroundColor: "rgba(254,255,254,1)"
	animationOptions:
		curve: Spring(damping: 0.5)
		time: 0.5
		

#Fling out 2 animation			
MiniFloatingButton2.states.Show =
	opacity: 1.0	
	y:MiniFloatingButton2.y-20
	scale: 1.0	
	animationOptions:
		curve: Spring
		delay: 0.05		


#Fling out 3	
MiniFloatingButton3 = new Layer
	width: 40
	x: Align.right -24
	y: Align.bottom -236
	height: 40
	borderRadius: 100
	shadowSpread: 0
	shadowColor: "rgba(0,0,0,0.24)"
	shadowY: 2
	shadowX: 0
	shadowBlur: 2
	opacity: 0.0
	scale: 0.5
	backgroundColor: "rgba(254,255,254,1)"
	animationOptions:
		curve: Spring(damping: 0.5)
		time: 0.5
	
		
#Fling out 3 animation			
MiniFloatingButton3.states.Show =
	opacity: 1.0
	y:MiniFloatingButton3.y-20
	scale: 1.0		
	animationOptions:
		curve: Spring
		delay: .1
	
				

#On Tap event
FloatingButton.onTap (event, layer) ->
	FloatingButton.stateCycle()
	MiniFloatingButton1.stateCycle()
	MiniFloatingButton2.stateCycle()
	MiniFloatingButton3.stateCycle()


# </fold>


"""




