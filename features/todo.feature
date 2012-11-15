Feature: Todo list
  Scenario: As a user I can create a new todo item
    When I submit a new todo item
    Then I can see the new item in the all list

  Scenario: As a user I can delete a todo item
    Given a todo item exists
    When I delete a todo item
    Then I can no longer see that item in the all list