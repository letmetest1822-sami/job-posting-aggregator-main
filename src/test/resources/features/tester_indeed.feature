@all
Feature: Indeed for Tester

  @indeed
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
      | platform | job title                              | location | submit    | date filter | isLast |sheet|
      | indeed   | SDET                                   | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Software Engineer in Test              | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Software Development Engineeer in Test | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Quality Assurance Analyst              | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Quality Assurance Tester               | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Quality Assurance Engineer             | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Software Tester                        | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | QA Automation Engineer                 | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Quality Assurance Automation Engineer  | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Software Test Engineer                 | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Automation Tester                      | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Automation Test Engineer               | Leeds    | Find jobs | Last 7 days | false  |tester|
      | indeed   | Test Automation Engineer               | Leeds    | Find jobs | Last 7 days | true   |tester|














