@all
@dev_all
Feature: Zip for developer

  @zip @zip_dev
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
#    When the user clicks on "<submit>" button
    When the user clicks on search button on zip
    When the user selects "<date filter>" for zip
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user stops if "<isLast>"

    Examples:
      | platform | job title                   | location      | submit | date filter    | isLast | sheet     |
      | zip      | Full stack Junior Developer | United States | Search | Posted Anytime | false  | developer |
      | zip      | Junior Developer            | United States | Search | Posted Anytime | true   | developer |
