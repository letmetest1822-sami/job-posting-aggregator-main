@all
@cyber_all
Feature: Dice for CyberSecurity

  @dice_cyber
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on "<submit>" button
    When the user clicks on "<date filter>" button
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user stops if "<isLast>"

    Examples:
      | platform | job title                                  | location      | submit      | date filter | isLast | sheet |
      | dice     | Junior  Security Operations Center Analyst | United States | Search Jobs | Last 7 Days | false  | cyberSecurity |
      | dice     | Junior Cybersecurity Specialist            | United States | Search Jobs | Last 7 Days | false  | cyberSecurity |
      | dice     | Junior Vulnerability Management Analyst    | United States | Search Jobs | Last 7 Days | false  | cyberSecurity |
      | dice     | Junior Info Sec Analyst                    | United States | Search Jobs | Last 7 Days | false  | cyberSecurity |
      | dice     | Junior Threat Intel Analyst                | United States | Search Jobs | Last 7 Days | true   | cyberSecurity |
