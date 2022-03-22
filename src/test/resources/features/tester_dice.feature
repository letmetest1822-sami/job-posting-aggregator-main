@all
Feature: Dice for Tester

  @dice
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
      | platform | job title                              | location      | submit      | date filter | isLast | sheet |
      | dice     | SDET                                   | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Software Engineer in Test              | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Software Development Engineeer in Test | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Quality Assurance Analyst              | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Quality Assurance Tester               | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Quality Assurance Engineer             | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Software Tester                        | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | QA Automation Engineer                 | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Quality Assurance Automation Engineer  | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Software Test Engineer                 | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Automation Tester                      | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Automation Test Engineer               | United States | Search Jobs | Last 7 Days | false  |tester |
      | dice     | Test Automation Engineer               | United States | Search Jobs | Last 7 Days | true   |tester |