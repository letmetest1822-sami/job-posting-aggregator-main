@all
@cyber_all
Feature: Zip for CyberSecurity

  @zip_cyber
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on search button on zip
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user stops if "<isLast>"

    Examples:
      | platform | job title                                 | location      | submit      | date filter | isLast | sheet         |
      | zip      | Junior Security Operations Center Analyst | United States | Search Jobs | any         | false  | cyberSecurity |
      | zip      | Junior Cybersecurity Specialist           | United States | Search Jobs | any         | false  | cyberSecurity |
      | zip      | Junior Vulnerability Management Analyst   | United States | Search Jobs | any         | false  | cyberSecurity |
      | zip      | Junior Info Sec Analyst                   | United States | Search Jobs | any         | false  | cyberSecurity |
      | zip      | Junior Threat Intel Analyst               | United States | Search Jobs | any         | true   | cyberSecurity |
