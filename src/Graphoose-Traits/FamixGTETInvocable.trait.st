Trait {
	#name : #FamixGTETInvocable,
	#instVars : [
		'#incomingInvocations => GTEMany type: #FamixGTETInvocation opposite: #candidates'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETInvocable classSide >> annotation [

	<FMClass: #TInvocable super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETInvocable >> addIncomingInvocation: anObject [
	<generated>
	^ self incomingInvocations add: anObject
]

{ #category : #accessing }
FamixGTETInvocable >> incomingInvocations [
	"Relation named: #incomingInvocations type: #FamixGTETInvocation opposite: #candidates"

	<generated>
	<FMComment: 'Incoming invocations from other behaviours computed by the candidate operator.'>
	<derived>
	^ incomingInvocations
]

{ #category : #accessing }
FamixGTETInvocable >> incomingInvocations: anObject [

	<generated>
	incomingInvocations value: anObject
]
