@groovy.transform.TupleConstructor
class Runner implements Serializable{
    boolean Home = false
	boolean AISPoint = false
	boolean TransferPoint = false
	boolean Reward = false
    boolean AllReport = true
    boolean ExportToReportExcel = true
    boolean All = true
    boolean IsSmoke = false
    boolean IsSanity = false
    boolean activeFalse = false
    
    def get_tag() {                                 
        if(IsSmoke){
            return 'smoke'
        }
        else if(IsSanity)
        {
            return 'sanity'
        }
        else{
            return 'activeANDregression'
        }
    }
}

Runner runner = new Runner()
parallel firstBranch: {
    node ('atlas_WinOS_New') {
    env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\Test\\Mobile'
        dir (env.WORKSPACE){
            stage ('Points_Home_Test_Parallel'){
                run_Home_Test(runner)
            }
			stage ('Points_AISPoint_Test_Parallel'){
                run_AISPoint_Test(runner)
            }
			stage ('Points_TransferPoint_Test_Parallel'){
                run_TransferPoint_Test(runner)
            }
			stage ('Points_Reward_Test_Parallel'){
                run_Reward_Test(runner)
            }
        }
    }
}
failFast: false
    node ('atlas_WinOS_New') {
    env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\Test'
    dir (env.WORKSPACE){
        stage ('Points_AllReport'){
            if(runner.AllReport && !runner.IsSmoke && !runner.IsSanity){
                build job: '(T998)_Points_AllReport', propagate: false
            }
            else {echo 'not run'}
        }
        stage ('Points_ExportToReportExcel'){
            if(runner.ExportToReportExcel&& !runner.IsSmoke && !runner.IsSanity) {
                build job: '(T999)_Points_ExportToReportExcel', propagate: false
            }
            else {echo 'not run'}
        }
    }
}
def getTime(){
    time = new Date().format("yyyy-MM-dd HH:mm:ss",TimeZone.getTimeZone("ICT"))
    return time
}

def script_rebot_ntype(feature, lang, ntype, outputPath, OS='Windows7'){
    if(OS=='Windows7'){
        return 'rebot --outputdir '+ env.outputPath +'\\'+ feature +' -o output_'+ ntype +'_'+ lang +'.xml -l log'+ ntype +'_'+ lang +'.html -r report'+ ntype +'_'+ lang +'.html -R -N '+ ntype +' --nostatusrc '+ outputPath +'\\'+ feature +'\\*'+ lang +'_'+ ntype +'.xml'
    }
    else if(OS=='OSX'){
        return 'rebot --outputdir '+ env.outputPath +'/'+ feature +' -o output_'+ ntype +'_'+ lang +'.xml -l log'+ ntype +'_'+ lang +'.html -r report'+ ntype +'_'+ lang +'.html -R -N '+ ntype +' --nostatusrc '+ outputPath +'/'+ feature +'/*'+ lang +'_'+ ntype +'.xml'
    }    
}

def run_Home_Test(runner){
    if(runner.Home || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Home\\ (del /q " + env.outputPath + "\\Home\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
                def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				//TH
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_nonNTYPE_TH.xml -l lognonNTYPE_TH.html -r reportnonNTYPE_TH.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_nonNTYPE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_3PE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_ROM_TH.xml -l logROM_TH.html -r reportROM_TH.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_MPAY_TH.xml -l logMPAY_TH.html -r reportMPAY_TH.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_MPAY.xml'
				
				//EN
				/*bat 'rebot --outputdir '+ outputPath +'\\Home -o output_nonNTYPE_EN.xml -l lognonNTYPE_EN.html -r reportnonNTYPE_EN.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_nonNTYPE.xml'
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_3PE.xml'
                //bat 'rebot --outputdir '+ outputPath +'\\Home -o output_ROM_EN.xml -l logROM_EN.html -r reportROM_EN.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_MPAY_EN.xml -l logMPAY_EN.html -r reportMPAY_EN.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_MPAY.xml'
				*/	
				//Rebot TH&EN to Suit
				
				//bat 'rebot --outputdir '+ outputPath +'\\Home -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\Home\\output_*_EN.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Home\\output_*_TH.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output.xml -l log.html -r report.html -N Home --nostatusrc '+ outputPath +'\\Home\\output_EN.xml '+ outputPath +'\\Home\\output_TH.xml'
                
                //Publish report
                build job: '(T01)_Points_Home_WebMobile_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_AISPoint_Test(runner){
    if(runner.AISPoint || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\AISPoint\\ (del /q " + env.outputPath + "\\AISPoint\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i aispoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i aispoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
//REBOT
				//TH
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_nonNTYPE_TH.xml -l lognonNTYPE_TH.html -r reportnonNTYPE_TH.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_TH_nonNTYPE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_TH_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_TH_3PE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_ROM_TH.xml -l logROM_TH.html -r reportROM_TH.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_TH_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_MPAY_TH.xml -l logMPAY_TH.html -r reportMPAY_TH.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_TH_MPAY.xml'
				
				//EN
				/*bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_nonNTYPE_EN.xml -l lognonNTYPE_EN.html -r reportnonNTYPE_EN.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_EN_nonNTYPE.xml'
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_EN_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_EN_3PE.xml'
                //bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_ROM_EN.xml -l logROM_EN.html -r reportROM_EN.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_EN_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_MPAY_EN.xml -l logMPAY_EN.html -r reportMPAY_EN.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\AISPoint\\output*_EN_MPAY.xml'
					*/
				//Rebot TH&EN to Suit
				
				//bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\AISPoint\\output_*_EN.xml '
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\AISPoint\\output_*_TH.xml '
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output.xml -l log.html -r report.html -N AISPoint --nostatusrc '+ outputPath +'\\AISPoint\\output_EN.xml '+ outputPath +'\\AISPoint\\output_TH.xml'                //Publish report
                build job: '(T02)_Points_AISPoint_WebMobile_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_TransfersPoint_Test(runner){
    if(runner.TransfersPoint || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\TransfersPoint\\ (del /q " + env.outputPath + "\\TransfersPoint\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i transferpoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i transferpoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
//REBOT
				//TH
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_nonNTYPE_TH.xml -l lognonNTYPE_TH.html -r reportnonNTYPE_TH.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_TH_nonNTYPE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_TH_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_TH_3PE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_ROM_TH.xml -l logROM_TH.html -r reportROM_TH.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_TH_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_MPAY_TH.xml -l logMPAY_TH.html -r reportMPAY_TH.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_TH_MPAY.xml'
				
				//EN
				/*bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_nonNTYPE_EN.xml -l lognonNTYPE_EN.html -r reportnonNTYPE_EN.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_EN_nonNTYPE.xml'
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_EN_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_EN_3PE.xml'
                //bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_ROM_EN.xml -l logROM_EN.html -r reportROM_EN.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_EN_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_MPAY_EN.xml -l logMPAY_EN.html -r reportMPAY_EN.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\TransfersPoint\\output*_EN_MPAY.xml'
				*/	
				//Rebot TH&EN to Suit
				
				//bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\TransfersPoint\\output_*_EN.xml '
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\TransfersPoint\\output_*_TH.xml '
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output.xml -l log.html -r report.html -N TransfersPoint --nostatusrc '+ outputPath +'\\TransfersPoint\\output_EN.xml '+ outputPath +'\\TransfersPoint\\output_TH.xml'                
                //Publish report
                build job: '(T03)_Points_TransfersPoint_WebMobile_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_Reward_Test(runner){
    if(runner.Reward || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Reward\\ (del /q " + env.outputPath + "\\Reward\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i reward --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i reward --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
//REBOT
				//TH
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_nonNTYPE_TH.xml -l lognonNTYPE_TH.html -r reportnonNTYPE_TH.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\Reward\\output*_TH_nonNTYPE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Reward\\output*_TH_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Reward\\output*_TH_3PE.xml'
                //bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_ROM_TH.xml -l logROM_TH.html -r reportROM_TH.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\Reward\\output*_TH_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_MPAY_TH.xml -l logMPAY_TH.html -r reportMPAY_TH.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\Reward\\output*_TH_MPAY.xml'
				
				//EN
				/*bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_nonNTYPE_EN.xml -l lognonNTYPE_EN.html -r reportnonNTYPE_EN.html  -R -N nonNTYPE --nostatusrc '+ env.outputPath +'\\Reward\\output*_EN_nonNTYPE.xml'
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Reward\\output*_EN_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Reward\\output*_EN_3PE.xml'
                //bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_ROM_EN.xml -l logROM_EN.html -r reportROM_EN.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\Reward\\output*_EN_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_MPAY_EN.xml -l logMPAY_EN.html -r reportMPAY_EN.html  -R -N MPAY --nostatusrc '+ env.outputPath +'\\Reward\\output*_EN_MPAY.xml'
				*/	
				//Rebot TH&EN to Suit
				
				//bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\Reward\\output_*_EN.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Reward\\output_*_TH.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output.xml -l log.html -r report.html -N Reward --nostatusrc '+ outputPath +'\\Reward\\output_EN.xml '+ outputPath +'\\Reward\\output_TH.xml'                
                //Publish report
                build job: '(T04)_Points_Reward_WebMobile_Test', propagate: false
            }
        }
        else {echo 'not run'}
}