@groovy.transform.TupleConstructor
class Runner implements Serializable{
    boolean TopUp = true
    boolean AllReport = false
    boolean ExportToReportExcel = false
    boolean All = false
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
node ('atlas_C') {
    // env.WORKSPACE='/Users/copy_osx/AtlasBuffet'
     env.WORKSPACE='D:\\AtlasBuffet'
    env.outputPath='D:\\Output\\iOS\\Test'
    stage ('MyAIS_Topup_Test_Parallel'){
        run_top_up(runner)
    }
    stage ('MyAIS_AllReport'){
        if(runner.AllReport){
            // build job: '(Y998)_MyAIS_AllReport', propagate: false
        }
        else {echo 'not run'}
    }
    stage ('MyAIS_ExportToReportExcel'){
        if(runner.ExportToReportExcel){
            // build job: '(Y999)_MyAIS_ExportToReportExcel', propagate: false
        }
        else {echo 'not run'}
    }
}

def getTime(){
    time = new Date().format("yyyy-MM-dd HH:mm:ss",TimeZone.getTimeZone("ICT"))
    return time
}

def run_top_up(runner){
    if(runner.TopUp || runner.All){
            dir(env.WORKSPACE) {
                //Check out
                // checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
                //RUN
                // bat "if exist " + env.outputPath + "\\Topup\\ (del /q " + env.outputPath + "\\Topup\\*)"
                // def START_TIME_EN = getTime()
                // echo START_TIME_EN
                // bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:iOS -v ar_TAKE_TIMEOUT:7200 -v ar_Tag:' + runner.get_tag() + ' -i topup --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\MyAISExecutor.txt'
                // def END_TIME_EN = getTime()
                // echo END_TIME_EN
                // bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Topup\\output*_EN_3PE.xml'
                // bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Topup\\output*_EN_3BE.xml'
                // bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Topup\\output_3PE_EN.xml '+ env.outputPath +'\\Topup\\output_3BE_EN.xml'
                // def START_TIME_TH = getTime()
                // echo START_TIME_TH
                // bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:7200 -v ar_Tag:' + runner.get_tag() + ' -i topup --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\MyAISExecutor.txt'
                // def END_TIME_TH = getTime()
                // echo END_TIME_TH
                // bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Topup\\output*_TH_3PE.xml'
                // bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Topup\\output*_TH_3BE.xml'
                // bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Topup\\output_3PE_TH.xml '+ env.outputPath +'\\Topup\\output_3BE_TH.xml'
                // bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Topup -o output.xml -N Topup ' + env.outputPath +'\\Topup\\outputEN.xml '+ env.outputPath +'\\Topup\\outputTH.xml'
                // //Publish report
                // build job: '(Y31)_MyAIS_Topup_Test', propagate: false
            }
        }
    else {echo 'not run'}
}