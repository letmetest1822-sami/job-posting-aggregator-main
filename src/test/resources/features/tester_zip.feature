@all
Feature: Zip for Tester

  @zip @zip_for_tester
  Scenario Outline: Get Total Logs for "<platform>"
    Given the user navigates to "<platform>" main page
    When the user enters Job title as "<job title>"
    And the user enters location as "<location>"
    When the user clicks on search button on zip
#    When the user selects "<date filter>" for zip
    Then the user gets total jobs founded for "<platform>"
    And the user selects "<sheet>"
    And the user prints total jobs to excel for "<platform>" , "<job title>" , "<location>" and "<date filter>"
    And the user stops if "<isLast>"

    Examples:
      | platform | job title                              | location      | submit | date filter    | isLast | sheet  |
      | zip      | SDET                                   | United States | Search | Posted Anytime | false  | tester |
      | zip      | Software Engineer in Test              | United States | Search | Posted Anytime | false  | tester |
      | zip      | Software Development Engineeer in Test | United States | Search | Posted Anytime | false  | tester |
      | zip      | Quality Assurance Analyst              | United States | Search | Posted Anytime | false  | tester |
      | zip      | Quality Assurance Tester               | United States | Search | Posted Anytime | false  | tester |
      | zip      | Quality Assurance Engineer             | United States | Search | Posted Anytime | false  | tester |
      | zip      | Software Tester                        | United States | Search | Posted Anytime | false  | tester |
      | zip      | QA Automation Engineer                 | United States | Search | Posted Anytime | false  | tester |
      | zip      | Quality Assurance Automation Engineer  | United States | Search | Posted Anytime | false  | tester |
      | zip      | Software Test Engineer                 | United States | Search | Posted Anytime | false  | tester |
      | zip      | Automation Tester                      | United States | Search | Posted Anytime | false  | tester |
      | zip      | Automation Test Engineer               | United States | Search | Posted Anytime | false  | tester |
      | zip      | Test Automation Engineer               | United States | Search | Posted Anytime | true   | tester |
