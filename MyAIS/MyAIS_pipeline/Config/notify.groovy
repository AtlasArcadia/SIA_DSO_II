class notify implements Serializable {
  def slack_notifyBuild(String buildStatus = 'STARTED', JOB_NAME, BUILD_NUMBER, BUILD_URL) { 
    // build status of null means successful
    buildStatus =  buildStatus ?: 'SUCCESSFUL'

    // Default values
    def color = 'RED'
    def colorCode = '#FF0000'
    def subject = "${buildStatus}: Job '${JOB_NAME} [${BUILD_NUMBER}]'"
    def summary = "${subject} (${BUILD_URL})"

    // Override default values based on build status
    if (buildStatus == 'STARTED') {
      color = 'YELLOW'
      colorCode = '#FFFF00'
    } else if (buildStatus == 'SUCCESSFUL') {
      color = 'GREEN'
      colorCode = '#00FF00'
    } else {
      color = 'RED'
      colorCode = '#FF0000'
    }
    // Send notifications
    // slackSend (color: colorCode, message: summary)
    slackSend channel: '#atlas', color: colorCode, message: summary, teamDomain: 'arcadiaautomationteam', token: '83C5iwEPJYlbd7uokqa9T3eJ'
  }
}