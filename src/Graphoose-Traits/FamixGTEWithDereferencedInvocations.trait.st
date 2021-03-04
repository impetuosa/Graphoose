Trait {
	#name : #FamixGTEWithDereferencedInvocations,
	#instVars : [
		'#dereferencedInvocations => FMGTEMany type: #FamixGTEDereferencedInvocation opposite: #referencer'
	],
	#category : #'Graphoose-Traits-DereferencedInvocation'
}

{ #category : #meta }
FamixGTEWithDereferencedInvocations classSide >> annotation [

	<FMClass: #TWithDereferencedInvocations super: #Object>
	<package: #'Famix-Graphite-Traits'>
	<generated>
	^self
]

{ #category : #accessing }
FamixGTEWithDereferencedInvocations >> addDereferencedInvocation: aDeferencedInvocation [
	dereferencedInvocations add: aDeferencedInvocation 
]

{ #category : #accessing }
FamixGTEWithDereferencedInvocations >> dereferencedInvocations [
	"Relation named: #dereferencedInvocations type: #FamixGTEDereferencedInvocation opposite: #referencer"

	<generated>
	<FMComment: 'List of invocations performed on BehaviouralEntities referenced by this entity'>
	<derived>
	^ dereferencedInvocations
]

{ #category : #accessing }
FamixGTEWithDereferencedInvocations >> dereferencedInvocations: anObject [

	<generated>
	dereferencedInvocations value: anObject
]
