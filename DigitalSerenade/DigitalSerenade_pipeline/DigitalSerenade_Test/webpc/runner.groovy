@groovy.transform.TupleConstructor
class Runner implements Serializable{
    boolean Classic_Customer = false
	boolean Emerald_Birthday = false
	boolean Emerald_FuelVoucher = false
	boolean Emerald_HighlightCampaign = false
	boolean Emerald_MainIcon = false
	boolean Emerald_NewsAndShare = false
	boolean Emerald_Privilege = false
	boolean Emerald_Service = false
	boolean Emerald_ServiceCenter = false
	boolean Emerald_SurpriseCampaign = false
	boolean Emerald_TypeA = false
	boolean Emerald_TypeC = false
	boolean Emerald_TypeE = false
	boolean Emerald_TypeF = false
	boolean Emerald_TypeN = false
	boolean Emerald_TypeWS = false
	boolean Gold_Birthday = false
	boolean Gold_FuelVoucher = false
	boolean Gold_HilightCampaign = false
	boolean Gold_MainIcon = false
	boolean Gold_NewsAndShare = false
	boolean Gold_Parking = false
	boolean Gold_Privilege = false
	boolean Gold_Service = false
	boolean Gold_ServiceCenter = false
	boolean Gold_SurpriseCampaign = false
	boolean Gold_TypeA = false
	boolean Gold_TypeC = false
	boolean Gold_TypeE = false
	boolean Gold_TypeF = false
	boolean Gold_TypeN = false
	boolean Gold_TypeWS = false
	boolean Login_Login = false
	boolean Platinum_Activity = false
	boolean Platinum_Birthday = false
	boolean Platinum_FuelVoucher = false
	boolean Platinum_HighlightCampaign = false
	boolean Platinum_MainIcon = false
	boolean Platinum_NewsAndShare = false
	boolean Platinum_PA = false
	boolean Platinum_Parking = false
	boolean Platinum_Privilege = false
	boolean Platinum_Service = false
	boolean Platinum_ServiceCenter = false
	boolean Platinum_SurpriseCampaign = false
	boolean Platinum_TypeA = false
	boolean Platinum_TypeC = false
	boolean Platinum_TypeE = false
	boolean Platinum_TypeF = false
	boolean Platinum_TypeN = false
	boolean Platinum_TypeWS = false
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
    env.outputPath='D:\\Output\\Test'
        dir (env.WORKSPACE){
            stage ('DigitalSerenade_Classic_Customer_Test_Parallel'){
                run_Classic_Customer_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_Birthday_Test_Parallel'){
                run_Emerald_Birthday_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_FuelVoucher_Test_Parallel'){
                run_Emerald_FuelVoucher_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_HighlightCampaign_Test_Parallel'){
                run_Emerald_HighlightCampaign_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_MainIcon_Test_Parallel'){
                run_Emerald_MainIcon_Test(runner)
            }
            stage ('DigitalSerenade_Emerald_NewsAndShare_Test_Parallel'){
                run_Emerald_NewsAndShare_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_Privilege_Test_Parallel'){
                run_Emerald_Privilege_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_Service_Test_Parallel'){
                run_Emerald_Service_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_ServiceCenter_Test_Parallel'){
                run_Emerald_ServiceCenter_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_SurpriseCampaign_Test_Parallel'){
                run_Emerald_SurpriseCampaign_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeA_Test_Parallel'){
                run_Emerald_TypeA_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeC_Test_Parallel'){
                run_Emerald_TypeC_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeE_Test_Parallel'){
                run_Emerald_TypeE_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeF_Test_Parallel'){
                run_Emerald_TypeF_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeN_Test_Parallel'){
                run_Emerald_TypeN_Test(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeWS_Test_Parallel'){
                run_Emerald_TypeWS_Test(runner)
            }
			stage ('DigitalSerenade_Gold_Birthday_Test_Parallel'){
                run_Gold_Birthday_Test(runner)
            }
			stage ('DigitalSerenade_Gold_FuelVoucher_Test_Parallel'){
                run_Gold_FuelVoucher_Test(runner)
            }
			stage ('DigitalSerenade_Gold_HighlightCampaign_Test_Parallel'){
                run_Gold_HighlightCampaign_Test(runner)
            }
			stage ('DigitalSerenade_Gold_MainIcon_Test_Parallel'){
                run_Gold_MainIcon_Test(runner)
            }
            stage ('DigitalSerenade_Gold_NewsAndShare_Test_Parallel'){
                run_Gold_NewsAndShare_Test(runner)
            }
			stage ('DigitalSerenade_Gold_Privilege_Test_Parallel'){
                run_Gold_Privilege_Test(runner)
            }
			stage ('DigitalSerenade_Gold_Service_Test_Parallel'){
                run_Gold_Service_Test(runner)
            }
			stage ('DigitalSerenade_Gold_ServiceCenter_Test_Parallel'){
                run_Gold_ServiceCenter_Test(runner)
            }
			stage ('DigitalSerenade_Gold_SurpriseCampaign_Test_Parallel'){
                run_Gold_SurpriseCampaign_Test(runner)
            }
			stage ('DigitalSerenade_Gold_TypeA_Test_Parallel'){
                run_Gold_TypeA_Test(runner)
            }
			stage ('DigitalSerenade_Gold_TypeC_Test_Parallel'){
                run_Gold_TypeC_Test(runner)
            }
			stage ('DigitalSerenade_Gold_TypeE_Test_Parallel'){
                run_Gold_TypeE_Test(runner)
            }
			stage ('DigitalSerenade_Gold_TypeF_Test_Parallel'){
                run_Gold_TypeF_Test(runner)
            }
			stage ('DigitalSerenade_Gold_TypeN_Test_Parallel'){
                run_Gold_TypeN_Test(runner)
            }
			stage ('DigitalSerenade_Gold_TypeWS_Test_Parallel'){
                run_Gold_TypeWS_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_Birthday_Test_Parallel'){
                run_Platinum_Birthday_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_FuelVoucher_Test_Parallel'){
                run_Platinum_FuelVoucher_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_HighlightCampaign_Test_Parallel'){
                run_Platinum_HighlightCampaign_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_MainIcon_Test_Parallel'){
                run_Platinum_MainIcon_Test(runner)
            }
            stage ('DigitalSerenade_Platinum_NewsAndShare_Test_Parallel'){
                run_Platinum_NewsAndShare_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_Privilege_Test_Parallel'){
                run_Platinum_Privilege_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_Service_Test_Parallel'){
                run_Platinum_Service_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_ServiceCenter_Test_Parallel'){
                run_Platinum_ServiceCenter_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_SurpriseCampaign_Test_Parallel'){
                run_Platinum_SurpriseCampaign_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeA_Test_Parallel'){
                run_Platinum_TypeA_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeC_Test_Parallel'){
                run_Platinum_TypeC_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeE_Test_Parallel'){
                run_Platinum_TypeE_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeF_Test_Parallel'){
                run_Platinum_TypeF_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeN_Test_Parallel'){
                run_Platinum_TypeN_Test(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeWS_Test_Parallel'){
                run_Platinum_TypeWS_Test(runner)
            }
        }
    }
}
    node ('atlas_WinOS_New') {
    env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\Test\\web'
    dir (env.WORKSPACE){
        stage ('DigitalSerenade_AllReport_PC_Test'){
            if(runner.AllReport && !runner.IsSmoke && !runner.IsSanity){
                build job: '(S998)_DigitalSerenade_AllReport_PC_Test', propagate: false
            }
            else {echo 'not run'}
        }
        stage ('DigitalSerenade_ExportToReportExcel_PC_Test'){
            if(runner.ExportToReportExcel&& !runner.IsSmoke && !runner.IsSanity) {
                build job: '(S999)_DigitalSerenade_ExportToReportExcel_PC_Test', propagate: false
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

def run_Emerald_Birthday_Test(runner){
    if(runner.Home || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Birthday\\ (del /q " + env.outputPath + "\\Birthday\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\Home\\*_EN.xml '
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_3PO.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_3PE.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_ROM_TH.xml -l logROM_TH.html -r reportROM_TH.html  -R -N ROM --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_ROM.xml'
                bat 'rebot --outputdir '+ outputPath +'\\Home -o output_mPAY_TH.xml -l logmPAY_TH.html -r reportmPAY_TH.html  -R -N mPAY --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_mPAY.xml'
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Home\\output_*_TH.xml '
				bat 'rebot --outputdir '+ outputPath +'\\Home -o output.xml -l log.html -r report.html -N Home --nostatusrc '+ outputPath +'\\Home\\output_EN.xml '+ outputPath +'\\Home\\output_TH.xml'
                
                //Publish report
                build job: '(U01)_Points_Home_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_AISPoint_Test(runner){
    if(runner.AISPoint || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\AISPoint\\ (del /q " + env.outputPath + "\\AISPoint\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i aispoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i aispoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\AISPoint\\*_EN.xml
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\AISPoint\\*_TH.xml
				bat 'rebot --outputdir '+ outputPath +'\\AISPoint -o output.xml -l log.html -r report.html -N AISPoint --nostatusrc '+ outputPath +'\\AISPoint\\output_EN.xml '+ outputPath +'\\Home\\output_TH.xml'
                
                //Publish report
                build job: '(U02)_Points_AISPoint_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_TransfersPoint_Test(runner){
    if(runner.TransfersPoint || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\TransfersPoint\\ (del /q " + env.outputPath + "\\TransfersPoint\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i transferpoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i transferpoint --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\TransfersPoint\\*_EN.xml
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\TransfersPoint\\*_TH.xml
				bat 'rebot --outputdir '+ outputPath +'\\TransfersPoint -o output.xml -l log.html -r report.html -N TransfersPoint --nostatusrc '+ outputPath +'\\TransfersPoint\\output_EN.xml '+ outputPath +'\\TransfersPoint\\output_TH.xml'
                
                //Publish report
                build job: '(U03)_Points_TransfersPoint_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_Reward_Test(runner){
    if(runner.Reward || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Reward\\ (del /q " + env.outputPath + "\\Reward\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i reward --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i reward --nostatusrc ' + env.WORKSPACE + '\\Points\\Points_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				
				//REBOT
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath +'\\Reward\\*_EN.xml
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Reward\\*_TH.xml
				bat 'rebot --outputdir '+ outputPath +'\\Reward -o output.xml -l log.html -r report.html -N Reward --nostatusrc '+ outputPath +'\\Reward\\output_EN.xml '+ outputPath +'\\Reward\\output_TH.xml'
                
                //Publish report
                build job: '(U04)_Points_Reward_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_Platinum_Birthday_Test(runner){
    if(runner.Platinum_Birthday || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Platinum_Birthday\\ (del /q " + env.outputPath + "\\Platinum_Birthday\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_birthday --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Test\\Web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_birthday --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Platinum_Birthday\\output*_TH_3BO.xml'
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Platinum_Birthday\\output*_TH_3PE.xml'
				//Publish report
				build job: '(S32)_DigitalSerenade_Platinum_Birthday_PC_Test', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_Platinum_FuelVoucher_Test(runner){
    if(runner.Platinum_FuelVoucher || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Platinum_FuelVoucher\\ (del /q " + env.outputPath + "\\Platinum_FuelVoucher\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_fuelvoucher --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Test\\Web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_fuelvoucher --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Test\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_FuelVoucher -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Platinum_FuelVoucher\\output*_TH_3BO.xml'
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_FuelVoucher -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Platinum_FuelVoucher\\output*_TH_3PE.xml'
				//Publish report
				build job: '(S34)_DigitalSerenade_Platinum_FuelVoucher_PC_Test', propagate: false
            }
        }
        else {echo 'not run'}
}
