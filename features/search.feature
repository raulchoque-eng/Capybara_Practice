Feature: Search products
  As a user I should be able to search products,
  so I can see whether exist or non-exist.
Background:
  Given I am in automation practice page

  Scenario: Verify that is displayed a product list after search an exist product
    When I fill "dress" in Search field
    And I click Search button
    Then I should see "7 results have been found." label
    When I click List link
#    Then I should see 7 product's rows

  Scenario: Verify that is not displayed anything product after search an non-exist product
    When I fill "anything" in Search field
    And I click Search button
    Then I should see "0 results have been found." label