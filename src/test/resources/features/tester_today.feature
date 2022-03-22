@all
Feature: Today for Tester

  @diceToday
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
      | platform | job title                              | location      | submit      | date filter | isLast |sheet|
      | dice     | SDET                                   | United States | Search Jobs | Today       | false  |tester|
      | dice     | Software Engineer in Test              | United States | Search Jobs | Today       | false  |tester|
      | dice     | Software Development Engineeer in Test | United States | Search Jobs | Today       | false  |tester|
      | dice     | Quality Assurance Analyst              | United States | Search Jobs | Today       | false  |tester|
      | dice     | Quality Assurance Tester               | United States | Search Jobs | Today       | false  |tester|
      | dice     | Quality Assurance Engineer             | United States | Search Jobs | Today       | false  |tester|
      | dice     | Software Tester                        | United States | Search Jobs | Today       | false  |tester|
      | dice     | QA Automation Engineer                 | United States | Search Jobs | Today       | false  |tester|
      | dice     | Quality Assurance Automation Engineer  | United States | Search Jobs | Today       | false  |tester|
      | dice     | Software Test Engineer                 | United States | Search Jobs | Today       | false  |tester|
      | dice     | Automation Tester                      | United States | Search Jobs | Today       | false  |tester|
      | dice     | Automation Test Engineer               | United States | Search Jobs | Today       | false  |tester|
      | dice     | Test Automation Engineer               | United States | Search Jobs | Today       | true   |tester|


  @indeedToday
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
      | platform | job title                              | city or postcode | submit    | date filter   | isLast |sheet|
      | indeed   | SDET                                   | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Software Engineer in Test              | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Software Development Engineeer in Test | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Quality Assurance Analyst              | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Quality Assurance Tester               | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Quality Assurance Engineer             | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Software Tester                        | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | QA Automation Engineer                 | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Quality Assurance Automation Engineer  | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Software Test Engineer                 | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Automation Tester                      | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Automation Test Engineer               | Leeds            | Find jobs | Last 24 hours | false  |tester|
      | indeed   | Test Automation Engineer               | Leeds            | Find jobs | Last 24 hours | true   |tester|


  @cbToday
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
      | platform      | job title                              | location | submit      | date filter | isLast | sheet  |
      | careerBuilder | SDET                                   | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Software Engineer in Test              | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Software Development Engineeer in Test | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Quality Assurance Analyst              | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Quality Assurance Tester               | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Quality Assurance Engineer             | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Software Tester                        | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | QA Automation Engineer                 | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Quality Assurance Automation Engineer  | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Software Test Engineer                 | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Automation Tester                      | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Automation Test Engineer               | Leeds    | Search Jobs | 24 hours    | false  | tester |
      | careerBuilder | Test Automation Engineer               | Leeds    | Search Jobs | 24 hours    | true   | tester |



