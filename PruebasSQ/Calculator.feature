Feature: Calculator
	In order to avoid silly mistakes
	As a math idiot
	I want to be told the sum of two numbers

@mytag
Scenario: Add two numbers
	Given I have entered <first> into the calculator
	And I have also entered <second> into the calculator
	When I press add
	Then the result should be <result> on the screen

	Examples: 
	| description | first | second | result |
	| 17+25       | 17    | 25     | 42     |
	| 10+78       | 10    | 78     | 88     |
	| 2+25        | 2     | 25     | 27     |
	| 5+(-12)     | 5     | -17    | -12    |

@mytag
Scenario: sub two numbers
	Given I have entered <first2> into the calculator
	And I have also entered <second2> into the calculator
	When I press subtract
	Then the result should be <result2> on the screen

	Examples: 
	| description | first2 | second2 | result2 |
	| 17-59       | 17     | 59      | -42     |
	| 10-3        | 10     | 3       | 7       |

@mytag
Scenario: mul two numbers
	Given I have entered <first3> into the calculator
	And I have also entered <second3> into the calculator
	When I press multiply
	Then the result should be <result3> on the screen

	Examples: 
	| description | first3 | second3 | result3 |
	|     3*2     | 3      |    2    |    6    |
	|     4*3     | 4      |    3    |    12   |


@mytag
Scenario: div two numbers
	Given I have entered <first4> into the calculator
	And I have also entered <second4> into the calculator
	When I press divide
	Then the result should be <result4> on the screen

	Examples: 
	| description | first4 | second4 | result4 |
	|    4/2      | 4      |    2    |    2    |
	|    10/2     | 10     |    2    |    5    |
