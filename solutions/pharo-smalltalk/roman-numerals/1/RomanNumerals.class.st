Class {
	#name : #RomanNumeralsCalculator,
    #superclass : #Object,
	#category : #RomanNumerals
}

{ #category : #converting }
RomanNumeralsCalculator >> romanNumber: anInteger [ 
	| mapping result |
	mapping := Dictionary new.
	mapping at: 1 put: 'I'.
	mapping at: 4 put: 'IV'.
	mapping at: 5 put: 'V'.
	mapping at: 9 put: 'IX'.
	mapping at: 10 put: 'X'.
	mapping at: 40 put: 'XL'.
	mapping at: 50 put: 'L'.
	mapping at: 90 put: 'XC'.
	mapping at: 100 put: 'C'.
	mapping at: 400 put: 'CD'.
	mapping at: 500 put: 'D'.
	mapping at: 900 put: 'CM'.
	mapping at: 1000 put: 'M'.
	
	result :=''.
	mapping keys sorted: [ :a :b | a > b ] do: [ :key |
		[anInteger >= key] whileTrue: [ 
			result := result, mapping at: key.
			anInteger := anInteger - key.
		]
	].
	^result
]