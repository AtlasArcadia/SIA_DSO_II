@groovy.transform.TupleConstructor
class Runner implements Serializable{
    boolean Classic_Customer = false
	boolean Emerald_Activity = false
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
	boolean Gold_Activity = false
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
    env.outputPath='D:\\Output\\Prod'
        dir (env.WORKSPACE){
            stage ('DigitalSerenade_Classic_Customer_Prod_Parallel'){
                run_Classic_Customer_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_Activity_Prod_Parallel'){
                run_Emerald_Activity_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_Birthday_Prod_Parallel'){
                run_Emerald_Birthday_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_FuelVoucher_Prod_Parallel'){
                run_Emerald_FuelVoucher_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_HighlightCampaign_Prod_Parallel'){
                run_Emerald_HighlightCampaign_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_MainIcon_Prod_Parallel'){
                run_Emerald_MainIcon_Prod(runner)
            }
            stage ('DigitalSerenade_Emerald_NewsAndShare_Prod_Parallel'){
                run_Emerald_NewsAndShare_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_Privilege_Prod_Parallel'){
                run_Emerald_Privilege_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_Service_Prod_Parallel'){
                run_Emerald_Service_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_ServiceCenter_Prod_Parallel'){
                run_Emerald_ServiceCenter_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_SurpriseCampaign_Prod_Parallel'){
                run_Emerald_SurpriseCampaign_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeA_Prod_Parallel'){
                run_Emerald_TypeA_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeC_Prod_Parallel'){
                run_Emerald_TypeC_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeE_Prod_Parallel'){
                run_Emerald_TypeE_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeF_Prod_Parallel'){
                run_Emerald_TypeF_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeN_Prod_Parallel'){
                run_Emerald_TypeN_Prod(runner)
            }
			stage ('DigitalSerenade_Emerald_TypeWS_Prod_Parallel'){
                run_Emerald_TypeWS_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_Activity_Prod_Parallel'){
                run_Gold_Activity_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_Birthday_Prod_Parallel'){
                run_Gold_Birthday_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_FuelVoucher_Prod_Parallel'){
                run_Gold_FuelVoucher_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_HighlightCampaign_Prod_Parallel'){
                run_Gold_HighlightCampaign_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_MainIcon_Prod_Parallel'){
                run_Gold_MainIcon_Prod(runner)
            }
            stage ('DigitalSerenade_Gold_NewsAndShare_Prod_Parallel'){
                run_Gold_NewsAndShare_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_Parking_Prod_Parallel'){
                run_Gold_Parking_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_Privilege_Prod_Parallel'){
                run_Gold_Privilege_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_Service_Prod_Parallel'){
                run_Gold_Service_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_ServiceCenter_Prod_Parallel'){
                run_Gold_ServiceCenter_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_SurpriseCampaign_Prod_Parallel'){
                run_Gold_SurpriseCampaign_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_TypeA_Prod_Parallel'){
                run_Gold_TypeA_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_TypeC_Prod_Parallel'){
                run_Gold_TypeC_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_TypeE_Prod_Parallel'){
                run_Gold_TypeE_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_TypeF_Prod_Parallel'){
                run_Gold_TypeF_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_TypeN_Prod_Parallel'){
                run_Gold_TypeN_Prod(runner)
            }
			stage ('DigitalSerenade_Gold_TypeWS_Prod_Parallel'){
                run_Gold_TypeWS_Prod(runner)
            }
			stage ('DigitalSerenade_Login_Login_Prod_Parallel'){
                run_Login_Login_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_Birthday_Prod_Parallel'){
                run_Platinum_Birthday_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_FuelVoucher_Prod_Parallel'){
                run_Platinum_FuelVoucher_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_HighlightCampaign_Prod_Parallel'){
                run_Platinum_HighlightCampaign_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_MainIcon_Prod_Parallel'){
                run_Platinum_MainIcon_Prod(runner)
            }
            stage ('DigitalSerenade_Platinum_NewsAndShare_Prod_Parallel'){
                run_Platinum_NewsAndShare_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_Privilege_Prod_Parallel'){
                run_Platinum_Privilege_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_Service_Prod_Parallel'){
                run_Platinum_Service_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_ServiceCenter_Prod_Parallel'){
                run_Platinum_ServiceCenter_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_SurpriseCampaign_Prod_Parallel'){
                run_Platinum_SurpriseCampaign_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeA_Prod_Parallel'){
                run_Platinum_TypeA_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeC_Prod_Parallel'){
                run_Platinum_TypeC_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeE_Prod_Parallel'){
                run_Platinum_TypeE_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeF_Prod_Parallel'){
                run_Platinum_TypeF_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeN_Prod_Parallel'){
                run_Platinum_TypeN_Prod(runner)
            }
			stage ('DigitalSerenade_Platinum_TypeWS_Prod_Parallel'){
                run_Platinum_TypeWS_Prod(runner)
            }
        }
    }
}
    node ('atlas_WinOS_New') {
    env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\Prod\\web'
    dir (env.WORKSPACE){
        stage ('DigitalSerenade_AllReport_PC_Prod'){
            if(runner.AllReport && !runner.IsSmoke && !runner.IsSanity){
                build job: '(S998)_DigitalSerenade_AllReport_PC_Prod', propagate: false
            }
            else {echo 'not run'}
        }
        stage ('DigitalSerenade_ExportToReportExcel_PC_Prod'){
            if(runner.ExportToReportExcel&& !runner.IsSmoke && !runner.IsSanity) {
                build job: '(S999)_DigitalSerenade_ExportToReportExcel_PC_Prod', propagate: false
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

def run_Classic_Customer_Prod(runner){
    if(runner.Classic_Customer || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Classic_Customer\\ (del /q " + env.outputPath + "\\Classic_Customer\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i classic_customer --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Classic_Customer\\output_3PO_EN.xml '+ env.outputPath +'\\Classic_Customer\\output_3BO_EN.xml '+ env.outputPath +'\\Classic_Customer\\output_3PE_EN.xml '+ env.outputPath +'\\Classic_Customer\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i classic_customer --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Classic_Customer\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Classic_Customer -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Classic_Customer\\output_3PO_TH.xml '+ env.outputPath +'\\Classic_Customer\\output_3BO_TH.xml '+ env.outputPath +'\\Classic_Customer\\output_3PE_TH.xml '+ env.outputPath +'\\Classic_Customer\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Classic_Customer -o output.xml -N Classic_Customer ' + env.outputPath +'\\Classic_Customer\\outputEN.xml '+ env.outputPath +'\\Classic_Customer\\outputTH.xml'
			//Publish report
			build job: '(M50)_DigitalSerenade_Classic_Customer_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_Activity_Prod(runner){
    if(runner.Emerald_Activity || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Activity\\ (del /q " + env.outputPath + "\\Emerald_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Activity\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Activity\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Activity -o output.xml -N Emerald_Activity ' + env.outputPath +'\\Emerald_Activity\\outputEN.xml '+ env.outputPath +'\\Emerald_Activity\\outputTH.xml'
			//Publish report
			build job: '(M45)_DigitalSerenade_Emerald_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_Birthday_Prod(runner){
    if(runner.Emerald_Birthday || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_FuelVoucher_Prod(runner){
    if(runner.Emerald_FuelVoucher || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_HighlightCampaign_Prod(runner){
    if(runner.Emerald_HighlightCampaign || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_MainIcon_Prod(runner){
    if(runner.Emerald_MainIcon || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_NewsAndShare_Prod(runner){
    if(runner.Emerald_NewsAndShare || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_Privilege_Prod(runner){
    if(runner.Emerald_Privilege || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_Service_Prod(runner){
    if(runner.Emerald_Service || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_ServiceCenter_Prod(runner){
    if(runner.Emerald_ServiceCenter || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_SurpriseCampaign_Prod(runner){
    if(runner.Emerald_SurpriseCampaign || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_TypeA_Prod(runner){
    if(runner.Emerald_TypeA || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_TypeC_Prod(runner){
    if(runner.Emerald_TypeC || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_TypeE_Prod(runner){
    if(runner.Emerald_TypeE || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_TypeF_Prod(runner){
    if(runner.Emerald_TypeF || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_TypeN_Prod(runner){
    if(runner.Emerald_TypeN || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Emerald_TypeWS_Prod(runner){
    if(runner.Emerald_TypeWS || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Emerald_Birthday\\ (del /q " + env.outputPath + "\\Emerald_Birthday\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_EN.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i emerald_birthday --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Emerald_Birthday\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Emerald_Birthday -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Emerald_Birthday\\output_3PO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BO_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3PE_TH.xml '+ env.outputPath +'\\Emerald_Birthday\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Emerald_Birthday -o output.xml -N Emerald_Birthday ' + env.outputPath +'\\Emerald_Birthday\\outputEN.xml '+ env.outputPath +'\\Emerald_Birthday\\outputTH.xml'
			//Publish report
			build job: '(M03)_DigitalSerenade_Emerald_Birthday_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_Activity_Prod(runner){
    if(runner.Gold_Activity || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_Birthday_Prod(runner){
    if(runner.Gold_Birthday || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_FuelVoucher_Prod(runner){
    if(runner.Gold_FuelVoucher || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_HilightCampaign_Prod(runner){
    if(runner.Gold_HilightCampaign || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_MainIcon_Prod(runner){
    if(runner.Gold_MainIcon || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_NewsAndShare_Prod(runner){
    if(runner.Gold_NewsAndShare || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_Parking_Prod(runner){
    if(runner.Gold_Parking || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_Privilege_Prod(runner){
    if(runner.Gold_Privilege || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_Service_Prod(runner){
    if(runner.Gold_Service || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_ServiceCenter_Prod(runner){
    if(runner.Gold_ServiceCenter || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_SurpriseCampaign_Prod(runner){
    if(runner.Gold_SurpriseCampaign || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_TypeA_Prod(runner){
    if(runner.Gold_TypeA || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_TypeC_Prod(runner){
    if(runner.Gold_TypeC || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_TypeE_Prod(runner){
    if(runner.Gold_TypeE || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_TypeF_Prod(runner){
    if(runner.Gold_TypeF || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_TypeN_Prod(runner){
    if(runner.Gold_TypeN || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Gold_TypeWS_Prod(runner){
    if(runner.Gold_TypeWS || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Login_Login_Prod(runner){
    if(runner.Login_Login || runner.All){
         dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Gold_Activity\\ (del /q " + env.outputPath + "\\Gold_Activity\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_EN.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i gold_activity --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Gold_Activity\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Gold_Activity -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Gold_Activity\\output_3PO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BO_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3PE_TH.xml '+ env.outputPath +'\\Gold_Activity\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Gold_Activity -o output.xml -N Gold_Activity ' + env.outputPath +'\\Gold_Activity\\outputEN.xml '+ env.outputPath +'\\Gold_Activity\\outputTH.xml'
			//Publish report
			build job: '(M44)_DigitalSerenade_Gold_Activity_PC_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Platinum_Birthday_Prod(runner){
    if(runner.Platinum_Birthday || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Platinum_Birthday\\ (del /q " + env.outputPath + "\\Platinum_Birthday\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_birthday --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Prod\\Web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_birthday --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Prod\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_Birthday -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Platinum_Birthday\\output*_TH_3BO.xml'
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_Birthday -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Platinum_Birthday\\output*_TH_3PE.xml'
				//Publish report
				build job: '(S32)_DigitalSerenade_Platinum_Birthday_PC_Prod', propagate: false
            }
        }
        else {echo 'not run'}
}

def run_Platinum_FuelVoucher_Prod(runner){
    if(runner.Platinum_FuelVoucher || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'DigitalSerenade', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/DigitalSerenade']], workspaceUpdater: [$class: 'UpdateUpdater']])
               
			   //RUN
                bat "if exist " + env.outputPath + "\\Platinum_FuelVoucher\\ (del /q " + env.outputPath + "\\Platinum_FuelVoucher\\*)"
                def START_TIME_EN = getTime()
                echo START_TIME_EN
                bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_fuelvoucher --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Prod\\Web\\DigitalSerenadeExecutor.txt'
                def END_TIME_EN = getTime()
                echo END_TIME_EN
   
               def START_TIME_TH = getTime()
                echo START_TIME_TH
                bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i platinum_fuelvoucher --nostatusrc ' + env.WORKSPACE + '\\DigitalSerenade\\DigitalSerenade_Prod\\web\\DigitalSerenadeExecutor.txt'
                def END_TIME_TH = getTime()
                echo END_TIME_TH
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_FuelVoucher -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Platinum_FuelVoucher\\output*_TH_3BO.xml'
				bat 'rebot --outputdir '+ env.outputPath +'\\Platinum_FuelVoucher -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Platinum_FuelVoucher\\output*_TH_3PE.xml'
				//Publish report
				build job: '(S34)_DigitalSerenade_Platinum_FuelVoucher_PC_Prod', propagate: false
            }
        }
        else {echo 'not run'}
}
