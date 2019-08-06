"
A MyCounterTest is a test class for testing the behavior of MyCounter
"
Class {
	#name : #MyCounterTest,
	#superclass : #TestCase,
	#category : #'Counter-Tests'
}

{ #category : #tests }
MyCounterTest >> testAlternateCreationMethod [

	self assert: ((MyCounter withValue: 19) increment; count) = 20
]

{ #category : #tests }
MyCounterTest >> testCounterSetandRead [
	| c |
	c := MyCounter new.
	c count: 7.
	self assert: c count equals: 7. 
]

{ #category : #tests }
MyCounterTest >> testDecrement [
	| c |
	c := MyCounter new.
	c count: 5.
	c decrement; decrement.
	self assert: c count equals: 3. 
]

{ #category : #tests }
MyCounterTest >> testIncrement [
	| c |
	c := MyCounter new.
	c count: 0.
	c increment; increment.
	self assert: c count equals: 2. 
]

{ #category : #tests }
MyCounterTest >> testValueAtCreationIsZero [

	self assert: MyCounter new count = 0. 
]
