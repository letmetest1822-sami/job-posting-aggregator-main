@all
@dev_all
Feature: Career Builder for developer

  @cb_developer
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on "<submit>" button
    When the user selects "<date filter>" for careerBuilder
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user stops if "<isLast>"

    Examples:
      | platform      | job title                   | location      | submit      | date filter | isLast | sheet     |
      | careerBuilder | Full stack Junior Developer | United States | Search Jobs | 7 days      | false  | developer |
      | careerBuilder | Junior Developer            | United States | Search Jobs | 7 days      | true   | developer |
