@all
@dev_all
Feature: Indeed for developer

  @indeed_developer
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
      | platform | job title                   | location | submit    | date filter | isLast | sheet     |
      | indeed   | Full stack Junior Developer | Leeds    | Find jobs | Last 7 days | false  | developer |
      | indeed   | Junior Developer            | Leeds    | Find jobs | Last 7 days | true   | developer |














