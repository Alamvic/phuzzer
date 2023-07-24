Class {
	#name : #PzDateDDMMYYYYGrammar,
	#superclass : #GncBaseGrammar,
	#instVars : [
		'ntDate',
		'ntDay',
		'ntSeparator',
		'ntMonth',
		'ntYear'
	],
	#category : #Phuzzer
}

{ #category : #initialization }
PzDateDDMMYYYYGrammar >> defineGrammar [

	super defineGrammar.

	ntDate --> ntDay , ntSeparator , ntMonth , ntSeparator , ntYear.
	ntSeparator --> '-'.
	ntDay --> ntNumber.
	ntMonth --> ntNumber.
	ntYear --> ntNumber.
	^ ntDate
]
