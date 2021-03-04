Trait {
	#name : #FamixGTETWithDereferencedInvocations,
	#instVars : [
		'#dereferencedInvocations => GTEMany type: #FamixGTETDereferencedInvocation opposite: #referencer'
	],
	#category : #'Graphoose-Traits-Traits'
}

{ #category : #meta }
FamixGTETWithDereferencedInvocations classSide >> annotation [

	<FMClass: #TWithDereferencedInvocations super: #Object>
	<package: #'Graphoose-Traits'>
	<generated>
	^self
]

{ #category : #adding }
FamixGTETWithDereferencedInvocations >> addDereferencedInvocation: anObject [
	<generated>
	^ self dereferencedInvocations add: anObject
]

{ #category : #accessing }
FamixGTETWithDereferencedInvocations >> dereferencedInvocations [
	"Relation named: #dereferencedInvocations type: #FamixGTETDereferencedInvocation opposite: #referencer"

	<generated>
	<FMComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	<derived>
	^ dereferencedInvocations
]

{ #category : #accessing }
FamixGTETWithDereferencedInvocations >> dereferencedInvocations: anObject [

	<generated>
	dereferencedInvocations value: anObject
]
