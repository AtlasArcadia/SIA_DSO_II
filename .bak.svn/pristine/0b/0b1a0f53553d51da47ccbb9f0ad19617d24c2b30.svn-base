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
    env.outputPath='D:\\Output\\Prod'
        dir (env.WORKSPACE){
            stage ('Points_Home_Prod_Parallel'){
                run_Home_Production(runner)
            }
			stage ('Points_AISPoint_Prod_Parallel'){
                run_AISPoint_Production(runner)
            }
			stage ('Points_TransferPoint_Prod_Parallel'){
                run_TransferPoint_Production(runner)
            }
			stage ('Points_Reward_Prod_Parallel'){
                run_Reward_Production(runner)
            }
        }
    }
}
failFast: false
    node ('atlas_WinOS_New') {
    env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\Prod'
    dir (env.WORKSPACE){
        stage ('Points_AllReport'){
            if(runner.AllReport && !runner.IsSmoke && !runner.IsSanity){
                build job: '(V998)_Points_AllReport', propagate: false
            }
            else {echo 'not run'}
        }
        stage ('Points_ExportToReportExcel'){
            if(runner.ExportToReportExcel&& !runner.IsSmoke && !runner.IsSanity) {
                build job: '(V999)_Points_ExportToReportExcel', propagate: false
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

def run_Home_Production(runner){
    if(runner.Home || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Home\\ (del /q " + env.outputPath + "\\Home\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\Home\\*_EN.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Home\\*_TH.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output.xml -l log.html -r report.html -N Home --nostatusrc '+ outputPath +'\\Home\\output_EN.xml '+ outputPath +'\\Home\\output_TH.xml'
                
                //Publish report
                build job: '(V01)_Points_Home_Prod', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_AISPoint_Production(runner){
    if(runner.AISPoint || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\AISPoint\\ (del /q " + env.outputPath + "\\AISPoint\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i aispoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i aispoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\AISPoint\\*_EN.xml
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\AISPoint\\*_TH.xml
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output.xml -l log.html -r report.html -N AISPoint --nostatusrc '+ outputPath +'\\AISPoint\\output_EN.xml '+ outputPath +'\\Home\\output_TH.xml'
                
                //Publish report
                build job: '(V02)_Points_AISPoint_Prod', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_TransfersPoint_Production(runner){
    if(runner.TransfersPoint || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\TransfersPoint\\ (del /q " + env.outputPath + "\\TransfersPoint\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i transferpoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i transferpoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\TransfersPoint\\*_EN.xml
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\TransfersPoint\\*_TH.xml
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output.xml -l log.html -r report.html -N TransfersPoint --nostatusrc '+ outputPath +'\\TransfersPoint\\output_EN.xml '+ outputPath +'\\TransfersPoint\\output_TH.xml'
                
                //Publish report
                build job: '(V03)_Points_TransfersPoint_Prod', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_Reward_Production(runner){
    if(runner.Reward || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Reward\\ (del /q " + env.outputPath + "\\Reward\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i reward --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i reward --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Prod\\web\\MyAISExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\Reward\\*_EN.xml
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Reward\\*_TH.xml
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output.xml -l log.html -r report.html -N Reward --nostatusrc '+ outputPath +'\\Reward\\output_EN.xml '+ outputPath +'\\Reward\\output_TH.xml'
                
                //Publish report
                build job: '(V04)_Points_Reward_Prod', propagate: false
            }
        }
        else {echo 'not run'}
}