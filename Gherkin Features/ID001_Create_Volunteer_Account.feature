# Backlog Item ID001 | ECSE 428 Group 3 | Created by Marwan Khan, 260762251

Feature: Create account for volunteer

User Story:
As a volunteer
I want to be able to create an account
With my email and password
So that I can start regestering for events

  Background: 
    Given I am a Student
      And I have a valid email and password
  
  Scenario: (Normal Flow) I succesfully create a volunteer account with valid email, password, name and provide extra profile details.
     When I enter my email, password, first name, last name
      And I enter extra profile details
      And I select account type as volunteer
     Then the volunteer account is created
      And the system indicates that the volunteer account has been successfully created
  
  Scenario: (Alterante Flow) I succesfully create a volunteer account with valid email, password, name and no extra profile details.
     When I enter my email, password, first name, last name
      And I enter no extra profile details
      And I select account type as volunteer
     Then the volunteer account is created
      And the system indicates that the volunteer account has been successfully created
  
  Scenario: (Error Flow) I don't successfully create a volunteer account because I input an invalid email
     When I eneter an invalid email
      And I request to create volunteer account
     Then the account is not created
      And the system warns me that I have entered an invalid email

