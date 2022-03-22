@all
@dev_all
Feature: Today for developer

  @diceToday_developer
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
      | platform | job title                   | location      | submit      | date filter | isLast | sheet     |
      | dice     | Full stack Junior Developer | United States | Search Jobs | Today       | false  | developer |
      | dice     | Junior Developer            | United States | Search Jobs | Today       | true   | developer |


  @indeedToday_developer
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<city or postcode>"
    When the user clicks on search button on indeed
    When the user selects "<date filter>" for indeed
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user prints avarage total jobs of today if "<isLast>"

    Examples:
      | platform | job title                   | city or postcode | submit    | date filter   | isLast | sheet     |
      | indeed   | Full stack Junior Developer | Leeds            | Find jobs | Last 24 hours | false  | developer |
      | indeed   | Junior Developer            | Leeds            | Find jobs | Last 24 hours | true   | developer |


  @cbToday_developer
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
      | platform      | job title                   | location      | submit      | date filter | isLast | sheet     |
      | careerBuilder | Full stack Junior Developer | United States | Search Jobs | 24 hours    | false  | developer |
      | careerBuilder | Junior Developer            | United States | Search Jobs | 24 hours    | true   | developer |



