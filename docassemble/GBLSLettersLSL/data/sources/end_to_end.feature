@configuration_guard
Feature: GBLSLettersLSL requires LegalServer configuration

  Scenario: Missing LegalServer token produces the documented terminal error
    Given I start the interview at "main.yml"
    When I set the var "legalserver_matter_uuid" to "00000000-0000-4000-8000-000000000001"
    And I set the var "legalserver_site_abbreviation" to "alkiln-test"
    And I set the var "legalserver_site_type" to "Demo"
    And I tap to continue
    Then I should see the phrase "LegalServer Data Error"
    And I should see the phrase "The attempt to get case data resulted in an error."
