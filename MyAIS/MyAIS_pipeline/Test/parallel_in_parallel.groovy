parallel firstBranch: {
	node ('atlas_B') {
		env.WORKSPACE='D:\\AtlasBuffet'
		env.outputPath='D:\\Output\\Prod'
		dir (env.WORKSPACE){
			echo 'Hello World'
		}
	}
},
secondBranch: {
	node ('atlas_Oum') {
		dir ('D:\\AtlasBuffet'){
			echo 'Hello Worldd'
			parallel thirdBranch: {
				node('atlas_Oum'){
					echo 'Hello third thirdBranch'
				}
			},
			fourthBranch: {
				node('atlas_Oum'){
					echo 'Hello third fourthBranch'
				}
			}
		}
	}
}, 
failFast: false