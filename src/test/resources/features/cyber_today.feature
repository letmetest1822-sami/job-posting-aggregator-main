@all
@cyber_all
Feature: Today for CyberSecurity

  @diceToday_cyber
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on "<submit>" button
    When the user clicks on "<date filter>" button
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user prints avarage total jobs of today if "<isLast>"

    Examples:
      | platform | job title                                  | location      | submit      | date filter | isLast | sheet         |
      | dice     | Junior  Security Operations Center Analyst | United States | Search Jobs | Today       | false  | cyberSecurity |
      | dice     | Junior Cybersecurity Specialist            | United States | Search Jobs | Today       | false  | cyberSecurity |
      | dice     | Junior Vulnerability Management Analyst    | United States | Search Jobs | Today       | false  | cyberSecurity |
      | dice     | Junior Info Sec Analyst                    | United States | Search Jobs | Today       | false  | cyberSecurity |
      | dice     | Junior Threat Intel Analyst                | United States | Search Jobs | Today       | true   | cyberSecurity |


  @indeedToday_cyber
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<city or postcode>"
    When the user clicks on search button on indeed
    When the user selects "<date filter>" for indeed
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<city or postcode>" and "<date filter>"
    And the user prints avarage total jobs of today if "<isLast>"

    Examples:
      | platform | job title                                  | city or postcode | submit    | date filter   | isLast | sheet         |
      | indeed   | Junior  Security Operations Center Analyst | Leeds            | Find jobs | Last 24 hours | false  | cyberSecurity |
      | indeed   | Junior Cybersecurity Specialist            | Leeds            | Find jobs | Last 24 hours | false  | cyberSecurity |
      | indeed   | Junior Vulnerability Management Analyst    | Leeds            | Find jobs | Last 24 hours | false  | cyberSecurity |
      | indeed   | Junior Info Sec Analyst                    | Leeds            | Find jobs | Last 24 hours | false  | cyberSecurity |
      | indeed   | Junior Threat Intel Analyst                | Leeds            | Find jobs | Last 24 hours | true   | cyberSecurity |


  @cbToday_cyber
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on "<submit>" button
    When the user selects "<date filter>" for careerBuilder
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user prints avarage total jobs of today if "<isLast>"

    Examples:
      | platform      | job title                                  | location      | submit      | date filter | isLast | sheet         |
      | careerBuilder | Junior  Security Operations Center Analyst | United States | Search Jobs | 24 hours    | false  | cyberSecurity |
      | careerBuilder | Junior Cybersecurity Specialist            | United States | Search Jobs | 24 hours    | false  | cyberSecurity |
      | careerBuilder | Junior Vulnerability Management Analyst    | United States | Search Jobs | 24 hours    | false  | cyberSecurity |
      | careerBuilder | Junior Info Sec Analyst                    | United States | Search Jobs | 24 hours    | false  | cyberSecurity |
      | careerBuilder | Junior Threat Intel Analyst                | United States | Search Jobs | 24 hours    | true   | cyberSecurity |



