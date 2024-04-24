Feature: Variables creation

  Background: variables
    * def var_global = "Karate String "

  Scenario: To create a variable
    # use variables for repeating values ,
    # storing data from external file ,
    # passing the data from one file to other

    Given def var_int = 10
    And def var_string = 'Karate'
    Then print "variables  ==>" , var_int
    And print "variables String  ==>" , var_string
    * def var_int1 = 10
    And print var_int1
    And print "BAckground variables String  ==>", var_global
    # scope of the variables is upto scenarios

  Scenario:Access a variable
    * def var_int1 = 1
    * def string = "newtring"
    Then print var_int1
    And print string
    And print "Scenario 2 BAckground variables String  ==>", var_global