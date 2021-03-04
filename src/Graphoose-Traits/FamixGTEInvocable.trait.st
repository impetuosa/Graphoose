Trait {
	#name : #FamixGTEInvocable,
	#instVars : [
		'#incomingInvocations => FMGTEMany type: #FamixGTEInvocation opposite: #candidates'
	],
	#category : #'Graphoose-Traits-Invocation'
}

{ #category : #meta }
FamixGTEInvocable classSide >> annotation [

	<FMClass: #TInvocable super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEInvocable >> addIncomingInvocation: anInvocation [
	incomingInvocations add: anInvocation
]

{ #category : #accessing }
FamixGTEInvocable >> incomingInvocations [
	"Relation named: #incomingInvocations type: #FamixGTEInvocation opposite: #candidates"

	<generated>
	<FMComment: 'Incoming invocations from other behaviours computed by the candidate operator.'>
	<derived>
	^ incomingInvocations
]

{ #category : #accessing }
FamixGTEInvocable >> incomingInvocations: anObject [

	<generated>
	incomingInvocations value: anObject
]
