@groovy.transform.TupleConstructor
class Runner implements Serializable{
	boolean TopUp = false
	boolean BillAISPostpaid = false
	boolean FAQ = false
	boolean HowToUse = false
	boolean iSWOP = false
	boolean ConsultAgent = false
	boolean RequestAndChangeWifiPassword = false
	boolean RegisterAISFibreAndCoverageChecking = false
	boolean DomesticPackage = false
	boolean DomesticPackage_YourCurrentPackage = false
	boolean DomesticPackage_ChangePricePlan = false
	boolean DomesticsPackage_CancelOnTopPackage = false
	boolean MyAccount = false
	boolean RoamingPackage = false
	boolean AISeStatement = false
	boolean BalanceAndUsageDetail = false
	boolean CallingMelody = false
	boolean BalanceTransfer = false
	boolean ValidityTransfer = false
	boolean FAQ_YourBalanceAndStatement = false
	boolean FAQ_InternationalRoaming = false
	boolean FAQ_InternetAndAISFibre = false
	boolean FAQ_MainPackageAndOnTopPackage = false
	boolean FAQ_SpecialCampaignAndPrivileges = false
	boolean FAQ_SMSCancellationOrInquiries = false
	boolean RoamingPackage_ApplyRoamingPackage= false
	boolean RoamingPackage_CurrentPackageAndRemaining = false
	boolean DomesticPackage_ApplyInternetOntopPackage = false
	boolean Home = false
	boolean RoamingPackage_RoamingServiceRates = false
	boolean DomesticPackage_ApplyOtherOnTopPackage = false
	boolean TouchID = false
	boolean Payment = false
	boolean PaymentToPostpaidNumber = false
	boolean QuickMenu_Search = false
	boolean QuickMenu_VerifyButton = false
	boolean QuickMenu_VerifyMenu = false
	boolean PointsAndPrivileges = false
	boolean TopUpAndPayment = false
	boolean PaymentAndTopupPostpaid = false
	boolean AllReport = false
	boolean ExportToReportExcel = false
	boolean All = true
	boolean IsSmoke = true
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
node ('atlas_WinOS_New') {
	env.WORKSPACE='D:\\AtlasBuffet'
	env.outputPath='D:\\Output\\Test'
	stage ('MyAIS_Topup_Test_Parallel'){
		run_top_up(runner)
	}
	stage ('MyAIS_BillAISPostpaid_Test_Parallel'){
		run_bill_AIS_postpaid(runner)
	}
	stage ('MyAIS_FAQ_Test_Parallel'){
		run_FAQ(runner)
	}
	stage ('MyAIS_HowToUse_Test_Parallel'){
		run_how_to_use(runner)
	}
	stage ('MyAIS_iSWOP_Test_Sequential'){
		run_iSWOP(runner)
	}
	stage ('MyAIS_ConsultAgent_Test_Sequential'){
		run_consult_agent(runner)
	}
	stage ('MyAIS_RequestAndChangeWifiPassword_Test_Parallel'){
		run_request_and_change_wifi_password(runner)
	}
	stage ('MyAIS_RegisterAISFibreAndCoverageChecking_Test_Parallel'){
		run_register_AIS_fibre_and_coverage_checking(runner)
	}
	stage ('MyAIS_DomesticPackage_Test_Parallel'){
		run_domestic_package(runner)
	}
	stage ('MyAIS_DomesticPackage_YourCurrentPackage_Test'){
		run_domestic_package_your_current_packege(runner)
	}
	stage ('MyAIS_DomesticPackage_ChangePricePlan_Test'){
		run_domestic_package_change_price_plan(runner)
	}
	stage ('MyAIS_DomesticsPackage_CancelOnTopPackage_Test'){
		run_domestic_package_cancel_ontop_package(runner)
	}
	stage ('MyAIS_MyAccount_Test_Parallel'){
		run_myaccount(runner)
	}
	stage ('MyAIS_RoamingPackage_Test_Parallel'){
		run_roaming_package(runner)
	}
	stage ('MyAIS_AISeStatement_Test_Sequential'){
		run_AIS_estatement(runner)
	}
	stage ('MyAIS_BalanceAndUsageDetail_Test_Sequential'){
		run_balance_and_usage_detail(runner)
	}
	stage ('MyAIS_CallingMelody_Test_Parallel'){
		run_calling_melody(runner)
	}
	stage ('MyAIS_ValidityTransfer_Test_Parallel'){
		run_validity_transfer(runner)
	}
	stage ('MyAIS_BalanceTransfer_Test_Sequential'){
		run_Balance_Transfer(runner)
	}
	stage ('MyAIS_FAQ_YourBalanceAndStatement_Test_Parallel'){
		run_FAQ_YourBalanceAndStatement(runner)
	}
	stage ('MyAIS_FAQ_InternationalRoaming_Test_Parallel'){
		run_FAQ_InternationalRoaming(runner)
	}
	stage ('MyAIS_FAQ_InternetAndAISFibre_Test_Parallel'){
		run_FAQ_InternetAndAISFibre(runner)
	}
	stage ('MyAIS_FAQ_MainPackageAndOnTopPackage_Test_Parallel'){
		run_FAQ_MainPackageAndOnTopPackage(runner)
	}
	stage ('MyAIS_FAQ_SpecialCampaignAndPrivileges_Test_Parallel'){
		run_FAQ_SpecialCampaignAndPrivileges(runner)
	}
	stage ('MyAIS_FAQ_SMSCancellationOrInquiries_Test_Parallel'){
		run_FAQ_SMSCancellationOrInquiries(runner)
	}
	stage ('MyAIS_RoamingPackage_ApplyRoamingPackage_Test_Parallel'){
		run_RoamingPackage_ApplyRoamingPackage(runner)
	}
	stage ('MyAIS_RoamingPackage_CurrentPackageAndRemaining_Test_Parallel'){
		run_RoamingPackage_CurrentPackageAndRemaining(runner)
	}
	stage ('MyAIS_DomesticPackage_ApplyInternetOntopPackage_Test_Parallel'){
		run_DomesticPackage_ApplyInternetOntopPackage(runner)
	}
	stage ('MyAIS_Home_Test_Parallel'){
		run_Home(runner)
	}
	stage ('MyAIS_RoamingPackage_RoamingServiceRates_Test_Parallel'){
		run_RoamingPackage_RoamingServiceRates(runner)
	}
	stage ('MyAIS_DomesticPackage_ApplyOtherOnTopPackage_Test_Parallel'){
		run_DomesticPackage_ApplyOtherOnTopPackage(runner)
	}
	stage ('MyAIS_TouchID_Test_Parallel'){
		run_TouchID(runner)
	}
	stage ('MyAIS_Payment_Test_Sequential'){
		run_Payment(runner)
	}
	stage ('MyAIS_PaymentToPostpaidNumber_Test_Sequential'){
		run_PaymentToPostpaidNumber(runner)
	}
	stage ('MyAIS_QuickMenu_VerifyButton_Test_Parallel'){
		run_QuickMenu_VerifyButton(runner)
	}
	stage ('MyAIS_QuickMenu_VerifyMenu_Test_Parallel'){
		run_QuickMenu_VerifyMenu(runner)
	}
	stage ('MyAIS_QuickMenu_Search_Test_Parallel'){
		run_QuickMenu_Search(runner)
	}
	stage ('MyAIS_PointsAndPrivileges_Test_Parallel'){
		run_PointsAndPrivileges(runner)
	}
	stage ('MyAIS_TopUpAndPayment_Test_Parallel'){
		run_TopUpAndPayment(runner)
	}
	stage ('MyAIS_PaymentAndTopupPostpaid_Test_Parallel'){
		run_PaymentAndTopupPostpaid(runner)
	}
	stage ('MyAIS_AllReport'){
		run_all_report(runner)
	}
	stage ('MyAIS_ExportToReportExcel'){
		run_export_to_report_excel(runner)
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
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Topup\\ (del /q " + env.outputPath + "\\Topup\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:7200 -v ar_Tag:' + runner.get_tag() + ' -i topup --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Topup\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Topup\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Topup\\output_3PE_EN.xml '+ env.outputPath +'\\Topup\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:7200 -v ar_Tag:' + runner.get_tag() + ' -i topup --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Topup\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Topup\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Topup -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Topup\\output_3PE_TH.xml '+ env.outputPath +'\\Topup\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Topup -o output.xml -N Topup ' + env.outputPath +'\\Topup\\outputEN.xml '+ env.outputPath +'\\Topup\\outputTH.xml'
			//Publish report
			build job: '(Y31)_MyAIS_Topup_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_bill_AIS_postpaid(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\BillAISPostpaid\\ (del /q " + env.outputPath + "\\BillAISPostpaid\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3800 -v ar_Tag:' + runner.get_tag() + ' -i bill_AIS_postpaid --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\BillAISPostpaid -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\BillAISPostpaid\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BillAISPostpaid -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\BillAISPostpaid\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BillAISPostpaid -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\BillAISPostpaid\\output_3PO_EN.xml '+ env.outputPath +'\\BillAISPostpaid\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3800 -v ar_Tag:' + runner.get_tag() + ' -i bill_AIS_postpaid --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\BillAISPostpaid -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\BillAISPostpaid\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BillAISPostpaid -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\BillAISPostpaid\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BillAISPostpaid -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\BillAISPostpaid\\output_3PO_TH.xml '+ env.outputPath +'\\BillAISPostpaid\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\BillAISPostpaid -o output.xml -N BillAISPostpaid ' + env.outputPath +'\\BillAISPostpaid\\outputEN.xml '+ env.outputPath +'\\BillAISPostpaid\\outputTH.xml'
			//Publish report
			build job: '(Y02)_MyAIS_BillAISPostpaid_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ(runner){
	if(runner.FAQ || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\FAQ\\ (del /q " + env.outputPath + "\\FAQ\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:7300 -v ar_Tag:' + runner.get_tag() + ' -i FAQ --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN +'" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ\\output_3PO_EN.xml '+ env.outputPath +'\\FAQ\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:7300 -v ar_Tag:' + runner.get_tag() + ' -i FAQ --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ\\output_3PO_TH.xml '+ env.outputPath +'\\FAQ\\output_3BO_TH.xml '+ env.outputPath +'\\FAQ\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ -o output.xml -N FAQ ' + env.outputPath +'\\FAQ\\outputEN.xml '+ env.outputPath +'\\FAQ\\outputTH.xml'
			//Publish report
			build job: '(Y03)_MyAIS_FAQ_Test', propagate: false
		}
	}
	else {
		echo 'not run'
	}
}

def run_how_to_use(runner){
	if(runner.HowToUse || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\HowToUse\\ (del /q " + env.outputPath + "\\HowToUse\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:4800 -v ar_Tag:' + runner.get_tag() + ' -i how_to_use --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\HowToUse\\output_3PO_EN.xml '+ env.outputPath +'\\HowToUse\\output_3BO_EN.xml '+ env.outputPath +'\\HowToUse\\output_3PE_EN.xml '+ env.outputPath +'\\HowToUse\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:4800 -v ar_Tag:' + runner.get_tag() + ' -i how_to_use --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\HowToUse\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\HowToUse -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\HowToUse\\output_3PO_TH.xml '+ env.outputPath +'\\HowToUse\\output_3BO_TH.xml '+ env.outputPath +'\\HowToUse\\output_3PE_TH.xml '+ env.outputPath +'\\HowToUse\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\HowToUse -o output.xml -N HowToUse ' + env.outputPath +'\\HowToUse\\outputEN.xml '+ env.outputPath +'\\HowToUse\\outputTH.xml'
			//Publish report
			build job: '(Y04)_MyAIS_HowToUse_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_iSWOP(runner){
	if(runner.iSWOP || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\ISWOP\\ (del /q " + env.outputPath + "\\ISWOP\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:300 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i ISWOP --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\ISWOP -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\ISWOP\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ISWOP -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\ISWOP\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ISWOP -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\ISWOP\\output_3PO_EN.xml '+ env.outputPath +'\\ISWOP\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:300 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i ISWOP --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\ISWOP -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\ISWOP\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ISWOP -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\ISWOP\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ISWOP -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\ISWOP\\output_3PO_TH.xml '+ env.outputPath +'\\ISWOP\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\ISWOP -o output.xml -N iSWOP ' + env.outputPath +'\\ISWOP\\outputEN.xml '+ env.outputPath +'\\ISWOP\\outputTH.xml'
			//Publish report
			build job: '(Y05)_MyAIS_iSWOP_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_consult_agent(runner){
	if(runner.ConsultAgent || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\ConsultAgent\\ (del /q " + env.outputPath + "\\ConsultAgent\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:300 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i consult_agent --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\ConsultAgent\\output_3PO_EN.xml '+ env.outputPath +'\\ConsultAgent\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:300 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i consult_agent --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\ConsultAgent\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ConsultAgent -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\ConsultAgent\\output_3PO_TH.xml '+ env.outputPath +'\\ConsultAgent\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\ConsultAgent -o output.xml -N ConsultAgent ' + env.outputPath +'\\ConsultAgent\\outputEN.xml '+ env.outputPath +'\\ConsultAgent\\outputTH.xml'
			//Publish report
			build job: '(Y06)_MyAIS_ConsultAgent_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_request_and_change_wifi_password(runner){
	if(runner.RequestAndChangeWifiPassword || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Mon', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RequestAndChangeWifiPassword\\ (del /q " + env.outputPath + "\\RequestAndChangeWifiPassword\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3800 -v ar_Tag:' + runner.get_tag() + ' -i request_and_change_wifi_password --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PO_EN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BO_EN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PE_EN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3800 -v ar_Tag:' + runner.get_tag() + ' -i request_and_change_wifi_password --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3PE_TH.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RequestAndChangeWifiPassword -o output.xml -N RequestAndChangeWifiPassword ' + env.outputPath +'\\RequestAndChangeWifiPassword\\outputEN.xml '+ env.outputPath +'\\RequestAndChangeWifiPassword\\outputTH.xml'
		}
		//Publish report
		build job: '(Y07)_MyAIS_RequestAndChangeWifiPassword_Test', propagate: false
	}
	else {echo 'not run'}
}

def run_register_AIS_fibre_and_coverage_checking(runner){
	if(runner.RegisterAISFibreAndCoverageChecking || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RegisterAISFibreAndCoverageChecking\\ (del /q " + env.outputPath + "\\RegisterAISFibreAndCoverageChecking\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3500 -v ar_Tag:' + runner.get_tag() + ' -i register_AIS_fibre_and_coverage_checking --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PO_EN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BO_EN.xml ' + env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PE_EN.xml ' + env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BE_EN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3500 -v ar_Tag:' + runner.get_tag() + ' -i register_AIS_fibre_and_coverage_checking --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3PE_TH.xml ' + env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_3BE_TH.xml ' + env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking -o output.xml -N RegisterAISFibreAndCoverageChecking ' + env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\outputEN.xml '+ env.outputPath +'\\RegisterAISFibreAndCoverageChecking\\outputTH.xml'
		}
		//Publish report
		build job: '(Y08)_MyAIS_RegisterAISFibreAndCoverageChecking_Test', propagate: false
	}
	else {echo 'not run'}
}

def run_domestic_package(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage\\ (del /q " + env.outputPath + "\\DomesticPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1000 -v ar_Tag:' + runner.get_tag() + ' -i domestic_package --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1000 -v ar_Tag:' + runner.get_tag() + ' -i domestic_package --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage\\output_3PO_TH.xml '+ env.outputPath +'\\DomesticPackage\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage -o output.xml -N DomesticPackage ' + env.outputPath +'\\DomesticPackage\\outputEN.xml '+ env.outputPath +'\\DomesticPackage\\outputTH.xml'
			//Publish report
			build job: '(Y09)_MyAIS_DomesticPackage_Test', propagate: false
			}
	}
	else {echo 'not run'}
}

def run_domestic_package_your_current_packege(runner){
	if(runner.DomesticPackage_YourCurrentPackage||runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_YourCurrentPackage\\ (del /q " + env.outputPath + "\\DomesticPackage_YourCurrentPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:2900 -v ar_Tag:' + runner.get_tag() + ' -i domestic_yourcurrentpackage --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3PE_EN.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3BE_EN.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3BO_EN.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_IPE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:2900 -v ar_Tag:' + runner.get_tag() + ' -i domestic_yourcurrentpackage --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3BE_TH.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3BO_TH.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_3PO_TH.xml ' + env.outputPath +'\\DomesticPackage_YourCurrentPackage\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage -o output.xml -N DomesticPackage_YourCurrentPackage ' + env.outputPath +'\\DomesticPackage_YourCurrentPackage\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_YourCurrentPackage\\outputTH.xml'
			//Publish report
  	build job: '(Y30)_MyAIS_DomesticPackage_YourCurrentPackage_Test', propagate: false
  	}
	}
	else {echo 'not run'}
}

def run_domestic_package_change_price_plan(runner){
	if(runner.DomesticPackage_ChangePricePlan||runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_ChangePricePlan\\ (del /q " + env.outputPath + "\\DomesticPackage_ChangePricePlan\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3600 -v ar_Tag:' + runner.get_tag() + ' -i domestic_package --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PE_EN.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BE_EN.xml'+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PO_EN.xml'+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3600 -v ar_Tag:' + runner.get_tag() + ' -i domestic_package --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BE_TH.xml'+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3PO_TH.xml'+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_ChangePricePlan -o output.xml -N DomesticPackage_ChangePricePlan ' + env.outputPath +'\\DomesticPackage_ChangePricePlan\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_ChangePricePlan\\outputTH.xml'
			//Publish report
			build job: '(Y28)_MyAIS_DomesticPackage_ChangePricePlan_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_domestic_package_cancel_ontop_package(runner){
	if(runner.DomesticsPackage_CancelOnTopPackage||runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticsPackage_CancelOnTopPackage\\ (del /q " + env.outputPath + "\\DomesticsPackage_CancelOnTopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3600 -v ar_Tag:' + runner.get_tag() + ' -i domestic_cancelOntop --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat ':::rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_EN_3PE.xml'
			bat ':::rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3PE_EN.xml '+ env.outputPath +'\\DDomesticsPackage_CancelOnTopPackage\\output_3BE_EN.xml'+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3PO_EN.xml'+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3600 -v ar_Tag:' + runner.get_tag() + ' -i domestic_cancelOntop --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat ':::rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_TH_3PE.xml'
			bat ':::rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3BE_TH.xml'+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3PO_TH.xml'+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage -o output.xml -N DomesticsPackage_CancelOnTopPackage ' + env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\outputEN.xml '+ env.outputPath +'\\DomesticsPackage_CancelOnTopPackage\\outputTH.xml'
			//Publish report
			build job: '(Y28)_MyAIS_DomesticPackage_ChangePricePlan_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_myaccount(runner){
	if(runner.MyAccount || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\MyAccount\\ (del /q " + env.outputPath + "\\MyAccount\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1000 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i My_Account --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_FBB_EN.xml -l logFBB_EN.html -r reportFBB_EN.html  -R -N FBB --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_EN_FBB.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\MyAccount\\output_3PO_EN.xml '+ env.outputPath +'\\MyAccount\\output_3BO_EN.xml '+ env.outputPath +'\\MyAccount\\output_FBB_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1000 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i My_Account --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o output_FBB_TH.xml -l logFBB_TH.html -r reportFBB_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\MyAccount\\output*_TH_FBB.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\MyAccount -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\MyAccount\\output_3PO_TH.xml '+ env.outputPath +'\\MyAccount\\output_3BO_TH.xml '+ env.outputPath +'\\MyAccount\\output_FBB_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\MyAccount -o output.xml -N MyAccount ' + env.outputPath +'\\MyAccount\\outputEN.xml '+ env.outputPath +'\\MyAccount\\outputTH.xml'
			//Publish report
			build job: '(Y10)_MyAIS_MyAccount_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_roaming_package(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RoamingPackage\\ (del /q " + env.outputPath + "\\RoamingPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3500 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3500 -v ar_Tag:' + runner.get_tag() + ' -i roaming_package --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage -o output.xml -N RoamingPackage ' + env.outputPath +'\\RoamingPackage\\outputEN.xml '+ env.outputPath +'\\RoamingPackage\\outputTH.xml'
			//Publish report
			build job: '(Y11)_MyAIS_RoamingPackage_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_AIS_estatement(runner){
	if(runner.AISeStatement || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\AISeStatement\\ (del /q " + env.outputPath + "\\AISeStatement\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1000 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i AISeStatement --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\AISeStatement\\output_3PO_EN.xml '+ env.outputPath +'\\AISeStatement\\output_3BO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1000 -v ar_Tag:' + runner.get_tag() + ' -v ar_NETWORK:Wifi -v ar_OS:Android -i AISeStatement --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\AISeStatement\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\AISeStatement -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\AISeStatement\\output_3PO_TH.xml '+ env.outputPath +'\\AISeStatement\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\AISeStatement -o output.xml -N AISeStatement ' + env.outputPath +'\\AISeStatement\\outputEN.xml '+ env.outputPath +'\\AISeStatement\\outputTH.xml'
			//Publish report
			build job: '(Y12)_MyAIS_AISeStatement_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_balance_and_usage_detail(runner){
	if(runner.BalanceAndUsageDetail || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\BalanceAndUsageDetail\\ (del /q " + env.outputPath + "\\BalanceAndUsageDetail\\*)"
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:30 -v ar_Tag:' + runner.get_tag() + ' -i balance_and_usage_detail --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:30 -v ar_Tag:' + runner.get_tag() + ' -i balance_and_usage_detail --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\BalanceAndUsageDetail\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\BalanceAndUsageDetail\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc '+ env.outputPath +'\\BalanceAndUsageDetail\\output_3PO_EN.xml '+ env.outputPath +'\\BalanceAndUsageDetail\\output_3BO_EN.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\BalanceAndUsageDetail\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\BalanceAndUsageDetail\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc '+ env.outputPath +'\\BalanceAndUsageDetail\\output_3PO_TH.xml '+ env.outputPath +'\\BalanceAndUsageDetail\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\BalanceAndUsageDetail -o output.xml -N BalanceAndUsageDetail ' + env.outputPath +'\\BalanceAndUsageDetail\\outputEN.xml '+ env.outputPath +'\\BalanceAndUsageDetail\\outputTH.xml'
			build job: '(Y13)_MyAIS_BalanceAndUsageDetail', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_calling_melody(runner){
	if(runner.CallingMelody || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\CallingMelody\\ (del /q " + env.outputPath + "\\CallingMelody\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i calling_melody --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\CallingMelody -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\CallingMelody\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\CallingMelody -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\CallingMelody\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\CallingMelody -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\CallingMelody\\output_3PE_EN.xml '+ env.outputPath +'\\CallingMelody\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:1500 -v ar_Tag:' + runner.get_tag() + ' -i calling_melody --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\CallingMelody -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\CallingMelody\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\CallingMelody -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\CallingMelody\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\CallingMelody -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\CallingMelody\\output_3PE_TH.xml '+ env.outputPath +'\\CallingMelody\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\CallingMelody -o output.xml -N CallingMelody ' + env.outputPath +'\\CallingMelody\\outputEN.xml '+ env.outputPath +'\\CallingMelody\\outputTH.xml'
			//Publish report
			build job: '(Y14)_MyAIS_CallingMelody_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_validity_transfer(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\ValidityTransfer\\ (del /q " + env.outputPath + "\\ValidityTransfer\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i ValidityTransfer --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\ValidityTransfer\\output_3PE_EN.xml '+ env.outputPath +'\\ValidityTransfer\\output_3BE_EN.xml '+ env.outputPath +'\\ValidityTransfer\\output_IPE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:2000 -v ar_Tag:' + runner.get_tag() + ' -i ValidityTransfer --nostatusrc '+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\ValidityTransfer\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\ValidityTransfer -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\ValidityTransfer\\output_3PE_TH.xml '+ env.outputPath +'\\ValidityTransfer\\output_3BE_TH.xml '+ env.outputPath +'\\ValidityTransfer\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\ValidityTransfer -o output.xml -N ValidityTransfer ' + env.outputPath +'\\ValidityTransfer\\outputEN.xml '+ env.outputPath +'\\ValidityTransfer\\outputTH.xml'
			//Publish report
			build job: '(Y15)_MyAIS_ValidityTransfer_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Balance_Transfer(runner){
	if(runner.activeFalse){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\BalanceTransfer\\ (del /q " + env.outputPath + "\\BalanceTransfer\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i balance_transfer --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\BalanceTransfer\\output_3PE_EN.xml '+ env.outputPath +'\\BalanceTransfer\\output_3BE_EN.xml '+ env.outputPath +'\\BalanceTransfer\\output_IPE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i balance_transfer --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\BalanceTransfer\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\BalanceTransfer -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\BalanceTransfer\\output_3PE_TH.xml '+ env.outputPath +'\\BalanceTransfer\\output_3BE_TH.xml '+ env.outputPath +'\\BalanceTransfer\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\BalanceTransfer -o output.xml -N BalanceTransfer ' + env.outputPath +'\\BalanceTransfer\\outputEN.xml '+ env.outputPath +'\\BalanceTransfer\\outputTH.xml'
			//Publish report
			build job: '(Y16)_MyAIS_BalanceTransfer_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ_YourBalanceAndStatement(runner){
	if(runner.FAQ_YourBalanceAndStatement || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\FAQ_YourBalanceAndStatement\\ (del /q " + env.outputPath + "\\FAQ_YourBalanceAndStatement\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_yourbalanceandstatement --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3BE_EN.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3PO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_yourbalanceandstatement --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3BE_TH.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3BO_TH.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\output_3PO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_YourBalanceAndStatement -o output.xml -N FAQ_YourBalanceAndStatement ' + env.outputPath +'\\FAQ_YourBalanceAndStatement\\outputEN.xml '+ env.outputPath +'\\FAQ_YourBalanceAndStatement\\outputTH.xml'
			//Publish report
			build job: '(Y17)_MyAIS_FAQ_YourBalanceAndStatement_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ_InternationalRoaming(runner){
	if(runner.FAQ_InternationalRoaming || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\FAQ_InternationalRoaming\\ (del /q " + env.outputPath + "\\FAQ_InternationalRoaming\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internationalroaming --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3BE_EN.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3PO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internationalroaming --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternationalRoaming\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3BE_TH.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3BO_TH.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\output_3PO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_InternationalRoaming -o output.xml -N FAQ_InternationalRoaming ' + env.outputPath +'\\FAQ_InternationalRoaming\\outputEN.xml '+ env.outputPath +'\\FAQ_InternationalRoaming\\outputTH.xml'
			//Publish report
			build job: '(Y18)_MyAIS_faq_internationalroaming_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ_InternetAndAISFibre(runner){
	if(runner.FAQ_InternetAndAISFibre || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\FAQ_InternetAndAISFibre\\ (del /q " + env.outputPath + "\\FAQ_InternetAndAISFibre\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:10000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internet_and_ais_fibre --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3BE_EN.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3PO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:10000 -v ar_Tag:' + runner.get_tag() + ' -i faq_internet_and_ais_fibre --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3BE_TH.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3BO_TH.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\output_3PO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_InternetAndAISFibre -o output.xml -N FAQ_InternetAndAISFibre ' + env.outputPath +'\\FAQ_InternetAndAISFibre\\outputEN.xml '+ env.outputPath +'\\FAQ_InternetAndAISFibre\\outputTH.xml'
			//Publish report
			build job: '(Y19)_MyAIS_FAQ_InternetAndAISFibre_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ_MainPackageAndOnTopPackage(runner){
	if(runner.FAQ_MainPackageAndOnTopPackage || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\FAQ_MainPackageAndOnTopPackage\\ (del /q " + env.outputPath + "\\FAQ_MainPackageAndOnTopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_main_package_and_ontop_package --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3BE_EN.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3PO_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_main_package_and_ontop_package --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3BE_TH.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\output_3BO_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage -o output.xml -N FAQ_MainPackageAndOnTopPackage ' + env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\outputEN.xml '+ env.outputPath +'\\FAQ_MainPackageAndOnTopPackage\\outputTH.xml'
			//Publish report
			build job: '(Y20)_MyAIS_FAQ_MainPackageAndOnTopPackage_Test', propagate: false
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
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_special_campaign_and_privileges --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PO_EN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BO_EN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PE_EN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i faq_special_campaign_and_privileges --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PO_TH.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BO_TH.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3PE_TH.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\output_3BE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges -o output.xml -N FAQ_SpecialCampaignAndPrivileges ' + env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\outputEN.xml '+ env.outputPath +'\\FAQ_SpecialCampaignAndPrivileges\\outputTH.xml'
			//Publish report
			build job: '(Y21)_MyAIS_FAQ_SpecialCampaignAndPrivileges_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_FAQ_SMSCancellationOrInquiries(runner){
	if(runner.FAQ_SMSCancellationOrInquiries || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + outputPath + "\\FAQ_SMSCancellationOrInquiries\\ (del /q " + outputPath + "\\FAQ_SMSCancellationOrInquiries\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_TAKE_TIMEOUT:6000 -v ar_Tag:' + runner.get_tag() + ' -i faq_sms_cancallation_or_inquiries --nostatusrc "'+ env.WORKSPACE +'\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt"'
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
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Data -v ar_TAKE_TIMEOUT:6000 -v ar_Tag:' + runner.get_tag() + ' -i faq_sms_cancallation_or_inquiries --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Prod\\Mobile\\MyAISExecutor.txt'
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
			build job: '(Y24)_MyAIS_FAQ_SMSCancellationOrInquiries_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_RoamingPackage_ApplyRoamingPackage(runner){
	if(runner.RoamingPackage_ApplyRoamingPackage || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RoamingPackage_ApplyRoamingPackage\\ (del /q " + env.outputPath + "\\RoamingPackage_ApplyRoamingPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roamingpackage_applyroamingpackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PE_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BE_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BO_EN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roamingpackage_applyroamingpackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PE_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BE_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_3BO_TH.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\output_IPE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage -o output.xml -N RoamingPackage_ApplyRoamingPackage ' + env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\outputEN.xml '+ env.outputPath +'\\RoamingPackage_ApplyRoamingPackage\\outputTH.xml'
			//Publish report
			build job: '(Y22)_MyAIS_RoamingPackage_ApplyRoamingPackage_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_RoamingPackage_CurrentPackageAndRemaining(runner){
	if(runner.RoamingPackage_CurrentPackageAndRemaining || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\RoamingPackage_CurrentPackageAndRemaining\\ (del /q " + env.outputPath + "\\RoamingPackage_CurrentPackageAndRemaining\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i RoamingPackage_CurrentPackageAndRemaining --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PE_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BE_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BO_EN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i RoamingPackage_CurrentPackageAndRemaining --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_3BO.xml'
		  	bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PE_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BE_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_3BO_TH.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\output_IPE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining -o output.xml -N RoamingPackage_CurrentPackageAndRemaining ' + env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\outputEN.xml '+ env.outputPath +'\\RoamingPackage_CurrentPackageAndRemaining\\outputTH.xml'
			//Publish report
			build job: '(Y23)_MyAIS_RoamingPackage_CurrentPackageAndRemaining_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_DomesticPackage_ApplyInternetOntopPackage(runner){
	if(runner.DomesticPackage_ApplyInternetOntopPackage || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\DomesticPackage_ApplyInternetOntopPackage\\ (del /q " + env.outputPath + "\\DomesticPackage_ApplyInternetOntopPackage\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_applyinternetontoppackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PE_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BE_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_IPE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_applyinternetontoppackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BE_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3PO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_3BO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage -o output.xml -N DomesticPackage_ApplyInternetOntopPackage ' + env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_ApplyInternetOntopPackage\\outputTH.xml'
			//Publish report
			build job: '(Y25)_MyAIS_DomesticPackage_ApplyInternetOntopPackage_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Home(runner){
	if(runner.Home || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Home\\ (del /q " + env.outputPath + "\\Home\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\Home\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Home\\output_3PE_EN.xml '+ env.outputPath +'\\Home\\output_3BE_EN.xml '+ env.outputPath +'\\Home\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i home --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\Home\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\Home -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Home\\output_3PE_TH.xml '+ env.outputPath +'\\Home\\output_3BE_TH.xml '+ env.outputPath +'\\Home\\output_IPE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Home -o output.xml -N Home ' + env.outputPath +'\\Home\\outputEN.xml '+ env.outputPath +'\\Home\\outputTH.xml'
			//Publish report
			build job: '(Y26)_MyAIS_Home_Test', propagate: false
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
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roamingpackage_roamingservicerates --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PE_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BE_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PO_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BO_EN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i roamingpackage_roamingservicerates --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PE_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BE_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3PO_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_3BO_TH.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\output_IPE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates -o output.xml -N RoamingPackage_RoamingServiceRates ' + env.outputPath +'\\RoamingPackage_RoamingServiceRates\\outputEN.xml '+ env.outputPath +'\\RoamingPackage_RoamingServiceRates\\outputTH.xml'
			//Publish report
			build job: '(Y27)_MyAIS_RoamingPackage_RoamingServiceRates_Test', propagate: false
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
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_applyotherontoppackage --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PE_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BE_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PO_EN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_IPE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i domesticpackage_applyotherontoppackage --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PE_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BE_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3BO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_3PO_TH.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage -o output.xml -N DomesticPackage_ApplyOtherOnTopPackage ' + env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\outputEN.xml '+ env.outputPath +'\\DomesticPackage_ApplyOtherOnTopPackage\\outputTH.xml'
			//Publish report
			build job: '(Y29)_MyAIS_DomesticPackage_ApplyOtherOnTopPackage_Test', propagate: false
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
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i touchid --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_FBB_EN.xml -l logFBB_EN.html -r reportFBB_EN.html  -R -N FBB --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_FBB.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\TouchID\\output_3PE_EN.xml '+ env.outputPath +'\\TouchID\\output_3BE_EN.xml '+ env.outputPath +'\\TouchID\\output_3BO_EN.xml '+ env.outputPath +'\\TouchID\\output_3PO_EN.xml'+ env.outputPath +'\\TouchID\\output_FBB_EN.xml '+ env.outputPath +'\\TouchID\\output_IPE_EN.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i touchid --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_FBB_TH.xml -l logFBB_TH.html -r reportFBB_TH.html  -R -N FBB --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_FBB.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\TouchID\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TouchID -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\TouchID\\output_3PE_TH.xml '+ env.outputPath +'\\TouchID\\output_3BE_TH.xml '+ env.outputPath +'\\TouchID\\output_3BO_TH.xml '+ env.outputPath +'\\TouchID\\output_3PO_TH.xml'+ env.outputPath +'\\TouchID\\output_FBB_TH.xml '+ env.outputPath +'\\TouchID\\output_IPE_TH.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\TouchID -o output.xml -N TouchID ' + env.outputPath +'\\TouchID\\outputEN.xml '+ env.outputPath +'\\TouchID\\outputTH.xml'
			//Publish report
			build job: '(Y29)_MyAIS_TouchID_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_Payment(runner){
	if(runner.Payment || runner.All ){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\Payment\\ (del /q " + env.outputPath + "\\Payment\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i payment --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\Payment -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\Payment\\output_EN_FBB.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i payment --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\Payment -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\Payment\\output_TH_FBB.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\Payment -o output.xml -N Payment ' + env.outputPath +'\\Payment\\outputEN.xml '+ env.outputPath +'\\Payment\\outputTH.xml'
			//Publish report
			build job: '(Y29)_MyAIS_Payment_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_PaymentToPostpaidNumber(runner){
	if(runner.PaymentToPostpaidNumber|| runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\PaymentToPostpaidNumber\\ (del /q " + env.outputPath + "\\PaymentToPostpaidNumber\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i payment_postpaid --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentToPostpaidNumber -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\PaymentToPostpaidNumber\\output_EN_FBB.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i payment_postpaid --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentToPostpaidNumber -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\PaymentToPostpaidNumber\\output_TH_FBB.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\PaymentToPostpaidNumber -o output.xml -N PaymentToPostpaidNumber ' + env.outputPath +'\\PaymentToPostpaidNumber\\outputEN.xml '+ env.outputPath +'\\PaymentToPostpaidNumber\\outputTH.xml'
			//Publish report
			build job: '(Y29)_MyAIS_PaymentToPostpaidNumber_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_QuickMenu_VerifyButton(runner){
	if(runner.QuickMenu_VerifyButton|| runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\QuickMenu_VerifyButton\\ (del /q " + env.outputPath + "\\QuickMenu_VerifyButton\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifybutton --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_EN_FBB.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifybutton --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o outputEN.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyButton\\output_TH_FBB.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\QuickMenu_VerifyButton -o output.xml -N QuickMenu_VerifyButton ' + env.outputPath +'\\QuickMenu_VerifyButton\\outputEN.xml '+ env.outputPath +'\\QuickMenu_VerifyButton\\outputTH.xml'
			//Publish report
			build job: '(Y33)_MyAIS_QuickMenu_VerifyButton_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_QuickMenu_VerifyMenu(runner){
	if(runner.QuickMenu_VerifyMenu|| runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\QuickMenu_VerifyMenu\\ (del /q " + env.outputPath + "\\QuickMenu_VerifyMenu\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifymenu --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_EN_FBB.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_verifymenu --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o outputEN.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_VerifyMenu\\output_TH_FBB.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\QuickMenu_VerifyMenu -o output.xml -N QuickMenu_VerifyMenu ' + env.outputPath +'\\QuickMenu_VerifyMenu\\outputEN.xml '+ env.outputPath +'\\QuickMenu_VerifyMenu\\outputTH.xml'
			//Publish report
			build job: '(Y34)_MyAIS_QuickMenu_VerifyMenu_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_QuickMenu_Search(runner){
	if(runner.QuickMenu_Search|| runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\QuickMenu_Search\\ (del /q " + env.outputPath + "\\QuickMenu_Search\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_search --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_Search\\output_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_Search\\output_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_Search\\output_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\QuickMenu_Search\\output_EN_3PE.xml'
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i quickmenu_search --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_Search\\output_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_Search\\output_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_Search\\output_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\QuickMenu_Search -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\QuickMenu_Search\\output_TH_3PE.xml'
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\QuickMenu_Search -o output.xml -N QuickMenu_Search ' + env.outputPath +'\\QuickMenu_Search\\outputEN.xml '+ env.outputPath +'\\QuickMenu_Search\\outputTH.xml'
			//Publish report
			build job: '(Y35)_MyAIS_QuickMenu_Search_Test', propagate: false
		}
	}
	else {echo 'not run'}
}
def run_PointsAndPrivileges(runner){
	if(runner.PointsAndPrivileges || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\PointsAndPrivileges\\ (del /q " + env.outputPath + "\\PointsAndPrivileges\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i pointsandprivileges --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\PointsAndPrivileges\\output_3PE_EN.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_3BE_EN.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_3PO_EN.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_3BO_EN.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i pointsandprivileges --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\PointsAndPrivileges\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\PointsAndPrivileges\\output_3PE_TH.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_3BE_TH.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_3PO_TH.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_3BO_TH.xml '+ env.outputPath +'\\PointsAndPrivileges\\output_IPE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\PointsAndPrivileges -o output.xml -N PointsAndPrivileges ' + env.outputPath +'\\PointsAndPrivileges\\outputEN.xml '+ env.outputPath +'\\PointsAndPrivileges\\outputTH.xml'
			//Publish report
			build job: '(Y36)_MyAIS_PointsAndPrivileges_Test', propagate: false
		}
	}
	else {echo 'not run'}
}
def run_TopUpAndPayment(runner){
	if(runner.TopUpAndPayment || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\TopUpAndPayment\\ (del /q " + env.outputPath + "\\TopUpAndPayment\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i topupandpayment --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3PE_EN.xml -l log3PE_EN.html -r report3PE_EN.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_EN_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3BE_EN.xml -l log3BE_EN.html -r report3BE_EN.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_EN_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_IPE_EN.xml -l logIPE_EN.html -r reportIPE_EN.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_EN_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\TopUpAndPayment\\output_3PE_EN.xml '+ env.outputPath +'\\TopUpAndPayment\\output_3BE_EN.xml '+ env.outputPath +'\\TopUpAndPayment\\output_3PO_EN.xml '+ env.outputPath +'\\TopUpAndPayment\\output_3BO_EN.xml '+ env.outputPath +'\\TopUpAndPayment\\output_IPE_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i topupandpayment --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3PE_TH.xml -l log3PE_TH.html -r report3PE_TH.html  -R -N 3PE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_TH_3PE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3BE_TH.xml -l log3BE_TH.html -r report3BE_TH.html  -R -N 3BE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_TH_3BE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output_IPE_TH.xml -l logIPE_TH.html -r reportIPE_TH.html  -R -N IPE --nostatusrc '+ env.outputPath +'\\TopUpAndPayment\\output*_TH_IPE.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\TopUpAndPayment -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\TopUpAndPayment\\output_3PE_TH.xml '+ env.outputPath +'\\TopUpAndPayment\\output_3BE_TH.xml '+ env.outputPath +'\\TopUpAndPayment\\output_3PO_TH.xml '+ env.outputPath +'\\TopUpAndPayment\\output_3BO_TH.xml '+ env.outputPath +'\\TopUpAndPayment\\output_IPE_TH.xml '
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\TopUpAndPayment -o output.xml -N TopUpAndPayment ' + env.outputPath +'\\TopUpAndPayment\\outputEN.xml '+ env.outputPath +'\\TopUpAndPayment\\outputTH.xml'
			//Publish report
			build job: '(Y37)_MyAIS_TopUpAndPayment_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_PaymentAndTopupPostpaid(runner){
	if(runner.PaymentAndTopupPostpaid || runner.All){
		dir(env.WORKSPACE) {
			//Check out
			checkout([$class: 'SubversionSCM', additionalCredentials: [], excludedCommitMessages: '', excludedRegions: '', excludedRevprop: '', excludedUsers: '', filterChangelog: false, ignoreDirPropChanges: false, includedRegions: '', locations: [[credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'AisRobotBuffet', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/AisRobotBuffet'], [credentialsId: 'Tinpan', depthOption: 'infinity', ignoreExternalsOption: true, local: 'MyAIS', remote: 'https://matador.toro.ais/svn/ProjectDocument/OSD/E2E/Automate/RobotFramework/MyAIS']], workspaceUpdater: [$class: 'UpdateUpdater']])
			//RUN
			bat "if exist " + env.outputPath + "\\PaymentAndTopupPostpaid\\ (del /q " + env.outputPath + "\\PaymentAndTopupPostpaid\\*)"
			def START_TIME_EN = getTime()
			echo START_TIME_EN
			bat 'pybot -v ar_LANG:EN -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i paymentandtopuppostpaid --nostatusrc ' + env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_EN = getTime()
			echo END_TIME_EN
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o output_3PO_EN.xml -l log3PO_EN.html -r report3PO_EN.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output*_EN_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o output_3BO_EN.xml -l log3BO_EN.html -r report3BO_EN.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output*_EN_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o outputEN.xml -N EN -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_EN + '" --endtime "' + END_TIME_EN + '" '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output_3PO_EN.xml '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output_3BO_EN.xml '
			def START_TIME_TH = getTime()
			echo START_TIME_TH
			bat 'pybot -v ar_LANG:TH -v ar_BROWSER:gc -v ar_NETWORK:Wifi -v ar_OS:Android -v ar_TAKE_TIMEOUT:3000 -v ar_Tag:' + runner.get_tag() + ' -i paymentandtopuppostpaid --nostatusrc '+ env.WORKSPACE + '\\MyAIS\\MyAIS_Test\\Mobile\\Android\\MyAISExecutor.txt'
			def END_TIME_TH = getTime()
			echo END_TIME_TH
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o output_3PO_TH.xml -l log3PO_TH.html -r report3PO_TH.html  -R -N 3PO --nostatusrc '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output*_TH_3PO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o output_3BO_TH.xml -l log3BO_TH.html -r report3BO_TH.html  -R -N 3BO --nostatusrc '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output*_TH_3BO.xml'
			bat 'rebot --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o outputTH.xml -N TH -l log.html -r report.html --nostatusrc --starttime "' + START_TIME_TH + '" --endtime "' + END_TIME_TH + '" '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output_3PO_TH.xml '+ env.outputPath +'\\PaymentAndTopupPostpaid\\output_3BO_TH.xml '
			
			
			bat 'rebot --nostatusrc --outputdir '+ env.outputPath +'\\PaymentAndTopupPostpaid -o output.xml -N PaymentAndTopupPostpaid ' + env.outputPath +'\\PaymentAndTopupPostpaid\\outputEN.xml '+ env.outputPath +'\\PaymentAndTopupPostpaid\\outputTH.xml'
			//Publish report
			build job: '(Y38)_MyAIS_PaymentAndTopupPostpaid_Test', propagate: false
		}
	}
	else {echo 'not run'}
}

def run_all_report(runner){
	if(runner.AllReport){
		build job: '(Y998)_MyAIS_AllReport', propagate: false
	}
	else {echo 'not run'}
}

def run_export_to_report_excel(runner){
	if(runner.ExportToReportExcel){
		build job: '(Y999)_MyAIS_ExportToReportExcel', propagate: false
	}
	else {echo 'not run'}
}
