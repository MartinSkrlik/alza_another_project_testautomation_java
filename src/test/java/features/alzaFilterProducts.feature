@test
Feature: Alza Filter Products

  @AlzaFilterProducts
  Scenario Outline:
    Given   Open browser "<BROWSER>"
    When    Go to page "<PAGE>"
    And     Search "<TEXT>"
#    And     Verify "<TITLE>" is visible
    And     Remember Item Count before filtering
    And     Set price range between "<MIN>" to "<MAX>"
    Then    Remember Item Count after price filter
    Then    Click checkbox "<NAME_CHECKBOX1>"
    Then    Remember Item Count after brand filter
    Then    Click checkbox "<NAME_CHECKBOX2>"
    Then    Remember Item Count after all filters
    Then    Switch to subpage "<TAB1>"
    Then    Verify subpage "<TAB1>" is active
    Then    Verify first item price between "<MIN>" and "<MAX>"
    Then    Switch to subpage "<TAB2>"
    Then    Verify subpage "<TAB2>" is active
    Then    Verify first item price between "<MIN>" and "<MAX>"
    Then    Verify product description contains "<NAME_CHECKBOX1>"
    Then    Verify product description contains "<NAME_CHECKBOX2>"
    Then    Uncheck checkbox "<NAME_CHECKBOX2>"
#    Then    Verify item count after uncheck item filter
    Then    Uncheck checkbox "<NAME_CHECKBOX1>"
#    Then    Verify item count after uncheck brand filter
    Then    Clear parameters
#    Then    Verify item count after filter clearing


    Examples:

      | BROWSER | PAGE | TEXT   | TITLE   | MIN | MAX  | NAME_CHECKBOX2 | NAME_CHECKBOX1 | TAB1              | TAB2              |
      | CHROME  | Alza | Tablet | Tablets | 100 | 1000 | GPS            | Apple          | Price High to Low | Price Low to High |