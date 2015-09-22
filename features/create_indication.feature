Feature: Create a new indication
	
Scenario: Create a new indication
	When I create a new indicaiton with following values:
	| name  | address       | tel     |
	| thais | rua do futuro | 0000001 |
	Then indication should be created with an id
	And should have the following attributes:
	| name  | address       | tel     |
	| thais | rua do futuro | 0000001 |
