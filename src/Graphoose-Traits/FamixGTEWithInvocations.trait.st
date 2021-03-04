Trait {
	#name : #FamixGTEWithInvocations,
	#instVars : [
		'#outgoingInvocations => FMGTEMany type: #FamixGTEInvocation opposite: #sender'
	],
	#category : #'Graphoose-Traits-Invocation'
}

{ #category : #meta }
FamixGTEWithInvocations classSide >> annotation [

	<FMClass: #TWithInvocations super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEWithInvocations >> addOutgoingInvocation: anInvocation [
	outgoingInvocations add: anInvocation
]

{ #category : #accessing }
FamixGTEWithInvocations >> outgoingInvocations [
	"Relation named: #outgoingInvocations type: #FamixGTEInvocation opposite: #sender"

	<generated>
	<FMComment: 'Outgoing invocations sent by this behaviour.'>
	<derived>
	^ outgoingInvocations
]

{ #category : #accessing }
FamixGTEWithInvocations >> outgoingInvocations: anObject [

	<generated>
	outgoingInvocations value: anObject
]

{ #category : #adding }
FamixGTEWithInvocations >> outgoingInvocationsGroup [
	<navigation: 'Outgoing invocations'>
	^ self cacheAt:
		#outgoingInvocationsGroup
		ifAbsentPut:
			[MooseGroup
				withAll: self outgoingInvocations
				withDescription: 'Outgoing invocations from ' , self mooseName]
]
