@groovy.transform.TupleConstructor
class Runner implements Serializable{
	boolean AISeStatement = false
	boolean RegisterAISFibreAndCoverageChecking = false
	boolean RequestAndChangeWifiPassword = false
	boolean FAQ_YourBalanceAndStatement = false
	boolean FAQ_InternationalRoaming = false
	boolean MyAccount = false
	boolean FAQ_InternetAndAISFibre = false
	boolean ConsultAgent = false
	boolean HowToUse = false
	boolean FAQ_SpecialCampaignAndPrivileges = false
	boolean DomesticPackage_YourCurrentPackage = false
	boolean PointsAndPrivileges = false
	boolean RoamingPackage_ApplyRoamingPackage = false
	boolean DomesticPackage_ChangePricePlan = false
	boolean RoamingPackage_CurrentPackageAndRemaining = false
	boolean RoamingPackage_RoamingServiceRates = false
	boolean DomesticPackage_ApplyOtherOnTopPackage = false
	boolean DomesticsPackage_CancelOnTopPackage = false
	boolean DomesticPackage_ApplyInternetOntopPackage = false
	boolean Home = false
	boolean CallingMelody = false
	boolean FAQ_SMSCancellationOrInquiries = false
	boolean FAQ_MainPackageAndOnTopPackage = false
	boolean Balance_Transfer = false
	boolean Validity_Transfer = false
	boolean TopUp = false
	boolean TouchID = false
	boolean Quickmenu_Search_Prepaid = false
	boolean Quickmenu_VerifyButton = false
	boolean Quickmenu_VerifyMenu = false
	boolean Quickmenu_Search_Postpaid = false
	boolean TopUpAndPayment = false
	boolean PaymentTopUp = false
	boolean CopyLogFromExecutorA = true
	boolean CopyLogFromExecutorB = true
    boolean AllReport = false
    boolean AllReportMultiExecutors = true
    boolean ExportToReportExcel = false
    boolean ExportToReportExcelMultiExecutors = true
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

				stage ('MyAIS_RequestAndChangeWifiPassword_Production_Sequential')
				{
					run_MyAIS_RequestAndChangeWifiPassword_Production(runner)
				}
				
				stage ('MyAIS_AISeStatement_Production_Parallel')
				{
					run_MyAIS_AISeStatement_Production(runner)
				}

				stage ('MyAIS_RegisterAISFibreAndCoverageChecking_Production_Sequential')
				{
					run_MyAIS_RegisterAISFibreAndCoverageChecking_Production(runner)
				}

				stage ('MyAIS_FAQ_YourBalanceAndStatement_Production_Sequential')
				{
					run_MyAIS_FAQ_YourBalanceAndStatement_Production(runner)
				}

				stage ('MyAIS_FAQ_InternationalRoaming_Production_Parallel')
				{
					run_MyAIS_FAQ_InternationalRoaming_Production(runner)
				}

				stage ('MyAIS_FAQ_SMSCancellationOrInquiries_Production_Parallel')
				{
					run_MyAIS_FAQ_SMSCancellationOrInquiries_Production(runner)
				}

				stage ('MyAIS_FAQ_MainPackageAndOnTopPackage_Production_Parallel')
				{
					run_MyAIS_FAQ_MainPackageAndOnTopPackage_Production(runner)
				}

				stage ('MyAIS_FAQ_InternetAndAISFibre_Production_Sequential')
				{
					run_MyAIS_FAQ_InternetAndAISFibre_Production(runner)
				}

				stage ('MyAIS_ConsultAgent_Production_Sequential')
				{
					run_MyAIS_ConsultAgent_Production(runner)
				}

				stage ('MyAIS_HowToUse_Production_Sequential')
				{
					run_MyAIS_HowToUse_Production(runner)
				}

				stage ('MyAIS_Home_Prod_Sequential')
				{
					run_Home_Production(runner)
				}

				stage('MyAIS_CallingMelody_Prod_Parallel'){
					run_Calling_Production(runner)
				}

				stage ('MyAIS_Quickmenu_Search_Prepaid_Prod_Parallel'){
				    run_Quickmenu_Search_Prepaid(runner)
			    }
				
				stage('MyAIS_TopUpAndPayment_Prod_Parallel'){
					run_MyAIS_TopUpAndPayment_Production(runner)
				}


				// ================ Copy File ======================
		
				stage ('MyAIS_CopyLogFromExectorA_ToCopyMachine'){
					run_copy_log_from_executorA(runner)
				}


				// ++++++   Inactive to run regression by P'Pam+
				// stage ('MyAIS_MyAccount_Production_Sequential')
				// {
				// 	run_MyAIS_MyAccount_Production(runner)
				// }
				
			}
		}
	}, 
	secondBranch: {
		node ('atlas_C') {
			env.WORKSPACE='D:\\AtlasBuffet'
			env.outputPath='D:\\Output\\Prod'
			dir (env.WORKSPACE){

				stage ('MyAIS_FAQ_SpecialCampaignAndPrivileges_Prod_Parallel'){
					run_FAQ_SpecialCampaignAndPrivileges(runner)
				}

				stage ('MyAIS_PointsAndPrivileges_Prod_Parallel'){
					run_PointsAndPrivileges(runner)
				}

				stage ('MyAIS_DomesticPackage_ChangePricePlan_Prod_Parallel'){
					run_DomesticPackage_ChangePricePlan(runner)
				}

				stage ('MyAIS_RoamingPackage_RoamingServiceRates_Prod_Parallel'){
					run_RoamingPackage_RoamingServiceRates(runner)
				}

				stage ('MyAIS_DomesticPackage_ApplyOtherOnTopPackage_Prod_Sequential'){
					run_DomesticPackage_ApplyOtherOnTopPackage(runner)
				}

				stage ('MyAIS_Balance_Transfer_Prod_Parallel'){
					run_Balance_Transfer(runner)
				}

				stage ('MyAIS_Validity_Transfer_Prod_Parallel'){
					run_Validity_Transfer(runner)
				}


				stage ('MyAIS_Quickmenu_Search_Postpaid_Prod_Parallel'){
				    run_Quickmenu_Search_Postpaid(runner)
			    }


				stage ('MyAIS_Quickmenu_VerifyButton_Prod_Parallel'){
					run_MyAIS_Quickmenu_VerifyButton_Production(runner)
				}

				stage ('MyAIS_Quickmenu_VerifyMenu_Prod_Parallel'){
					run_MyAIS_Quickmenu_VerifyMenu_Production(runner)
				}


				stage ('MyAIS_TouchID_Prod_Parallel'){
					run_TouchID(runner)
				}
						
						
				stage('MyAIS_PaymentTopUp_Prod_Parallel'){
					run_MyAIS_PaymentTopUp_Production(runner)
				}

				// ================ Copy File ======================

				stage ('MyAIS_CopyLogFromExectorB_ToCopyMachine'){
					run_copy_log_from_executorB(runner)
				}
				
				// ++++++   Inactive to run regression by P'Pam+
				// stage ('MyAIS_RoamingPackage_ApplyRoamingPackage_Prod_Sequential'){
				// 	run_RoamingPackage_ApplyRoamingPackage(runner)
				// }

				// ++++++   Inactive to run regression by P'Pam+
				// stage ('MyAIS_DomesticPackage_ApplyInternetOntopPackage_Prod_Parallel'){
				// 	run_DomesticPackage_ApplyInternetOntopPackage(runner)
				// }

				// ++++++   Inactive to run regression by P'Pam+
				// stage ('MyAIS_RoamingPackage_CurrentPackageAndRemaining_Prod_Parallel'){
				// 	run_RoamingPackage_CurrentPackageAndRemaining(runner)
				// }

				// ++++++   Inactive to run regression because have more change on Topup and need to revise test script.
				//stage ('MyAIS_TopUp_Prod_Parallel'){
				//	run_TopUp(runner)	
				//}

			}
		}
	}, 
	failFast: false

node ('atlas_WinOS_New') 
{
	env.WORKSPACE='D:\\AtlasBuffet'
	env.outputPath='D:\\Output\\Prod'
	dir (env.WORKSPACE){

		stage ('MyAIS_AllReport_MultiExecutors')
		{
			run_AllReport_MultiExecutors(runner)
		}

		stage ('MyAIS_Export_To_Excel_MultiExecutors')
		{
			run_export_to_report_excel_multiExecutors(runner)
		}

		//stage ('MyAIS_AllReport'){
		//	run_all_report(runner)
		//}

		//stage ('MyAIS_ExportToReportExcel'){
		//	run_export_to_report_excel(runner)
		//}
	}
}

def getTime(){
	time = new Date().format("yyyy-MM-dd HH:mm:ss",TimeZone.getTimeZone("ICT"))
	return time
}

def script_pybot_myais(ar_LANG, ar_BROWSER, ar_NETWORK, ar_TAKE_TIMEOUT, ar_Tag, tag, WORKSPACE, OS='Windows7'){
	if(OS=='Windows7'){
		return 'pybot -v ar_LANG:'+ ar_LANG +' -v ar_NETWORK:'+ ar_NETWORK + ' -v ar_BROWSER:'+ ar_BROWSER +' -v ar_TAKE_TIMEOUT:'+ ar_TAKE_TIMEOUT +' -v ar_Tag:'+ ar_Tag +' -i '+ tag +' --nostatusrc "'+ WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor"'
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

def run_MyAIS_AISeStatement_Production(runner){
	if(runner.AISeStatement || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\AISeStatement\\ (del /q " + env.outputPath + "\\AISeStatement\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i ais_estatement --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\AISeStatement\\output_3PO_EN.xml '+ env.outputPath +'\\AISeStatement\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i ais_estatement --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\AISeStatement\\output_3PO_TH.xml '+ env.outputPath +'\\AISeStatement\\output_3BO_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\AISeStatement -o output.xml -N AISeStatement ' + env.outputPath +'\\AISeStatement\\outputEN.xml '+ env.outputPath +'\\AISeStatement\\outputTH.xml'
			//Publish report
			build job: '(X12)_MyAIS_AISeStatement_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_RequestAndChangeWifiPassword_Production(runner){
	if(runner.RequestAndChangeWifiPassword || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RequestAndChangeWifiPassword\\ (del /q " + env.outputPath + "\\RequestAndChangeWifiPassword\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i request_and_change_wifi_password --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BE_EN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PE_EN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PO_EN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i request_and_change_wifi_password --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BE_TH.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PE_TH.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PO_TH.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BO_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output.xml -N RequestAndChangeWifiPassword ' + env.outputPath +'\\RequestAndChangeWifiPassword\\outputEN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\outputTH.xml'
			//Publish report
			build job: '(X07)_MyAIS_RequestAndChangeWifiPassword_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_RegisterAISFibreAndCoverageChecking_Production(runner){
	if(runner.RegisterAISFibreAndCoverageChecking || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RegisterAISFibreAndCoverageChecking\\ (del /q " + env.outputPath + "\\RegisterAISFibreAndCoverageChecking\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i register_AIS_fibre_and_coverage_checking --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BE_EN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PE_EN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PO_EN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i register_AIS_fibre_and_coverage_checking --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BE_TH.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PE_TH.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PO_TH.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BO_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output.xml -N RegisterAISFibreAndCoverageChecking ' + env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\outputEN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\outputTH.xml'
			//Publish report
			build job: '(X08)_MyAIS_RegisterAISFibreAndCoverageChecking_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_MyAccount_Production(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\MyAccount\\ (del /q " + env.outputPath + "\\MyAccount\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i my_account --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\MyAccount\\output_3BE_EN.xml '+ env.outputPath +'\\MyAccount\\output_3PE_EN.xml '+ env.outputPath +'\\MyAccount\\output_3PO_EN.xml '+ env.outputPath +'\\MyAccount\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i my_account --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\MyAccount\\output_3BE_TH.xml '+ env.outputPath +'\\MyAccount\\output_3PE_TH.xml '+ env.outputPath +'\\MyAccount\\output_3PO_TH.xml '+ env.outputPath +'\\MyAccount\\output_3BO_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\MyAccount -o output.xml -N MyAccount ' + env.outputPath +'\\MyAccount\\outputEN.xml '+ env.outputPath +'\\MyAccount\\outputTH.xml'
			//Publish report
			build job: '(X10)_MyAIS_MyAccount_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_FAQ_YourBalanceAndStatement_Production(runner){
	if(runner.FAQ_YourBalanceAndStatement || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\FAQ_YourBalanceAndStatement\\ (del /q " + outputPath + "\\FAQ_YourBalanceAndStatement\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_yourbalanceandstatement --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_yourbalanceandstatement --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output.xml -N FAQ_YourBalanceAndStatement ' + env.outputPath +'\\FAQ_YourBalanceAndStatement\\outputEN.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\outputTH.xml'
			//Publish report
			build job: '(X17)_MyAIS_FAQ_YourBalanceAndStatement_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_FAQ_InternationalRoaming_Production(runner){
	if(runner.FAQ_InternationalRoaming || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\FAQ_InternationalRoaming\\ (del /q " + outputPath + "\\FAQ_InternationalRoaming\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internationalroaming --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internationalroaming --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output.xml -N FAQ_InternationalRoaming ' + env.outputPath +'\\FAQ_InternationalRoaming\\outputEN.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\outputTH.xml'
			//Publish report
			build job: '(X18)_MyAIS_FAQ_InternationalRoaming_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_FAQ_SMSCancellationOrInquiries_Production(runner){
	if(runner.FAQ_SMSCancellationOrInquiries || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\FAQ_SMSCancellationOrInquiries\\ (del /q " + outputPath + "\\FAQ_SMSCancellationOrInquiries\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:6000 -v ar_Tag:' + runner.get_tag() + ' -i faq_sms_cancellation_or_inquiries --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:6000 -v ar_Tag:' + runner.get_tag() + ' -i faq_sms_cancellation_or_inquiries --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries -o output.xml -N FAQ_SMSCancellationOrInquiries ' + env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\outputEN.xml '+ env.outputPath +'\\FAQ_SMSCancellationOrInquiries\\outputTH.xml'
			//Publish report
			build job: '(X34)_MyAIS_FAQ_SMSCancellationOrInquiries_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_FAQ_MainPackageAndOnTopPackage_Production(runner){
	if(runner.FAQ_MainPackageAndOnTopPackage || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\FAQ_MainPackageAndOnTopPackage\\ (del /q " + outputPath + "\\FAQ_MainPackageAndOnTopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_main_and_ontoppackage --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_main_and_ontoppackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output.xml -N FAQ_MainPackageAndOnTopPackage ' + env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\outputEN.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\outputTH.xml'
			//Publish report
			build job: '(X01)_MyAIS_FAQ_MainPackageAndOnTopPackage_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_FAQ_InternetAndAISFibre_Production(runner){
	if(runner.FAQ_InternetAndAISFibre || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\FAQ_InternetAndAISFibre\\ (del /q " + outputPath + "\\FAQ_InternetAndAISFibre\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internet_and_ais_fibre --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
		   	def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internet_and_ais_fibre --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output.xml -N FAQ_InternetAndAISFibre ' + env.outputPath +'\\FAQ_InternetAndAISFibre\\outputEN.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\outputTH.xml'
			//Publish report
			build job: '(X19)_MyAIS_FAQ_InternetAndAISFibre_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_ConsultAgent_Production(runner){
	if(runner.ConsultAgent || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\ConsultAgent\\ (del /q " + outputPath + "\\ConsultAgent\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i consult_agent --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\ConsultAgent\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i consult_agent --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\ConsultAgent\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\ConsultAgent\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\ConsultAgent -o output.xml -N ConsultAgent ' + env.outputPath +'\\ConsultAgent\\outputEN.xml '+ env.outputPath +'\\ConsultAgent\\outputTH.xml'
			//Publish report
			build job: '(X06)_MyAIS_ConsultAgent_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_HowToUse_Production(runner){
	if(runner.HowToUse || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\HowToUse\\ (del /q " + outputPath + "\\HowToUse\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i how_to_use --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\HowToUse\\*EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\HowToUse\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\HowToUse\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\HowToUse\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\HowToUse\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i how_to_use --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html -R -N 3BO --nostatusrc '+ env.outputPath +'\\HowToUse\\*TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\HowToUse\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\HowToUse\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\HowToUse\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\HowToUse\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\HowToUse -o output.xml -N HowToUse ' + env.outputPath +'\\HowToUse\\outputEN.xml '+ env.outputPath +'\\HowToUse\\outputTH.xml'
			//Publish report
			build job: '(X20)_MyAIS_HowToUse_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Home_Production(runner){
	if(runner.Home || runner.All){
		dir(env.WORKSPACE){
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
	 		bat "if exist " + outputPath + "\\Home\\ (del /q " + outputPath + "\\Home\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + workspace + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ outputPath +'\\Home\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ outputPath +'\\Home\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\Home -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ outputPath +'\\Home\\output_3PE_EN.xml '+ outputPath +'\\Home\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc '+ workspace + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ outputPath +'\\Home\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\Home -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ outputPath +'\\Home\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\Home -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ outputPath +'\\Home\\output_3PE_TH.xml '+ outputPath +'\\Home\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ outputPath +'\\Home -o output.xml -N Home ' + outputPath +'\\Home\\outputEN.xml '+ outputPath +'\\Home\\outputTH.xml'
			//Publish report
			build job: '(X31)_MyAIS_Home_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Calling_Production(runner){
	if(runner.CallingMelody || runner.All){
		dir(workspace){
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
	 		bat "if exist " + outputPath + "\\CallingMelody\\ (del /q " + outputPath + "\\CallingMelody\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i calling_melody --nostatusrc ' + workspace + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ outputPath +'\\CallingMelody -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ outputPath +'\\CallingMelody\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\CallingMelody -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ outputPath +'\\CallingMelody\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\CallingMelody -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ outputPath +'\\CallingMelody\\output_3PE_EN.xml '+ outputPath +'\\CallingMelody\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i calling_melody --nostatusrc '+ workspace + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ outputPath +'\\CallingMelody -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ outputPath +'\\CallingMelody\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\CallingMelody -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ outputPath +'\\CallingMelody\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ outputPath +'\\CallingMelody -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ outputPath +'\\CallingMelody\\output_3PE_TH.xml '+ outputPath +'\\CallingMelody\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ outputPath +'\\CallingMelody -o output.xml -N CallingMelody ' + outputPath +'\\CallingMelody\\outputEN.xml '+ outputPath +'\\CallingMelody\\outputTH.xml'
			//Publish report
			build job: '(X32)_MyAIS_CallingMelody_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ_SpecialCampaignAndPrivileges(runner){
	if(runner.FAQ_SpecialCampaignAndPrivileges || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\FAQ_SpecialCampaignAndPrivileges\\ (del /q " + env.outputPath + "\\FAQ_SpecialCampaignAndPrivileges\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_special_campaign_and_privileges --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PO_EN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_special_campaign_and_privileges --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PO_TH.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BO_TH.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output.xml -N FAQ_SpecialCampaignAndPrivileges ' + env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\outputEN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\outputTH.xml'
			//Publish report
			build job: '(X21)_MyAIS_FAQ_SpecialCampaignAndPrivileges_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_PointsAndPrivileges(runner){
	env.WORKSPACE='D:\\AtlasBuffet'
	env.outputPath='D:\\Output\\Prod'
	if(runner.PointsAndPrivileges || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\PointsAndPrivileges\\ (del /q " + env.outputPath + "\\PointsAndPrivileges\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:8000 -v ar_Tag:' + runner.get_tag() + ' -i points_and_privileges --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\PointsAndPrivileges\\output_*_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:8000 -v ar_Tag:' + runner.get_tag() + ' -i points_and_privileges --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BE_TH.xml -l log3BE_TH.html -r report3PO_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\PointsAndPrivileges\\output_*_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output.xml -N PointsAndPrivileges ' + env.outputPath +'\\PointsAndPrivileges\\outputEN.xml '+ env.outputPath +'\\PointsAndPrivileges\\outputTH.xml'
			//Publish report
			build job: '(X23)_MyAIS_PointsAndPrivileges_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_RoamingPackage_ApplyRoamingPackage(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RoamingPackage_ApplyRoamingPackage\\ (del /q " + env.outputPath + "\\RoamingPackage_ApplyRoamingPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package_apply_roaming_package --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BO_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PE_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package_apply_roaming_package --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BO_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PE_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output.xml -N RoamingPackage_ApplyRoamingPackage ' + env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\outputEN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\outputTH.xml'
			//Publish report
			build job: '(X25)_MyAIS_RoamingPackage_ApplyRoamingPackage_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_DomesticPackage_ChangePricePlan(runner){
	if(runner.DomesticPackage_ChangePricePlan || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_ChangePricePlan\\ (del /q " + env.outputPath + "\\DomesticPackage_ChangePricePlan\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_changepriceplan --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BO_EN.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BE_EN.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_changepriceplan --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PO_TH.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BO_TH.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BE_TH.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output.xml -N DomesticPackage_ChangePricePlan ' + env.outputPath +'\\DomesticPackage_ChangePricePlan\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\outputTH.xml'
			//Publish report
			build job: '(X24)_MyAIS_DomesticPackage_ChangePricePlan_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_DomesticPackage_ApplyInternetOntopPackage(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_ApplyInternetOntopPackage\\ (del /q " + env.outputPath + "\\DomesticPackage_ApplyInternetOntopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_apply_internet_ontop_package --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PE_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_apply_internet_ontop_package --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output.xml -N DomesticPackage_ApplyInternetOntopPackage ' + env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\outputTH.xml'
			//Publish report
			build job: '(X30)_MyAIS_DomesticPackage_ApplyInternetOntopPackage_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_RoamingPackage_CurrentPackageAndRemaining(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RoamingPackage_CurrentPackageAndRemaining\\ (del /q " + env.outputPath + "\\RoamingPackage_CurrentPackageAndRemaining\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package_current_package --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BO_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BE_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package_current_package --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BO_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PE_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output.xml -N RoamingPackage_CurrentPackageAndRemaining ' + env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\outputEN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\outputTH.xml'
			//Publish report
			build job: '(X26)_MyAIS_RoamingPackage_CurrentPackageAndRemaining_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_RoamingPackage_RoamingServiceRates(runner){
	if(runner.RoamingPackage_RoamingServiceRates || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RoamingPackage_RoamingServiceRates\\ (del /q " + env.outputPath + "\\RoamingPackage_RoamingServiceRates\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package_roaming_service_rates --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BO_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BE_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package_roaming_service_rates --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BO_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BE_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output.xml -N RoamingPackage_RoamingServiceRates ' + env.outputPath +'\\RoamingPackage_RoamingServiceRates\\outputEN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\outputTH.xml'
			//Publish report
			build job: '(X27)_MyAIS_RoamingPackage_RoamingServiceRates_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_DomesticPackage_ApplyOtherOnTopPackage(runner){
	if(runner.DomesticPackage_ApplyOtherOnTopPackage || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_ApplyOtherOnTopPackage\\ (del /q " + env.outputPath + "\\DomesticPackage_ApplyOtherOnTopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_applyotherontoppackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PE_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_applyotherontoppackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output.xml -N DomesticPackage_ApplyOtherOnTopPackage ' + env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\outputTH.xml'
			//Publish report
			build job: '(X28)_MyAIS_DomesticPackage_ApplyOtherOnTopPackage_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Balance_Transfer(runner){
	if(runner.Balance_Transfer || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\BalanceTransfer\\ (del /q " + env.outputPath + "\\BalanceTransfer\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i balance_transfer --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\BalanceTransfer\\output_3BE_EN.xml '+ env.outputPath +'\\BalanceTransfer\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i balance_transfer --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\BalanceTransfer\\output_3BE_TH.xml '+ env.outputPath +'\\BalanceTransfer\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\BalanceTransfer -o output.xml -N BalanceTransfer ' + env.outputPath +'\\BalanceTransfer\\outputEN.xml '+ env.outputPath +'\\BalanceTransfer\\outputTH.xml'
			//Publish report
			build job: '(X33)_MyAIS_BalanceTransfer_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Validity_Transfer(runner){
	if(runner.Validity_Transfer || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\ValidityTransfer\\ (del /q " + env.outputPath + "\\ValidityTransfer\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i validity_transfer --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\ValidityTransfer\\output_3BE_EN.xml '+ env.outputPath +'\\ValidityTransfer\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i validity_transfer --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\ValidityTransfer\\output_3BE_TH.xml '+ env.outputPath +'\\ValidityTransfer\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\ValidityTransfer -o output.xml -N ValidityTransfer ' + env.outputPath +'\\ValidityTransfer\\outputEN.xml '+ env.outputPath +'\\ValidityTransfer\\outputTH.xml'
			//Publish report
			build job: '(X35)_MyAIS_ValidityTransfer_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_TouchID(runner){
	if(runner.TouchID || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\TouchID\\ (del /q " + env.outputPath + "\\TouchID\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i touchid --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\TouchID\\output_3BE_EN.xml '+ env.outputPath +'\\TouchID\\output_3PE_EN.xml '+ env.outputPath +'\\TouchID\\output_3PO_EN.xml '+ env.outputPath +'\\TouchID\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i touchid --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PO_TH.xml -l log3PO_TH.html -r report3PE_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BO_TH.xml -l log3BO_TH.html -r report3BE_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\TouchID\\output_3BE_TH.xml '+ env.outputPath +'\\TouchID\\output_3PE_TH.xml '+ env.outputPath +'\\TouchID\\output_3PO_TH.xml '+ env.outputPath +'\\TouchID\\output_3BO_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\TouchID -o output.xml -N TouchID ' + env.outputPath +'\\TouchID\\outputEN.xml '+ env.outputPath +'\\TouchID\\outputTH.xml'
			//Publish report
			build job: '(X37)_MyAIS_TouchID_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_Quickmenu_VerifyButton_Production(runner){
	if(runner.Quickmenu_VerifyButton || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Quickmenu_VerifyButton\\ (del /q " + env.outputPath + "\\Quickmenu_VerifyButton\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifyButton --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyButton\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyButton\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Quickmenu_VerifyButton\\output_3BE_EN.xml '+ env.outputPath +'\\Quickmenu_VerifyButton\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifyButton --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyButton\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyButton\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Quickmenu_VerifyButton\\output_3BE_TH.xml '+ env.outputPath +'\\Quickmenu_VerifyButton\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_VerifyButton -o output.xml -N Quickmenu_VerifyButton ' + env.outputPath +'\\Quickmenu_VerifyButton\\outputEN.xml '+ env.outputPath +'\\Quickmenu_VerifyButton\\outputTH.xml'
			//Publish report
			build job: '(X39)_MyAIS_Quickmenu_VerifyButton_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_Quickmenu_VerifyMenu_Production(runner){
	if(runner.Quickmenu_VerifyMenu || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Quickmenu_VerifyMenu\\ (del /q " + env.outputPath + "\\Quickmenu_VerifyMenu\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifymenu --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output_3BE_EN.xml '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifymenu --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output_3BE_TH.xml '+ env.outputPath +'\\Quickmenu_VerifyMenu\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_VerifyMenu -o output.xml -N Quickmenu_VerifyMenu ' + env.outputPath +'\\Quickmenu_VerifyMenu\\outputEN.xml '+ env.outputPath +'\\Quickmenu_VerifyMenu\\outputTH.xml'
			//Publish report
			build job: '(X40)_MyAIS_Quickmenu_VerifyMenu_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Quickmenu_Search_Prepaid(runner){
	if(runner.Quickmenu_Search_Prepaid || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Quickmenu_Search_Prepaid\\ (del /q " + env.outputPath + "\\Quickmenu_Search_Prepaid\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_search_prepaid --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output_3BE_EN.xml '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_search_prepaid --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output_3BE_TH.xml '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Prepaid -o output.xml -N Quickmenu_Search_Prepaid ' + env.outputPath +'\\Quickmenu_Search_Prepaid\\outputEN.xml '+ env.outputPath +'\\Quickmenu_Search_Prepaid\\outputTH.xml'
			//Publish report
			build job: '(X38)_MyAIS_Quickmenu_Search_Prepaid_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}


def run_Quickmenu_Search_Postpaid(runner){
	if(runner.Quickmenu_Search_Postpaid || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Quickmenu_Search_Postpaid\\ (del /q " + env.outputPath + "\\Quickmenu_Search_Postpaid\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_search_postpaid --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output*_EN_3BO.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output*_EN_3PO.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output_3BO_EN.xml '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output_3PO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_search_postpaid --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output*_TH_3PO.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output*_TH_3BO.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output_3BO_TH.xml '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\output_3PO_TH.xml '
			
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Quickmenu_Search_Postpaid -o output.xml -N Quickmenu_Search_Postpaid ' + env.outputPath +'\\Quickmenu_Search_Postpaid\\outputTH.xml '+ env.outputPath +'\\Quickmenu_Search_Postpaid\\outputEN.xml '
			//Publish report
			build job: '(X41)_MyAIS_Quickmenu_Search_Postpaid_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_TopUpAndPayment_Production(runner){
	if(runner.TopUpAndPayment || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\TopUpAndPayment\\ (del /q " + outputPath + "\\TopUpAndPayment\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i topupandpayment --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\*EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\*EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\TopUpAndPayment\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i topupandpayment --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html -R -N 3BE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\*TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html -R -N 3PE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\*TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\TopUpAndPayment\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output.xml -N TopUpAndPayment ' + env.outputPath +'\\TopUpAndPayment\\outputEN.xml '+ env.outputPath +'\\TopUpAndPayment\\outputTH.xml'
			//Publish report
			build job: '(X42)_MyAIS_TopUpAndPayment_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_MyAIS_PaymentTopUp_Production(runner){
	if(runner.PaymentTopUp || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\PaymentTopUp\\ (del /q " + outputPath + "\\PaymentTopUp\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i paymenttopup --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt"'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentTopUp -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\PaymentTopUp\\*EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentTopUp -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\PaymentTopUp\\output_*_EN.xml '
			//------------------------------------------------------------------------------------------------------
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:16000 -v ar_Tag:' + runner.get_tag() + ' -i paymenttopup --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			//Rebot EN
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentTopUp -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html -R -N 3PO --nostatusrc '+ env.outputPath +'\\PaymentTopUp\\*TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentTopUp -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\PaymentTopUp\\output_*_TH.xml '
			//------------------------------------------------------------------------------------------------------
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\PaymentTopUp -o output.xml -N PaymentTopUp ' + env.outputPath +'\\PaymentTopUp\\outputEN.xml '+ env.outputPath +'\\PaymentTopUp\\outputTH.xml'
			//Publish report
			build job: '(X43)_MyAIS_PaymentTopUp_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

/* // Inactive
def run_DomesticsPackage_CancelOnTopPackage(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticsPackage_CancelOnTopPackage\\ (del /q " + env.outputPath + "\\DomesticsPackage_CancelOnTopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticspackage_cancelontoppackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticspackage_cancelontoppackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_TH_3PO.xml'
			//bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3PO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output.xml -N DomesticsPackage_CancelOnTopPackage ' + env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\outputEN.xml '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\outputTH.xml'
			//Publish report
			build job: '(X29)_MyAIS_DomesticsPackage_CancelOnTopPackage_Prod', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_DomesticPackage_YourCurrentPackage_PO(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_YourCurrentPackage\\ (del /q " + env.outputPath + "\\DomesticPackage_YourCurrentPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_NODE:atlas_Teemo -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domestic_yourcurrentpackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3PO.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_NODE:atlas_Teemo -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domestic_yourcurrentpackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3BO.xml'
		}
	}
	else {echo 'not run'}
}

def run_DomesticPackage_YourCurrentPackage_PE(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_YourCurrentPackage\\ (del /q " + env.outputPath + "\\DomesticPackage_YourCurrentPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_NODE:atlas_WinOS_New -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domestic_yourcurrentpackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3PE.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_NODE:atlas_WinOS_New -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domestic_yourcurrentpackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3BE.xml'
		}
	}
	else {echo 'not run'}
}

def run_TopUp(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\TopUp\\ (del /q " + env.outputPath + "\\TopUp\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i topup --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUp -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TopUp\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUp -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TopUp\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUp -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\TopUp\\output_3BE_EN.xml '+ env.outputPath +'\\TopUp\\output_3PE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i topup --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUp -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TopUp\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUp -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TopUp\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUp -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\TopUp\\output_3BE_TH.xml '+ env.outputPath +'\\TopUp\\output_3PE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\TopUp -o output.xml -N TopUp ' + env.outputPath +'\\TopUp\\outputEN.xml '+ env.outputPath +'\\TopUp\\outputTH.xml'
			//Publish report
			build job: '(X36)_MyAIS_TopUp_Prod_ChangeDesign', propagate: false
		}
	}
	else {echo 'not run'}
}




*/
def run_copy_log_from_executorB(runner){
	if(runner.CopyLogFromExecutorB){
		build job: '(X996)_MyAIS_CopyLogFromExectorB_ToCopyMachine', propagate: false
	}
	else {echo 'not run'}
}

def run_copy_log_from_executorA(runner){
	if(runner.CopyLogFromExecutorA){
		build job: '(X997)_MyAIS_CopyLogFromExectorA_ToCopyMachine', propagate: false
	}
	else {echo 'not run'}
}

def run_AllReport_MultiExecutors(runner){
	if(runner.AllReportMultiExecutors && !runner.IsSmoke && !runner.IsSanity){
		build job: '(X998)_MyAIS_AllReport_MultiExecutors', propagate: false
	}
	else {echo 'not run'}
}

def run_all_report(runner){
	if(runner.AllReport && !runner.IsSmoke && !runner.IsSanity){
		build job: '(X998)_MyAIS_AllReport', propagate: false
	}
	else {echo 'not run'}
}

def run_export_to_report_excel(runner){
	if(runner.ExportToReportExcel&& !runner.IsSmoke && !runner.IsSanity) {
		build job: '(X999)_MyAIS_ExportToReportExcel', propagate: false
	}
	else {echo 'not run'}
}

def run_export_to_report_excel_multiExecutors(runner){
	if(runner.ExportToReportExcelMultiExecutors && !runner.IsSmoke && !runner.IsSanity) {
		build job: '(X999)_MyAIS_ExportToReportExcel_MultiExecutors', propagate: false
	}
	else {echo 'not run'}
}
