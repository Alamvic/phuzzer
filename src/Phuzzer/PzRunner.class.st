Class {
	#name : #PzRunner,
	#superclass : #Object,
	#instVars : [
		'random'
	],
	#category : #'Phuzzer-Runners'
}

{ #category : #status }
PzRunner >> expectedFailureWith: aValue [ 
	
	^ { 'PASS-FAIL' . aValue }
]

{ #category : #status }
PzRunner >> failureWith: aValue [ 
	
	^ { 'FAIL' . aValue }
]

{ #category : #status }
PzRunner >> successWith: aValue [ 
	
	^ { 'PASS' . aValue }
]

{ #category : #running }
PzRunner >> value: input [

	self subclassResponsibility
]
