plugin.run = (contents, options) ->
	"""
#{contents}
# <fold>
#Bottom Sheet List- hidden until hotspot is tapped

#BG -Change Height here
BottomSheet = new Layer
	width: Screen.width
	height: 208
	y: Align.bottom 248
	backgroundColor: "#fff"
	shadowBlur: 16
	shadowSpread: 1
	shadowColor: "rgba(0,0,0,0.12)"
	

#BottomSheet Icon Array
BottomSheetIcon = ['<svg id="Share" data-name="Share" xmlns="http://www.w3.org/2000/svg" viewBox="0 -2 24 16"><title>Share</title><path d="M505,475.8a2.87,2.87,0,0,0-2,.78l-7.13-4.17a3.27,3.27,0,0,0,.09-.7,3.37,3.37,0,0,0-.09-.71l7.05-4.12a3,3,0,1,0-1-2.2,3.27,3.27,0,0,0,.09.7L495,469.51a3,3,0,1,0-2,5.21,3,3,0,0,0,2-.82l7.12,4.18a2.82,2.82,0,0,0-.08.65A2.92,2.92,0,1,0,505,475.8Z" transform="translate(-489.98 -461.67)" style="fill:#515251;fill-rule:evenodd"/></svg>',
'<svg id="Upload" data-name="Upload" xmlns="http://www.w3.org/2000/svg" viewBox="0 -4 24 16"><title>Upload</title><path d="M472.32,489.49v4h-4v-4h-3l5-5,5,5Zm5.4-3a7.53,7.53,0,0,0-7.4-6,7.32,7.32,0,0,0-6.6,4,6,6,0,0,0,.6,12h13a5,5,0,0,0,5-5A5.09,5.09,0,0,0,477.72,486.49Z" transform="translate(-458.32 -480.49)" style="fill:#515251;fill-rule:evenodd"/></svg>',
'<svg id="Copy" data-name="Copy" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 24 16"><title>Copy</title><path d="M533.11,433.33h11v14h-11Zm11-2h-11a2,2,0,0,0-2,2v14a2,2,0,0,0,2,2h11a2,2,0,0,0,2-2v-14A2,2,0,0,0,544.11,431.33Zm-3-4h-12a2,2,0,0,0-2,2v14h2v-14h12Z" transform="translate(-527.11 -427.33)" style="fill:#515251;fill-rule:evenodd"/></svg>',
'<svg id="Print" data-name="Print" xmlns="http://www.w3.org/2000/svg" viewBox="0 -4 24 16"><title>Print</title><path d="M525,589H513v4h12Zm1,9a1,1,0,1,1,1-1A.94.94,0,0,1,526,598Zm-3,7h-8v-5h8Zm3-11H512a3,3,0,0,0-3,3v6h4v4h12v-4h4v-6A3,3,0,0,0,526,594Z" transform="translate(-509 -589)" style="fill:#515251;fill-rule:evenodd"/></svg>']

#BottomSheet Menu Option Titles - Set options here
MenuOptionText = ["Share","Upload", "Copy", "Print this page"]


#set number of options here. Change number in []
for i in [0..3]
	
	MenuLineItem = new Layer
		height: 48
		width: Screen.width
		backgroundColor: ""
		y: i*48 + 8
		parent: BottomSheet
	
	ShareIcon = new Layer
		html: BottomSheetIcon[i]
		size: 24
		backgroundColor: ""
		x: Align.left 16 
		y: Align.center
		parent: MenuLineItem
		
	MenuOption = new TextLayer
		text: MenuOptionText[i]
		fontFamily: "Roboto"
		fontWeight: 400
		fontSize: 16
		x: Align.left 72
		y: Align.center
		parent: MenuLineItem
	
		
# Hotspot layer - - set opacity to 0.0 to hide
BottomSheetHotSpot = new Layer
	x: Align.right
	y: Align.top 28
	opacity: 0.3
	width: 48
	height: 48

# Show on hotspot click
BottomSheetHotSpot.onClick ->
	BottomSheet.animate
		y: Align.bottom -48
		options:
			curve: "spring(250,37,20)"
		
# Hide on bottomsheet click
BottomSheet.onClick ->
	BottomSheet.animate
		y: Align.bottom 248
		options:
			curve: "spring(250,37,20)"

# Hide on bottomsheet swipe down
BottomSheet.onSwipe ->
	BottomSheet.animate
		y: Align.bottom 248
		options:
			curve: "spring(250,37,20)"
	
	
	
# </fold>


"""




