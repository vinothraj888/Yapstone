Feature: Credit Card Payment 

@Test @Payment @Marketplace1
Scenario: Credit Card Payment 
	Given credit card payment details 
	Then make a credit card payment request 
	And verify response is successful 
	
	@Test @Payment @Marketplace1 @Marketplace2
Scenario: Create Payment with Authorization type set to FinalAuth 
	Given Credit Card Payment with Authorization-FinalAuth make a credit card payment request 
	Then make a credit card payment request 
	And verify transaction Status is Pending probation 
	
	@Test @Payment
Scenario: Create Payment with Authorization type set to PriorAuth 
	Given Credit Card Payment with Authorization type as PriorAuth 
	Then make a credit card payment request 
	And verify transaction State is Hold 
	
	@Test @Payment
Scenario: Create Payment with no Authorization type 
	Given Credit Card Payment with no Authorization type 
	Then make a credit card payment request 
	And verify transaction state is Pending probation 
	
	@Test @Payment
Scenario: Create Payment with return token set to true 
	Given Credit Card Payment return token true 
	Then make a credit card payment request for return token 
	And verify new token is returned in response 
	
	@Test @Payment
Scenario: Create Payment with return token set to false 
	Given Credit Card Payment return token false 
	Then make a credit card payment request 
	And verify new token is not returned in response 
	
	@Test @Payment
Scenario: Credit Card Payment with valid customerId 
	Given credit card payment with valid customerId 
	Then make a credit card payment request 
	And verify response is successful with valid customer Id 
	
	@Test @Payment
Scenario: Credit Card Payment with valid instrument tokenId 
	Given credit card payment with valid instrument tokenId 
	Then make a credit card payment request 
	And verify response is successful with valid instrument Id 
	
	
	#Scenario: Create Payment with only amount and no LineItems
	#Given Create Payment with amount and no LineItems
	#Then make a credit card payment request
	#And verify response is successful
	
	#Scenario: Create Payment with only LineItems and no amount
	#Given Create Payment with LineItems and no amount
	#Then make a credit card payment request
	#And verify response is successful      
	
	
	# 
	# Scenario: Create Payment with contract status approved
	#    Given Create Payment with contract status approved
	#   Then make a credit card payment request
	#    And verify response throws error
	#
	# Scenario: Create Payment with contract status partially approved
	#    Given Create Payment with contract status partially approved
	#   Then make a credit card payment request
	#    And verify response throws error
	#
	# Scenario: Create Payment with contract status not approved
	#    Given Create Payment with contract status not approved
	#   Then make a credit card payment request
	#    And verify response throws error
	#
	# Scenario: Create Payment with LineItem not related to asset
	#    Given Create Payment with LineItem not related to asset
	#   Then make a credit card payment request
	#    And verify response throws error
	#
	#  Scenario: Create Payment with offeringId
	#   Given Create Payment with offeringId
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#  Scenario: Create Payment with offeringName
	#   Given Create Payment with offeringName
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	# Scenario: Create Payment without customerId
	#   Given Create Payment without customerId
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#Scenario: Create Payment without cardTokendata
	#   Given Create Payment without cardTokendata
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#Scenario: Create Payment with duplicate ClientUniqueTxnID
	#   Given Create Payment with already used ClientUniqueTxnID
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#Scenario: Create Payment with Invalid Offering name
	#   Given Create Payment with Invalid Offering name
	#   Then make a credit card payment request
	#   And verify response throws error as there is Invalid offering details in the request
	#
	#Scenario: Create Payment with Invalid Offering ID
	#   Given Create Payment with Invalid Offering ID
	#   Then make a credit card payment request
	#   And verify response throws error as there is Invalid offering details in the request
	#
	#Scenario: Create Payment with only amount and no LineItems
	#   Given Create Payment with amount and no LineItems
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#Scenario: Create Payment with only LineItems and no amount
	#   Given Create Payment with LineItems and no amount
	#   Then make a credit card payment request
	#   And verify response is successful
	
	#Scenario: Create Payment by passing valid data in Required fields
	#   Given Create Payment with valid data in Required fields
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#Scenario: Create Payment by passing invalid data in Required fields
	#   Given Create Payment with invalid data in Required fields
	#   Then make a credit card payment request
	#   And verify response is not successful
	#
	#Scenario: Create Payment by passing empty data in Required fields
	#   Given Create Payment with empty data in Required fields
	#   Then make a credit card payment request
	#   And verify response is not successful
	#
	#Scenario: Create Payment without passing the Required fields
	#   Given Create Payment without passing the Required fields
	#   Then make a credit card payment request
	#   And verify response is not successful
	#
	#Scenario: Create Payment by passing valid data in optional fields
	#   Given Create Payment with valid data in optional fields
	#   Then make a credit card payment request
	#   And verify response is successful
	#
	#Scenario: Create Payment by passing invalid data in optional fields
	#   Given Create Payment with invalid data in optional fields
	#   Then make a credit card payment request
	#   And verify response is not successful
	#
	#Scenario: Create Payment by passing empty data in optional fields
	#   Given Create Payment with empty data in optional fields
	#   Then make a credit card payment request
	#   And verify response is not successful
	#
	#Scenario: Create Payment without passing the optional fields
	#   Given Create Payment without passing the optional fields
	#   Then make a credit card payment request
	#   And verify response is not successful
