Trait {
	#name : #FamixGTEInvocationsReceiver,
	#instVars : [
		'#receivingInvocations => FMGTEMany type: #FamixGTEInvocation opposite: #receiver'
	],
	#category : #'Graphoose-Traits-Invocation'
}

{ #category : #meta }
FamixGTEInvocationsReceiver classSide >> annotation [

	<FMClass: #TInvocationsReceiver super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTEInvocationsReceiver >> addReceivingInvocation: anInvocation [
	receivingInvocations add: anInvocation
]

{ #category : #accessing }
FamixGTEInvocationsReceiver >> receivingInvocations [
	"Relation named: #receivingInvocations type: #FamixGTEInvocation opposite: #receiver"

	<generated>
	<FMComment: 'List of invocations performed on this entity (considered as the receiver)'>
	<derived>
	^ receivingInvocations
]

{ #category : #accessing }
FamixGTEInvocationsReceiver >> receivingInvocations: anObject [

	<generated>
	receivingInvocations value: anObject
]
