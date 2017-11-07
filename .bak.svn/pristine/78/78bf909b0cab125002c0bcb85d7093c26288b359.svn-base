@groovy.transform.TupleConstructor
class Runner implements Serializable{
    boolean Home = false
    boolean FoodandBeverage = false
	boolean HealthyandBeauty = false
	boolean Entertainment = false
	boolean MenuSpecial = false
	boolean Other = false
	boolean SerenadeMenu = false
	boolean Shopping = false
	boolean Travel = false
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
    env.outputPath='D:\\Output\\Privilege\\Prod\\Web'
        dir (env.WORKSPACE){
            stage ('Priv__Home_Production_Parallel'){
                if(runner.Home || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_Home_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__FoodandBeverage_Production_Parallel'){
                if(runner.FoodandBeverage || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_FoodandBeverage_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__HealthyandBeauty_Production_Parallel'){
                if(runner.HealthyandBeauty || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_HealthyandBeauty_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
		    stage ('Priv__Entertainment_Production_Parallel'){
                if(runner.Entertainment || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_Entertainment_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__MenuSpecial_Production_Parallel'){
                if(runner.MenuSpecial || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_MenuSpecial_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__Other_Production_Parallel'){
                if(runner.Other || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_Other_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__SerenadeMenu_Production_Parallel'){
                if(runner.SerenadeMenu || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_SerenadeMenu_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__Shopping_Production_Parallel'){
                if(runner.Shopping || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_Shopping_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
			stage ('Priv__Travel_Production_Parallel'){
                if(runner.Travel || runner.All){
                    //Check out
                    checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                    //RUN
                    run_Priv_Travel_Production(runner, env.outputPath, env.WORKSPACE)
                }
                else {echo 'not run'}
            }
			
        }
    }
}
failFast: false
    node ('atlas_WinOS_New') {
    env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\Privilege\\Prod\\Web'
    dir (env.WORKSPACE){
        stage ('Priv_AllReport'){
            if(runner.AllReport && !runner.IsSmoke && !runner.IsSanity){
                build job: '(W998)_Priv_AllReport', propagate: false
            }
            else {echo 'not run'}
        }
        stage ('Priv_ExportToReportExcel'){
            if(runner.ExportToReportExcel&& !runner.IsSmoke && !runner.IsSanity) {
                build job: '(W999)_Priv_ExportToReportExcel', propagate: false
            }
            else {echo 'not run'}
        }
    }
}
def getTime(){
    time = new Date().format("yyyy-MM-dd HH:mm:ss",TimeZone.getTimeZone("ICT"))
    return time
}
def script_pybot_myais(ar_LANG, ar_BROWSER, ar_NETWORK, ar_TAKE_TIMEOUT, ar_Tag, tag, WORKSPACE, OS='Windows7'){
    if(OS=='Windows7'){
        return 'pybot -v ar_LANG:'+ ar_LANG +' -v ar_NETWORK:'+ ar_NETWORK + ' -v ar_BROWSER:'+ ar_BROWSER +' -v ar_TAKE_TIMEOUT:'+ ar_TAKE_TIMEOUT +' -v ar_Tag:'+ ar_Tag +' -i '+ tag +' --nostatusrc "'+ WORKSPACE +'\\MyAIS\\Mobile\\MyAISExecutor.txt"'
    }
    else if(OS=='OSX'){
        return 'pybot -v ar_LANG:'+ ar_LANG +' -v ar_NETWORK:'+ ar_NETWORK +' -v ar_TAKE_TIMEOUT:'+ ar_TAKE_TIMEOUT +' -v ar_Tag:'+ ar_Tag +' -i '+ tag +' --nostatusrc "'+ WORKSPACE +'/MyAIS/Mobile/MyAISExecutor.txt"'
    }    
}
def script_rebot_ntype(feature, lang, ntype, outputPath, OS='Windows7'){
    if(OS=='Windows7'){
        return 'rebot --outputdir '+ env.outputPath +'\\'+ feature +' -o output_'+ ntype +'_'+ lang +'.xml -l log'+ ntype +'_'+ lang +'.html -r report'+ ntype +'_'+ lang +'.html -R -N '+ ntype +' --nostatusrc '+ outputPath +'\\'+ feature +'\\*'+ lang +'_'+ ntype +'.xml'
    }
    else if(OS=='OSX'){
        return 'rebot --outputdir '+ env.outputPath +'/'+ feature +' -o output_'+ ntype +'_'+ lang +'.xml -l log'+ ntype +'_'+ lang +'.html -r report'+ ntype +'_'+ lang +'.html -R -N '+ ntype +' --nostatusrc '+ outputPath +'/'+ feature +'/*'+ lang +'_'+ ntype +'.xml'
    }    
}

def run_Priv_Home_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\Home\\ (del /q " + outputPath + "\\Home\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\Home -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\Home\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Home -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Home\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Home -o output.xml -l log.html -r report.html -N Home --nostatusrc '+ outputPath +'\\Home\\output_EN.xml '+ outputPath +'\\Home\\output_TH.xml'
    build job: '(W01)_Privilege_Home_Prod', propagate: false
}

def run_Priv_FoodandBeverage_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\FoodandBeverage\\ (del /q " + outputPath + "\\FoodandBeverage\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i foodandbeverage --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i foodandbeverage --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\FoodandBeverage -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\FoodandBeverage\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\FoodandBeverage -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\FoodandBeverage\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\FoodandBeverage -o output.xml -l log.html -r report.html -N FoodandBeverage --nostatusrc '+ outputPath +'\\FoodandBeverage\\output_EN.xml '+ outputPath +'\\FoodandBeverage\\output_TH.xml'
    build job: '(W02)_Privilege_FoodandBeverage_Prod', propagate: false
}

def run_Priv_HealthyandBeauty_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\HealthyandBeauty\\ (del /q " + outputPath + "\\HealthyandBeauty\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i healthyandbeauty --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i healthyandbeauty --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\HealthyandBeauty -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\HealthyandBeauty\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\HealthyandBeauty -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\HealthyandBeauty\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\HealthyandBeauty -o output.xml -l log.html -r report.html -N HealthyandBeauty --nostatusrc '+ outputPath +'\\HealthyandBeauty\\output_EN.xml '+ outputPath +'\\HealthyandBeauty\\output_TH.xml'
    build job: '(W03)_Privilege_HealthyandBeauty_Prod', propagate: false
}

def run_Priv_Entertainment_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\Entertainment\\ (del /q " + outputPath + "\\Entertainment\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i entertainment --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i entertainment --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\Entertainment -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\Entertainment\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Entertainment -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Entertainment\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Entertainment -o output.xml -l log.html -r report.html -N Entertainment --nostatusrc '+ outputPath +'\\Entertainment\\output_EN.xml '+ outputPath +'\\Entertainment\\output_TH.xml'
    build job: '(W04)_Privilege_Entertainment_Prod', propagate: false
}

def run_Priv_MenuSpecial_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\MenuSpecial\\ (del /q " + outputPath + "\\MenuSpecial\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i menu_special --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i menu_special --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\MenuSpecial -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\MenuSpecial\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\MenuSpecial -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\MenuSpecial\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\MenuSpecial -o output.xml -l log.html -r report.html -N MenuSpecial --nostatusrc '+ outputPath +'\\MenuSpecial\\output_EN.xml '+ outputPath +'\\MenuSpecial\\output_TH.xml'
    build job: '(W05)_Privilege_MenuSpecial_Prod', propagate: false
}			

def run_Priv_Other_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\Other\\ (del /q " + outputPath + "\\Other\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i other --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i other --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\Other -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\Other\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Other -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Other\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Other -o output.xml -l log.html -r report.html -N Other --nostatusrc '+ outputPath +'\\Other\\output_EN.xml '+ outputPath +'\\Other\\output_TH.xml'
    build job: '(W06)_Privilege_Other_Prod', propagate: false
}		

def run_Priv_SerenadeMenu_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\SerenadeMenu\\ (del /q " + outputPath + "\\SerenadeMenu\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i serenademenu --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i serenademenu --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\SerenadeMenu -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\SerenadeMenu\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\SerenadeMenu -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\SerenadeMenu\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\SerenadeMenu -o output.xml -l log.html -r report.html -N SerenadeMenu --nostatusrc '+ outputPath +'\\SerenadeMenu\\output_EN.xml '+ outputPath +'\\SerenadeMenu\\output_TH.xml'
    build job: '(W07)_Privilege_SerenadeMenu_Prod', propagate: false
}
	
def run_Priv_Shopping_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\Shopping\\ (del /q " + outputPath + "\\Shopping\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i shopping --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i shopping --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\Shopping -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\Shopping\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Shopping -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Shopping\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Shopping -o output.xml -l log.html -r report.html -N Shopping --nostatusrc '+ outputPath +'\\Shopping\\output_EN.xml '+ outputPath +'\\Shopping\\output_TH.xml'
    build job: '(W08)_Privilege_Shopping_Prod', propagate: false
}

def run_Priv_Travel_Production(runner, outputPath, workspace){
    bat "if exist " + outputPath + "\\Travel\\ (del /q " + outputPath + "\\Travel\\*)"
    def START_TIME_EN = getTime()
    echo START_TIME_EN
    bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i travel --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_EN = getTime()
    echo END_TIME_EN
    def START_TIME_TH = getTime()
    echo START_TIME_TH
    bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i travel --nostatusrc "'+ WORKSPACE +'\\Privilege\\Privilege_Prod\\web\\Executors.txt"'
    def END_TIME_TH = getTime()
    echo END_TIME_TH
    bat 'rebot --outputdir '+ outputPath +'\\Travel -o output_EN.xml -N EN --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" ' + outputPath+'\\Travel\\*EN.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Travel -o output_TH.xml -N TH --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" ' + outputPath +'\\Travel\\*TH.xml'
    bat 'rebot --outputdir '+ outputPath +'\\Travel -o output.xml -l log.html -r report.html -N Travel --nostatusrc '+ outputPath +'\\Travel\\output_EN.xml '+ outputPath +'\\Travel\\output_TH.xml'
    build job: '(W09)_Privilege_Travel_Prod', propagate: false
}		
	
