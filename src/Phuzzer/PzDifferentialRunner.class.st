Class {
	#name : #PzDifferentialRunner,
	#superclass : #PzRunner,
	#instVars : [
		'runnerA',
		'runnerB'
	],
	#category : #Phuzzer
}

{ #category : #accessing }
PzDifferentialRunner >> runnerA [

	^ runnerA
]

{ #category : #accessing }
PzDifferentialRunner >> runnerA: anObject [

	runnerA := anObject
]

{ #category : #accessing }
PzDifferentialRunner >> runnerB [

	^ runnerB
]

{ #category : #accessing }
PzDifferentialRunner >> runnerB: anObject [

	runnerB := anObject
]

{ #category : #running }
PzDifferentialRunner >> value: input [

	| resultA resultB |
	resultA := self runnerA value: input.
	resultB := self runnerB value: input.

	resultA first = resultB first ifTrue: [ 
		^ self successWith: { input . resultA . resultB } ].
	^ self failureWith: {input . resultA . resultB}
]
