Feature: To Execute the JS function

  Scenario: Execute
    * def getIntValue = function(){return 10;}
    Then print 'value =', getIntValue
    * def getRandomValue = function() {return Math.floor((100) * Math.random());}
    Then print 'getRandomValue =', getRandomValue