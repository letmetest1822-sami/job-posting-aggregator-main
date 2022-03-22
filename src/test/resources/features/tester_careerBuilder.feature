@all
Feature: Career Builder for Tester

  @cb
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
      | platform      | job title                              | location      | submit      | date filter | isLast | sheet  |
      | careerBuilder | SDET                                   | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Software Engineer in Test              | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Software Development Engineeer in Test | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Quality Assurance Analyst              | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Quality Assurance Tester               | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Quality Assurance Engineer             | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Software Tester                        | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | QA Automation Engineer                 | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Quality Assurance Automation Engineer  | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Software Test Engineer                 | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Automation Tester                      | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Automation Test Engineer               | United States | Search Jobs | 7 days      | false  | tester |
      | careerBuilder | Test Automation Engineer               | United States | Search Jobs | 7 days      | true   | tester |
