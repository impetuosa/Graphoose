Trait {
	#name : #FamixGTETWithInvocations,
	#instVars : [
		'#outgoingInvocations => GTEMany type: #FamixGTETInvocation opposite: #sender'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithInvocations classSide >> annotation [

	<FMClass: #TWithInvocations super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithInvocations >> addOutgoingInvocation: anObject [
	<generated>
	^ self outgoingInvocations add: anObject
]

{ #category : #accessing }
FamixGTETWithInvocations >> outgoingInvocations [
	"Relation named: #outgoingInvocations type: #FamixGTETInvocation opposite: #sender"

	<generated>
	<FMComment: 'Outgoing invocations sent by this behaviour.'>
	<derived>
	^ outgoingInvocations
]

{ #category : #accessing }
FamixGTETWithInvocations >> outgoingInvocations: anObject [

	<generated>
	outgoingInvocations value: anObject
]
