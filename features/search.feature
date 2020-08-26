Feature: Search products
  As a user I should be able to search products,
  so I can see whether exist or non-exist.

  Scenario: Verify that is displayed a product list after search an exist product
    Given I am in automation practice page
    When I fill "dress" in Search field
    And I click Submit button
    Then I should see "Showing 1 - 7 of 7 items" label
    When I click List link
