## Acceptance - Unit Test Cycle

1. Fork this repository, then clone it to your local machine so you can begin work.
2. Create an acceptance test for:
    1. being on the index (`'/'`) page
    2. viewing the text "< your name > is a student at Craft Academy"
3. Run your test and define the steps needed to actually test these actions.
4. Make your first test pass. (Hint: you will need an action in the controller.)
5. Make your second test pass. (Requirement: You must pass your name as a variable into a view. You may not simply print text from the controller.)
6. Create two new tests:
    1. Visit `'/name/:name'`
    2. Create a new User with a name that comes from `:name`. (Hint: `:name` is called "params".)
        More hints:
        - Your new acceptance test should look something like:
        ```
        When I visit the name page for "Amber"
        Then I should create a new user with name "Amber"
        ```
7. You should quickly hit a block with an error like `The attribute 'name' is not accessible in User`. This requires us to move into unit testing. Write a unit (spec) test for creating a user with a name.
8. Make your unit test pass.
9. Try cucumber again - is your acceptance test passing?

