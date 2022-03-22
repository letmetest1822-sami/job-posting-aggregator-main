@all
@cyber_all
Feature: Indeed for CyberSecurity

  @indeed_cyber
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on search button on indeed
    When the user selects "<date filter>" for indeed
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user stops if "<isLast>"

    Examples:
      | platform | job title                                  | location      | submit    | date filter | isLast | sheet |
      | indeed   | Junior  Security Operations Center Analyst | United States | Find jobs | Last 7 days | false  | cyberSecurity |
      | indeed   | Junior Cybersecurity Specialist            | United States | Find jobs | Last 7 days | false  | cyberSecurity |
      | indeed   | Junior Vulnerability Management Analyst    | United States | Find jobs | Last 7 days | false  | cyberSecurity |
      | indeed   | Junior Info Sec Analyst                    | United States | Find jobs | Last 7 days | false  | cyberSecurity |
      | indeed   | Junior Threat Intel Analyst                | United States | Find jobs | Last 7 days | true   | cyberSecurity |














