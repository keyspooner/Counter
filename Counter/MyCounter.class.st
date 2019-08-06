Class {
	#name : #MyCounter,
	#superclass : #Object,
	#instVars : [
		'count'
	],
	#category : #Counter
}

{ #category : #'initialize-release' }
MyCounter class >> withValue: anInteger [
	| c |
	c := self new count: anInteger.
	^ c
]

{ #category : #accessing }
MyCounter >> count [
	^ count
]

{ #category : #accessing }
MyCounter >> count: aNumber [
	count := aNumber
]

{ #category : #operations }
MyCounter >> decrement [
	self count: self count - 1
]

{ #category : #operations }
MyCounter >> increment [
	self count: self count + 1
]

{ #category : #initialize }
MyCounter >> initialize [
	super initialize.
	count := 0.
]

{ #category : #printing }
MyCounter >> printOn: aStream [
	super printOn: aStream.
	aStream nextPutAll: ' with value: ', self count printString .
	aStream cr.
]
