@groovy.transform.TupleConstructor
Runner runner = new Runner()
node ('atlas_B') 

parallel firstBranch: {
	node ('atlas_B') {
		dir ('D:\\AtlasBuffet')
	}
},
	secondBranch: {
	node ('atlas_Oum') {
		dir ('D:\\AtlasBuffet')
	}
}, 
failFast: false

