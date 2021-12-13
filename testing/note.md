# Testing Notes

## Testing goals

1. Functional
2. Usable
3. Reliable
4. Scalable
   1. performs well under <u>expected</u> load.
5. Secure

## Functional Testing

verifies app function as expected without errors

Types of functional testing:
1. Unit testing
2. Integration testing
3. Smoke testing
4. End-to-end testing
5. Regression testing
6. Acceptance testing

### Unit Testing

Test individual units of code (smallest part code)
Test if a given input will have the expected output

- Done at the very start of development process
  - Often with Test Driven Development (TDD)
- Automated
- Tests the deterministic behavior of individual functions.
- Constantly updated for bug fixes, new features, and code refactoring.
- Ruby
  - Respec
  - MiniTest
  - TestUnit
- Javascript
  - Mocha
  - Jest

### Integration Testing

- Done early in developemnt process
- Tests thats <u>units</u> work together as expected
- Incorporate testing of environment, such as network, environment variables, and database.
- if unit tests are sufficient, failures indicate issues in the environment or infrastructure (or how the app is using those resources).
- can use same testing libraries used for unit testing

### End-to-end (system) testing

- Comprehensive integration tests for entire application processes
- tests front and back end of code
- tests that entire users scenarios can be performed as expected
- common testing frameworks -> language agnostic so not specific to 1 language.
  - Selenium
  - Cypress

### Acceptance testing

Testing done by stakeholders

- final step of functional testing
- Verifies 'definition of done' criteria are met
  - All requirements agreed on by developers and stakeholders are met.
  - definition of done = point at which both developers and stakeholder agree development is done.
- Often performed by a <u>Quality Assurance</u> team.
- Combination of automated and manual testing.

## Nonfunctional Testing

Tests aspects other than whether the code works

Types of nonfunctional testing:
- User Interface/User Experience (UI/UX) testing
- Accessibility testing
- Performance testing
- Internationalisation testing
  - testing where translation to other languages
- Security testing
- Disaster recovery testing
  - adaptability if hardware fails.

### Usability testing

- tests user experience of app
- can start as soon as there is a user interface prototype available
- happens at every part of an iterative development process during the design phase.
- done by end user target audience
- Used to identify missing or inadequate user interface.

## Manual vs automated testing

- effort to write and maintain automated tests vs manually perform tests.

## Test Driven Development

- TDD encourages writing test before implementation
- Test will purposely fail, then write the implementation until it passes.

### Red/Green/Refactor

1. Write tests that fail.
   1. call the function in your test with various input
   2. confirm result is expected output
   3. remember to test edge cases
2. Make tests pass
   1. write enough code to pass test
   2. perfect code not necessary at this point.
3. Refactor
   1. DRY
   2. efficient
   3. performant
4. Re-test to make sure still pass

#### Benefits

- make sure we write testable code
- help ensure code changes don't break existing function (prevent regressions)
  - working code that after refactoring breaks code functionality
- think through implementation before writing
- Provides feedback loop
- keeps project on schedule with focus on working code before refactor

