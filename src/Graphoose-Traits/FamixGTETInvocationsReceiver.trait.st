Trait {
	#name : #FamixGTETInvocationsReceiver,
	#instVars : [
		'#receivingInvocations => GTEMany type: #FamixGTETInvocation opposite: #receiver'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETInvocationsReceiver classSide >> annotation [

	<FMClass: #TInvocationsReceiver super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETInvocationsReceiver >> addReceivingInvocation: anObject [
	<generated>
	^ self receivingInvocations add: anObject
]

{ #category : #accessing }
FamixGTETInvocationsReceiver >> receivingInvocations [
	"Relation named: #receivingInvocations type: #FamixGTETInvocation opposite: #receiver"

	<generated>
	<FMComment: 'List of invocations performed on this entity (considered as the receiver)'>
	<derived>
	^ receivingInvocations
]

{ #category : #accessing }
FamixGTETInvocationsReceiver >> receivingInvocations: anObject [

	<generated>
	receivingInvocations value: anObject
]
