Feature: Create a new indication
	

Scenario: Create a new indication
	When I create a new indicaiton with following values:
	| name  | address       | tel     |
	| thais | rua do futuro | 0000000 |
	Then I should see the succefull create message "The indication was created!!!"
	
